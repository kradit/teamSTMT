import 'package:flutter_test/flutter_test.dart';
import 'dart:core';

import '../utils/User.dart';

void main() {
  test('diplay error message when the user crdentials are invalid', () {
    User u = User();
    bool ans = u.validateCredentials('One@hcl.com', 'one123');
    expect(ans, false);
  });

  test('Display succesful login mesaage when the crexdentials are valid', () {
    User u = User();
    bool ans = u.validateCredentials('One@hcl.com', 'One123');
    expect(ans, true);
  });
}
