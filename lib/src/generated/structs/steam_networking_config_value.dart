// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_networking_config_data_type.dart";
import "../enums/esteam_networking_config_value.dart";

@Packed(4)
class SteamNetworkingConfigValue extends Struct {
  @Int32()
  external ESteamNetworkingConfigValue value;

  @Int32()
  external ESteamNetworkingConfigDataType dataType;

  @Int64()
  external int int64;
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
    ESteamNetworkingConfigValue val,
    int data,
  ) =>
      _setInt32.call(
        this,
        val,
        data,
      );

  void setInt64(
    ESteamNetworkingConfigValue val,
    int data,
  ) =>
      _setInt64.call(
        this,
        val,
        data,
      );

  void setFloat(
    ESteamNetworkingConfigValue val,
    double data,
  ) =>
      _setFloat.call(
        this,
        val,
        data,
      );

  void setPtr(
    ESteamNetworkingConfigValue val,
    Pointer<Void> data,
  ) =>
      _setPtr.call(
        this,
        val,
        data,
      );

  void setString(
    ESteamNetworkingConfigValue val,
    Pointer<Utf8> data,
  ) =>
      _setString.call(
        this,
        val,
        data,
      );

  ESteamNetworkingConfigValue get value => ref.value;

  ESteamNetworkingConfigDataType get dataType => ref.dataType;

  int get int64 => ref.int64;
}
