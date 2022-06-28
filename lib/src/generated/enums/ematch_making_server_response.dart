// ignore_for_file: public_member_api_docs
import "dart:ffi";

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
        throw "Unknown value for 'EMatchMakingServerResponse'. The value was: '$value'";
    }
  }
}
