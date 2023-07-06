import 'package:flutter_test/flutter_test.dart';
import 'dart:core';

import '../utils/FindRoute.dart';

void main() {
  FindRoute f = FindRoute();
  String email;
  group('Tests to find the route type of the user', () {
    test(
        'user should be asked to add shops when no shops are available and the functionh should return 0',
        () {
      //FindRoute f = FindRoute();
      email = 'Zero@hcl.com';
      int ans = f.findroute(email);
      expect(ans, 0);
    });

    test('single route for one shop', () {
      //FindRoute f = FindRoute();
      email = 'one@hcl.com';
      int ans = f.findroute(email);
      expect(ans, 1);
    });

    test('Multi route for more than one shops', () {
      // FindRoute f = FindRoute();
      email = 'Two@hcl.com';
      int ans = f.findroute(email);
      expect(ans, 2);
    });
  });
}
