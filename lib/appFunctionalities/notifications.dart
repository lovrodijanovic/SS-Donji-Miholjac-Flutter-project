import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/widgets/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/parse_rss_to_list.dart';


class Notifications extends StatelessWidget {
  static Uri rssUrl = Uri.parse('http://ss-donji-miholjac.skole.hr/rss/rssfeeder.php?rss_kid=5259&rss_ct=news&rss_uid=1');

  const Notifications({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(pageTitle: 'Obavijesti', 
      child: ParseRssToList(rssUrl, 'Pogledaj obavijest')
    );
  }
}


