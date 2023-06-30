import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {

  final List<int> _cartItems = [];

  List<int> get items => _cartItems;

  void addItem(int itemNo) {
    _cartItems.add(itemNo);
    notifyListeners();
  }

  void removeItem(int itemNo) {
    _cartItems.remove(itemNo);
    notifyListeners();
  }
}
