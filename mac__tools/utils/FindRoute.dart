import 'dart:core';

class FindRoute {
  var shopDetails = {
    'Zero@hcl.com': 0,
    'one@hcl.com': 1,
    'two@hcl.com': 2,
    'three@hcl.com': 3,
    'four@hcl.com': 4,
    'five@hcl.com': 5,
    'six@hcl.com': 6,
  };
  int findroute(String email) {
    if (shopDetails[email] == 0) {
      print("No Shops Available.Please add a shop");
      return 0;
    } else if (shopDetails[email] == 1) {
      print("The user is a single route user");
      return 1;
    } else {
      print("The user is a multi route user");
      return 2;
    }
  }
}
