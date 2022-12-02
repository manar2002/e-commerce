class Shopping {
  late int id;

  late String name;

  late int price;

  late bool isChecked;

  late bool isFavourite;

  Shopping(
      {required this.id,
        required this.name,
        required this.price,
        required this.isChecked,
        required this.isFavourite});

  Shopping.fromMap(Map<String, dynamic> map) {
    if (map['id'] != null) {
      id = map['id'];
    }
    name = map['name'];
    price = map['date'];
    isChecked = map['isChecked'];
    isFavourite = map['isFavourite'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['price'] = price;
    map['isChecked'] = isChecked;
    isFavourite = map['isFavourite'];
    return map;
  }
}
