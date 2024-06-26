import 'package:coffee_shop/model/types_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class ApiService {
  //
  //
  final String url = 'https://www.jsonkeeper.com/b/7K9O';

  Future<List<String>> getCoffeeTypes() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data as Map<String, dynamic>;
        var coffeeList = data.keys.toList();

        return coffeeList;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  //
  Future<List<CoffeeModel>> getCappucino() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['cappucino'] as List;
        var cappucino = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(cappucino.toString());
        return cappucino;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<List<CoffeeModel>> getLatte() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['latte'] as List;
        var latte = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(latte.toString());
        return latte;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<List<CoffeeModel>> getEspresso() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['espresso'] as List;
        var espresso = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(espresso.toString());
        return espresso;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<List<CoffeeModel>> getTurkish() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['turkish'] as List;
        var turkish = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(turkish.toString());
        return turkish;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<List<CoffeeModel>> getAmericano() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['americano'] as List;
        var americano = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(americano.toString());
        return americano;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<List<CoffeeModel>> getMocha() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['mocha'] as List;
        var mocha = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(mocha.toString());
        return mocha;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<List<CoffeeModel>> getMachiato() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        var data = response.data['machiato'] as List;
        var machiato = data.map((e) => CoffeeModel.fromJson(e)).toList();
        debugPrint(machiato.toString());
        return machiato;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }
}
