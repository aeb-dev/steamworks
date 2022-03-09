import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_networking_config_value.dart";
import "../enums/e_steam_networking_config_data_type.dart";
import "../steam_api.dart";

@Packed(4)
class SteamNetworkingConfigValue extends Struct {
  @Int32()
  external ESteamNetworkingConfigValue value;

  @Int32()
  external ESteamNetworkingConfigDataType dataType;

  @Int64()
  external int nt64;
}

final _setInt32 = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingConfigValue>,
  Int32,
  Int32,
),
    void Function(
  Pointer<SteamNetworkingConfigValue>,
  ESteamNetworkingConfigValue,
  int,
)>("SteamAPI_SteamNetworkingConfigValue_t_SetInt32");

final _setInt64 = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingConfigValue>,
  Int32,
  Int64,
),
    void Function(
  Pointer<SteamNetworkingConfigValue>,
  ESteamNetworkingConfigValue,
  int,
)>("SteamAPI_SteamNetworkingConfigValue_t_SetInt64");

final _setFloat = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingConfigValue>,
  Int32,
  Float,
),
    void Function(
  Pointer<SteamNetworkingConfigValue>,
  ESteamNetworkingConfigValue,
  double,
)>("SteamAPI_SteamNetworkingConfigValue_t_SetFloat");

final _setPtr = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingConfigValue>,
  Int32,
  Pointer<Void>,
),
    void Function(
  Pointer<SteamNetworkingConfigValue>,
  ESteamNetworkingConfigValue,
  Pointer<Void>,
)>("SteamAPI_SteamNetworkingConfigValue_t_SetPtr");

final _setString = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingConfigValue>,
  Int32,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamNetworkingConfigValue>,
  ESteamNetworkingConfigValue,
  Pointer<Utf8>,
)>("SteamAPI_SteamNetworkingConfigValue_t_SetString");

extension SteamNetworkingConfigValueExtensions
    on Pointer<SteamNetworkingConfigValue> {
  void setInt32(
    ESteamNetworkingConfigValue eVal,
    int data,
  ) =>
      _setInt32.call(
        this,
        eVal,
        data,
      );

  void setInt64(
    ESteamNetworkingConfigValue eVal,
    int data,
  ) =>
      _setInt64.call(
        this,
        eVal,
        data,
      );

  void setFloat(
    ESteamNetworkingConfigValue eVal,
    double data,
  ) =>
      _setFloat.call(
        this,
        eVal,
        data,
      );

  void setPtr(
    ESteamNetworkingConfigValue eVal,
    Pointer<Void> data,
  ) =>
      _setPtr.call(
        this,
        eVal,
        data,
      );

  void setString(
    ESteamNetworkingConfigValue eVal,
    Pointer<Utf8> data,
  ) =>
      _setString.call(
        this,
        eVal,
        data,
      );
}
