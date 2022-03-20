import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_steam_ip_type.dart";

@Packed(1)
class SteamIpAddress extends Struct {
  @Array<UnsignedChar>(16)
  external Array<UnsignedChar> ipv6;

  @Int32()
  external ESteamIpType type;
}

final _isSet = dl.lookupFunction<
    Bool Function(
  Pointer<SteamIpAddress>,
),
    bool Function(
  Pointer<SteamIpAddress>,
)>("SteamAPI_SteamIPAddress_t_IsSet");

extension SteamIpAddressExtensions on Pointer<SteamIpAddress> {
  bool isSet() => _isSet.call(
        this,
      );
}
