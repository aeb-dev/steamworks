// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../structs/steam_ugc_details.dart";

@Packed(8)
final class SteamUgcRequestUgcDetailsResult extends Struct {
  static int get callbackId => 3402;

  external SteamUgcDetails details;

  @Bool()
  external bool cachedData;
}

extension SteamUgcRequestUgcDetailsResultExtensions
    on Pointer<SteamUgcRequestUgcDetailsResult> {
  SteamUgcDetails get details => ref.details;

  bool get cachedData => ref.cachedData;
}
