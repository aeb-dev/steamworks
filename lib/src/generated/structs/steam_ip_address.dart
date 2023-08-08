// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../dl.dart";
import "../enums/esteam_ip_type.dart";

@Packed(1)
final class SteamIpAddress extends Struct {
  @Array<UnsignedChar>(16)
  external Array<UnsignedChar> ipv6AsArray;

  @Int32()
  external ESteamIpTypeAliasDart type;
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

  Array<UnsignedChar> get ipv6AsArray => ref.ipv6AsArray;

  ESteamIpType get type => ESteamIpType.fromValue(ref.type);
}
