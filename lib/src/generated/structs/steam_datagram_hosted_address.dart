import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";
import "../typedefs.dart";

@Packed(8)
class SteamDatagramHostedAddress extends Struct {
  @Int()
  external int size;

  external Pointer<Utf8> data;
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

  Pointer<Utf8> get data => ref.data;
}
