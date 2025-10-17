class OfferModel {
  final int id;
  final String name;
  final int isSelected;
  OfferModel({required this.id, required this.isSelected, required this.name});

  factory OfferModel.fromMap(Map<String, dynamic> map) {
    return OfferModel(
      id: map['id'] as int,
      name: map['name'] as String,
      isSelected: map['isSelected'] as int,
    );
  }
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'isSelected': isSelected};
  }
}
