import "package:steamworks/steamworks.dart";
import "package:test/test.dart";

void main() {
  group("A group of tests", () {
    var awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test("First Test", () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
