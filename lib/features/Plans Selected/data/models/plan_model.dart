class PlanModel {
  final int id;
  final String title;
  final String? subtitle;
  final String image;

  PlanModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  factory PlanModel.fromMap(Map<String, dynamic> map) {
    return PlanModel(
      id: map['id'] as int,
      title: map['title'] as String,
      subtitle: map['subtitle'],
      image: map['image'] as String,
    );
  }
}
