class Course {
  final String id;
  final String title;
  final String authorName;
  final String authorAvatarUrl;
  final String authorJob;
  final String imageUrl;
  final String description;
  final String level;
  final String duration;
  final String price;
  final String? status;

  Course({
    required this.id,
    required this.title,
    required this.authorName,
    required this.authorJob,
    required this.imageUrl,
    required this.description,
    required this.level,
    required this.duration,
    required this.price,
    required this.authorAvatarUrl,
    required this.status,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      title: json['title'],
      authorName: json['author'],
      authorJob: json['author_job'],
      authorAvatarUrl: json['author_avatar_url'],
      imageUrl: json['image_url'],
      description: json['description'],
      level: json['level'],
      duration: json['duration'],
      price: json['price'],
      status: json['status'],
    );
  }
}