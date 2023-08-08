// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ETextFilteringContextAliasDart = int;
typedef ETextFilteringContextAliasC = Int32;

enum ETextFilteringContext {
  unknown(0),
  gameContent(1),
  chat(2),
  name(3),
  ;

  final int value;

  const ETextFilteringContext(this.value);

  factory ETextFilteringContext.fromValue(int value) {
    switch (value) {
      case 0:
        return ETextFilteringContext.unknown;
      case 1:
        return ETextFilteringContext.gameContent;
      case 2:
        return ETextFilteringContext.chat;
      case 3:
        return ETextFilteringContext.name;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ETextFilteringContext'. The value was: '$value'",
        );
    }
  }
}
