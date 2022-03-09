import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_ip_type.dart";
import "../steam_api.dart";

@Packed(4)
class SteamIpAddress extends Struct {
  @Array<UnsignedChar>(16)
  external Array<UnsignedChar> gubIpv6;

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
