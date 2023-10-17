import 'dart:convert';

class CatalogModel {
  static List<Items> items = [
    Items(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ,];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  // factory Items.fromMap(Map<String, dynamic> map) {
  //   return Items(
  //     id: map['id'],
  //     name: map['name'],
  //     desc: map['desc'],
  //     price: map['price'],
  //     color: map['color'],
  //     image: map['image'],
  //   );
  // }

  // toMap() => {
  //       'id': id,
  //       'name': name,
  //       'desc': desc,
  //       'price': price,
  //       'color': color,
  //       'image': image,
  //     };
  Items copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Items(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;

    return Items(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) => Items.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Items &&
        o.id == id &&
        o.name == name &&
        o.desc == desc &&
        o.price == price &&
        o.color == color &&
        o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
