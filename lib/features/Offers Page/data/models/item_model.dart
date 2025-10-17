class ItemModel {
  final int id;
  final String name;
  final String image;
  final bool isInCart;
  final bool isFavorite;

  ItemModel({
    required this.id,
    required this.name,
    required this.image,
    required this.isInCart,
    required this.isFavorite,
  });

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      isInCart: (map['isInCart'] as int) == 1,
      isFavorite: (map['isFavorite'] as int) == 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'isInCart': isInCart ? 1 : 0,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }
}
