class Product {
  String? title;
  String? image;
  String? subtitle;
  String? price;

  Product({this.title, this.image, this.subtitle, this.price});

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    subtitle = json['subtitle'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    data['subtitle'] = subtitle;
    data['price'] = price;
    return data;
  }
}
