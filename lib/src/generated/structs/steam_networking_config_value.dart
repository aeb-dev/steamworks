// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_networking_config_data_type.dart";
import "../enums/esteam_networking_config_value.dart";

@Packed(4)
final class SteamNetworkingConfigValue extends Struct {
  @Int32()
  external ESteamNetworkingConfigValueAliasDart value;

  @Int32()
  external ESteamNetworkingConfigDataTypeAliasDart dataType;

  @Int64()
  external int int64;
}

final _setInt32 = dl.lookupFunction<
    Void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasC,
      Int32,
    ),
    void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasDart,
      int,
    )>("SteamAPI_SteamNetworkingConfigValue_t_SetInt32");

final _setInt64 = dl.lookupFunction<
    Void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasC,
      Int64,
    ),
    void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasDart,
      int,
    )>("SteamAPI_SteamNetworkingConfigValue_t_SetInt64");

final _setFloat = dl.lookupFunction<
    Void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasC,
      Float,
    ),
    void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasDart,
      double,
    )>("SteamAPI_SteamNetworkingConfigValue_t_SetFloat");

final _setPtr = dl.lookupFunction<
    Void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasC,
      Pointer<Void>,
    ),
    void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasDart,
      Pointer<Void>,
    )>("SteamAPI_SteamNetworkingConfigValue_t_SetPtr");

final _setString = dl.lookupFunction<
    Void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasC,
      Pointer<Utf8>,
    ),
    void Function(
      Pointer<SteamNetworkingConfigValue>,
      ESteamNetworkingConfigValueAliasDart,
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
        val.value,
        data,
      );

  void setInt64(
    ESteamNetworkingConfigValue val,
    int data,
  ) =>
      _setInt64.call(
        this,
        val.value,
        data,
      );

  void setFloat(
    ESteamNetworkingConfigValue val,
    double data,
  ) =>
      _setFloat.call(
        this,
        val.value,
        data,
      );

  void setPtr(
    ESteamNetworkingConfigValue val,
    Pointer<Void> data,
  ) =>
      _setPtr.call(
        this,
        val.value,
        data,
      );

  void setString(
    ESteamNetworkingConfigValue val,
    Pointer<Utf8> data,
  ) =>
      _setString.call(
        this,
        val.value,
        data,
      );

  ESteamNetworkingConfigValue get value =>
      ESteamNetworkingConfigValue.fromValue(ref.value);

  ESteamNetworkingConfigDataType get dataType =>
      ESteamNetworkingConfigDataType.fromValue(ref.dataType);

  int get int64 => ref.int64;
}
