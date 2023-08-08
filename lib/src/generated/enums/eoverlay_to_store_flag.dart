// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

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
        throw UnknownEnumValueException(
          "Unknown value for 'EOverlayToStoreFlag'. The value was: '$value'",
        );
    }
  }
}
