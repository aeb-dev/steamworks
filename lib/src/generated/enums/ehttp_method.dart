// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EHttpMethodAliasDart = int;
typedef EHttpMethodAliasC = Int32;

enum EHttpMethod {
  invalid(0),
  get_(1),
  head(2),
  post(3),
  put(4),
  delete(5),
  options(6),
  patch(7),
  ;

  final int value;

  const EHttpMethod(this.value);

  factory EHttpMethod.fromValue(int value) {
    switch (value) {
      case 0:
        return EHttpMethod.invalid;
      case 1:
        return EHttpMethod.get_;
      case 2:
        return EHttpMethod.head;
      case 3:
        return EHttpMethod.post;
      case 4:
        return EHttpMethod.put;
      case 5:
        return EHttpMethod.delete;
      case 6:
        return EHttpMethod.options;
      case 7:
        return EHttpMethod.patch;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EHttpMethod'. The value was: '$value'",
        );
    }
  }
}
