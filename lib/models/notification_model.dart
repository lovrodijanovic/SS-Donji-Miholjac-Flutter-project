class NotificationModel {
  final String? title;
  final String? description;
  final String? link;
  final DateTime? pubDate;

  NotificationModel(
      {required this.title,
      required this.description,
      required this.link,
      required this.pubDate});
}