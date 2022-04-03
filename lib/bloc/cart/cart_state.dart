part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartLoading extends CartState{
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState{
  final Cart cart;

  CartLoaded({this.cart = const Cart()});
  @override
  List<Object> get props => [];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}

