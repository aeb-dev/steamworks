import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";

@Packed(4)
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

final _getPopID = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamDatagramHostedAddress>,
),
    SteamNetworkingPOPId Function(
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
  SteamNetworkingPOPId,
)>("SteamAPI_SteamDatagramHostedAddress_SetDevAddress");

extension SteamDatagramHostedAddressExtensions
    on Pointer<SteamDatagramHostedAddress> {
  void clear() => _clear.call(
        this,
      );

  SteamNetworkingPOPId getPopID() => _getPopID.call(
        this,
      );

  void setDevAddress(
    int nIP,
    int nPort,
    SteamNetworkingPOPId popid,
  ) =>
      _setDevAddress.call(
        this,
        nIP,
        nPort,
        popid,
      );
}
