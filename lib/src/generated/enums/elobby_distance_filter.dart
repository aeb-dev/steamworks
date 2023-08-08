// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ELobbyDistanceFilterAliasDart = int;
typedef ELobbyDistanceFilterAliasC = Int32;

enum ELobbyDistanceFilter {
  close(0),
  default_(1),
  far(2),
  worldwide(3),
  ;

  final int value;

  const ELobbyDistanceFilter(this.value);

  factory ELobbyDistanceFilter.fromValue(int value) {
    switch (value) {
      case 0:
        return ELobbyDistanceFilter.close;
      case 1:
        return ELobbyDistanceFilter.default_;
      case 2:
        return ELobbyDistanceFilter.far;
      case 3:
        return ELobbyDistanceFilter.worldwide;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ELobbyDistanceFilter'. The value was: '$value'",
        );
    }
  }
}
