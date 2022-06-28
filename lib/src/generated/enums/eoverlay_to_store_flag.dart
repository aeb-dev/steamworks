// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EOverlayToStoreFlagAliasDart = int;
typedef EOverlayToStoreFlagAliasC = Int32;

enum EOverlayToStoreFlag {
  none(0),
  addToCart(1),
  addToCartAndShow(2),
  ;

  final int value;

  const EOverlayToStoreFlag(this.value);

  factory EOverlayToStoreFlag.fromValue(int value) {
    switch (value) {
      case 0:
        return EOverlayToStoreFlag.none;
      case 1:
        return EOverlayToStoreFlag.addToCart;
      case 2:
        return EOverlayToStoreFlag.addToCartAndShow;
      default:
        throw "Unknown value for 'EOverlayToStoreFlag'. The value was: '$value'";
    }
  }
}
