import 'package:cartiez/bloc/progress_enum.dart';
import 'package:cartiez/models/product.dart';
import 'package:cartiez/services/network/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

final productsBloc = ProductsListBloc();

class ProductsListBloc with ChangeNotifier{
  final ApiService _apiService = ApiService();
  Progress result = Progress.FAILED;
  final BehaviorSubject<List<Product>> _behaviorSubject = BehaviorSubject<List<Product>>();

  // Future<Progress> getProducts () async {
  //   await _apiService.fetchProducts().then((response) {
  //     result = Progress.SUCCESS;
  //     this._behaviorSubject.sink.add(response);
  //   });
  // }

  @mustCallSuper
  dispose (){
    _behaviorSubject.close();
  }

  BehaviorSubject<List<Product>> get subject => _behaviorSubject;
}