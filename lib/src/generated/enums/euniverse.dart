// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EUniverseAliasDart = int;
typedef EUniverseAliasC = Int32;

enum EUniverse {
  invalid(0),
  public(1),
  beta(2),
  internal(3),
  dev(4),
  max(5),
  ;

  final int value;

  const EUniverse(this.value);

  factory EUniverse.fromValue(int value) {
    switch (value) {
      case 0:
        return EUniverse.invalid;
      case 1:
        return EUniverse.public;
      case 2:
        return EUniverse.beta;
      case 3:
        return EUniverse.internal;
      case 4:
        return EUniverse.dev;
      case 5:
        return EUniverse.max;
      default:
        throw "Unknown value for 'EUniverse'. The value was: '$value'";
    }
  }
}
