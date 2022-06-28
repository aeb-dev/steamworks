// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamDeviceFormFactorAliasDart = int;
typedef ESteamDeviceFormFactorAliasC = Int32;

enum ESteamDeviceFormFactor {
  unknown(0),
  phone(1),
  tablet(2),
  computer(3),
  tv(4),
  ;

  final int value;

  const ESteamDeviceFormFactor(this.value);

  factory ESteamDeviceFormFactor.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamDeviceFormFactor.unknown;
      case 1:
        return ESteamDeviceFormFactor.phone;
      case 2:
        return ESteamDeviceFormFactor.tablet;
      case 3:
        return ESteamDeviceFormFactor.computer;
      case 4:
        return ESteamDeviceFormFactor.tv;
      default:
        throw "Unknown value for 'ESteamDeviceFormFactor'. The value was: '$value'";
    }
  }
}
