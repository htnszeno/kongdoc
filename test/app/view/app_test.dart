// // Copyright (c) 2022, Very Good Ventures
// // https://verygood.ventures
// //
// // Use of this source code is governed by an MIT-style
// // license that can be found in the LICENSE file or at
// // https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
// import 'package:hifive/app/app.dart';

// void main() {
//   group('App', () {
//     testWidgets('renders CounterPage', (tester) async {
//       // await tester.pumpWidget(const App());
//       // expect(find.byType(CounterPage), findsOneWidget);
//     });
//   });
// }
void main() {
  test('renders CounterPage', () async {
    var userSelectedPizza = PizzaType.HamMushroom;
    Pizza pizza;
    switch (userSelectedPizza) {
      case PizzaType.HamMushroom:
        pizza = HamAndMushroomPizza();
        break;
      case PizzaType.Deluxe:
        pizza = DeluxePizza();
        break;
      case PizzaType.Seafood:
        pizza = SeafoodPizza();
        break;
    }
    print(pizza.getPrice());
  });
}

enum PizzaType { HamMushroom, Deluxe, Seafood }

abstract class Pizza {
  double getPrice();
}

class HamAndMushroomPizza implements Pizza {
  double price = 10.5;
  @override
  double getPrice() {
    return price;
  }
}

class DeluxePizza implements Pizza {
  double price = 5.5;
  @override
  double getPrice() {
    return price;
  }
}

class SeafoodPizza implements Pizza {
  double price = 7.8;
  @override
  double getPrice() {
    return price;
  }
}
