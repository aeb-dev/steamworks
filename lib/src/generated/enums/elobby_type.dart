// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ELobbyTypeAliasDart = int;
typedef ELobbyTypeAliasC = Int32;

enum ELobbyType {
  private(0),
  friendsOnly(1),
  public(2),
  invisible(3),
  privateUnique(4),
  ;

  final int value;

  const ELobbyType(this.value);

  factory ELobbyType.fromValue(int value) {
    switch (value) {
      case 0:
        return ELobbyType.private;
      case 1:
        return ELobbyType.friendsOnly;
      case 2:
        return ELobbyType.public;
      case 3:
        return ELobbyType.invisible;
      case 4:
        return ELobbyType.privateUnique;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ELobbyType'. The value was: '$value'",
        );
    }
  }
}
