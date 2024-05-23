import 'dart:convert';

CoffeeTypesModel coffeeTypesModelFromJson(String str) =>
    CoffeeTypesModel.fromJson(json.decode(str));

String coffeeTypesModelToJson(CoffeeTypesModel data) =>
    json.encode(data.toJson());

class CoffeeTypesModel {
  final List<CoffeeModel> cappucino;
  final List<CoffeeModel> latte;
  final List<CoffeeModel> espresso;
  final List<CoffeeModel> turkish;
  final List<CoffeeModel> americano;
  final List<CoffeeModel> mocha;
  final List<CoffeeModel> machiato;

  CoffeeTypesModel({
    required this.cappucino,
    required this.latte,
    required this.espresso,
    required this.turkish,
    required this.americano,
    required this.mocha,
    required this.machiato,
  });

  factory CoffeeTypesModel.fromJson(Map<String, dynamic> json) =>
      CoffeeTypesModel(
        cappucino: List<CoffeeModel>.from(
            json["cappucino"].map((x) => CoffeeModel.fromJson(x))),
        latte: List<CoffeeModel>.from(
            json["latte"].map((x) => CoffeeModel.fromJson(x))),
        espresso: List<CoffeeModel>.from(
            json["espresso"].map((x) => CoffeeModel.fromJson(x))),
        turkish: List<CoffeeModel>.from(
            json["turkish"].map((x) => CoffeeModel.fromJson(x))),
        americano: List<CoffeeModel>.from(
            json["americano"].map((x) => CoffeeModel.fromJson(x))),
        mocha: List<CoffeeModel>.from(
            json["mocha"].map((x) => CoffeeModel.fromJson(x))),
        machiato: List<CoffeeModel>.from(
            json["machiato"].map((x) => CoffeeModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cappucino": List<dynamic>.from(cappucino.map((x) => x.toJson())),
        "latte": List<dynamic>.from(latte.map((x) => x.toJson())),
        "espresso": List<dynamic>.from(espresso.map((x) => x.toJson())),
        "turkish": List<dynamic>.from(turkish.map((x) => x.toJson())),
        "americano": List<dynamic>.from(americano.map((x) => x.toJson())),
        "mocha": List<dynamic>.from(mocha.map((x) => x.toJson())),
        "machiato": List<dynamic>.from(machiato.map((x) => x.toJson())),
      };
}

class CoffeeModel {
  final String title;
  final String subTitle;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;
  final int voteCount;
  final bool isLiked;

  CoffeeModel({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.voteCount,
    required this.isLiked,
  });

  factory CoffeeModel.fromJson(Map<String, dynamic> json) => CoffeeModel(
        title: json["title"],
        subTitle: json["subTitle"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        price: json["price"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        voteCount: json["voteCount"],
        isLiked: json["isLiked"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subTitle": subTitle,
        "description": description,
        "imageUrl": imageUrl,
        "price": price,
        "rating": rating,
        "voteCount": voteCount,
        "isLiked": isLiked,
      };
}
