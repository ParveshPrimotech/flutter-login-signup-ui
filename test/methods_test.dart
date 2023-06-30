import 'package:flutter_first/utils/Cart.dart';
import 'package:test/test.dart';

void main(){
  group('Testing cart class', () {
    // group is used to run all tests in a group by the group description

    var cart = Cart();

    //  test first case
    test('A new product should be added', () {
      var product = 33;
      cart.addItem(product);
      expect(cart.items.contains(product), true);

      // The expect() method is a way to validate our output with expectation.
    });

    //test second case
    test('A product should be removed', (){
      var product =45;
      cart.addItem(product);
      expect(cart.items.contains(product), true);
      cart.removeItem(product);
      expect(cart.items.contains(product), false);
    });
  });
}