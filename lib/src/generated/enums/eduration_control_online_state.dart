// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EDurationControlOnlineStateAliasDart = int;
typedef EDurationControlOnlineStateAliasC = Int32;

enum EDurationControlOnlineState {
  invalid(0),
  offline(1),
  online(2),
  onlineHighPri(3),
  ;

  final int value;

  const EDurationControlOnlineState(this.value);

  factory EDurationControlOnlineState.fromValue(int value) {
    switch (value) {
      case 0:
        return EDurationControlOnlineState.invalid;
      case 1:
        return EDurationControlOnlineState.offline;
      case 2:
        return EDurationControlOnlineState.online;
      case 3:
        return EDurationControlOnlineState.onlineHighPri;
      default:
        throw "Unknown value for 'EDurationControlOnlineState'. The value was: '$value'";
    }
  }
}
