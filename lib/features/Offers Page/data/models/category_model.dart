class CategoryModel {
  final int id;
  final String categoryImage;
  final String categoryName;
  final bool? isSelected;
  CategoryModel({
    required this.id,
    this.isSelected = false,
    required this.categoryImage,
    required this.categoryName,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int,
      categoryName: map['name'] as String,
      categoryImage: map['image'] as String,
      isSelected: (map['isSelected'] as int) == 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': categoryImage,
      'name': categoryName,
      'isSelected': (isSelected ?? false) ? 1 : 0,
    };
  }
}
