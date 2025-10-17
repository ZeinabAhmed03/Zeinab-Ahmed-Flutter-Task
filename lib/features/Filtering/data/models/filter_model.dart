class FilterModel {
  final int id;
  final String name;
  final int isSelected;

  factory FilterModel.fromMap(Map<String, dynamic> map) {
    return FilterModel(
      id: map['id'] as int,
      name: map['name'] as String,
      isSelected: map['isSelected'] as int,
    );
  }
  FilterModel({required this.isSelected, required this.id, required this.name});
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'isSelected': isSelected};
  }
}
