// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ESteamInputConfigurationEnableTypeAliasDart = int;
typedef ESteamInputConfigurationEnableTypeAliasC = Int32;

enum ESteamInputConfigurationEnableType {
  none(0),
  playstation(1),
  xbox(2),
  generic(4),
  switch_(8),
  ;

  final int value;

  const ESteamInputConfigurationEnableType(this.value);

  factory ESteamInputConfigurationEnableType.fromValue(int value) {
    switch (value) {
      case 0:
        return ESteamInputConfigurationEnableType.none;
      case 1:
        return ESteamInputConfigurationEnableType.playstation;
      case 2:
        return ESteamInputConfigurationEnableType.xbox;
      case 4:
        return ESteamInputConfigurationEnableType.generic;
      case 8:
        return ESteamInputConfigurationEnableType.switch_;
      default:
        throw "Unknown value for 'ESteamInputConfigurationEnableType'. The value was: '$value'";
    }
  }
}
