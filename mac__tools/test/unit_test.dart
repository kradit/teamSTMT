import 'dart:core';
import "package:test/test.dart";
// Importing  the test package

int add(int x, int y)
// this function to be tested
{
  return x + y;
}
////create a sperate cladd and call this method with a mock

void main() {
  // Defining the test function
  test("test to check add method", () {
    // Arrange
    var expected = 30;

    // Act
    var actual = add(10, 20);

    // Asset
    expect(actual, expected);
  });
}
