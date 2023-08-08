// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EMatchMakingServerResponseAliasDart = int;
typedef EMatchMakingServerResponseAliasC = Int32;

enum EMatchMakingServerResponse {
  serverResponded(0),
  serverFailedToRespond(1),
  noServersListedOnMasterServer(2),
  ;

  final int value;

  const EMatchMakingServerResponse(this.value);

  factory EMatchMakingServerResponse.fromValue(int value) {
    switch (value) {
      case 0:
        return EMatchMakingServerResponse.serverResponded;
      case 1:
        return EMatchMakingServerResponse.serverFailedToRespond;
      case 2:
        return EMatchMakingServerResponse.noServersListedOnMasterServer;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EMatchMakingServerResponse'. The value was: '$value'",
        );
    }
  }
}
