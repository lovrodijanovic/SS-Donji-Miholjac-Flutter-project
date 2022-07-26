import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'my_text_button.dart';
import 'notification_model.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ParseRssToList extends StatelessWidget {
  final Uri _rssUrl;
  final String _title;
  ParseRssToList(this._rssUrl, this._title, {Key? key}) : super(key: key);

  final DateFormat _formatter = DateFormat('d.MM.yyyy.');
  
  Future fetchNews() async {
    final response = await http.get(_rssUrl);
    if (response.statusCode == 200) {
      var decoded = RssFeed.parse(response.body);
      return decoded.items
          ?.map((item) => NotificationModel(
              title: item.title,
              description: item.description,
              link: item.link,
              pubDate: item.pubDate))
          .toList();
    } else {
      throw const HttpException('Failed to fetch the data');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder(
            future: fetchNews(),
            builder: (context, snap) {
              if (snap.hasData) {
                final List news = snap.data as List;
                return ListView.separated(
                  padding: const EdgeInsets.only(top: 10),
                  itemBuilder: (context, i) {
                    final NotificationModel item = news[i];
                    return ListTile(
                        title: Text('${item.title}'),
                        subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child:
                                      Text(_formatter.format(item.pubDate!))),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: MyTextButton(_title, item.link!))
                            ]));
                  },
                  separatorBuilder: (context, i) => const Divider(),
                  itemCount: news.length,
                );
              } else if (snap.hasError) {
                return Center(
                  child: Text(snap.error.toString()),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
            },
          ),
        ),
      ],
    );
  }

}
