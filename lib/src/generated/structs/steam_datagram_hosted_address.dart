// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../dl.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamDatagramHostedAddress extends Struct {
  @Int()
  external int size;

  @Array<Char>(128)
  external Array<Char> data;
}

final _clear = dl.lookupFunction<
    Void Function(
      Pointer<SteamDatagramHostedAddress>,
    ),
    void Function(
      Pointer<SteamDatagramHostedAddress>,
    )>("SteamAPI_SteamDatagramHostedAddress_Clear");

final _getPopId = dl.lookupFunction<
    UnsignedInt Function(
      Pointer<SteamDatagramHostedAddress>,
    ),
    SteamNetworkingPopId Function(
      Pointer<SteamDatagramHostedAddress>,
    )>("SteamAPI_SteamDatagramHostedAddress_GetPopID");

final _setDevAddress = dl.lookupFunction<
    Void Function(
      Pointer<SteamDatagramHostedAddress>,
      UnsignedInt,
      UnsignedShort,
      UnsignedInt,
    ),
    void Function(
      Pointer<SteamDatagramHostedAddress>,
      int,
      int,
      SteamNetworkingPopId,
    )>("SteamAPI_SteamDatagramHostedAddress_SetDevAddress");

extension SteamDatagramHostedAddressExtensions
    on Pointer<SteamDatagramHostedAddress> {
  void clear() => _clear.call(
        this,
      );

  SteamNetworkingPopId getPopId() => _getPopId.call(
        this,
      );

  void setDevAddress(
    int nIp,
    int nPort,
    SteamNetworkingPopId popid,
  ) =>
      _setDevAddress.call(
        this,
        nIp,
        nPort,
        popid,
      );

  int get size => ref.size;

  Array<Char> get data => ref.data;
}
