// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../structs/steam_ugc_details.dart";

@Packed(8)
class SteamUgcRequestUgcDetailsResult extends Struct {
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
