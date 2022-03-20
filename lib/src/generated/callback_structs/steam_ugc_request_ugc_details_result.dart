import "dart:ffi";

import "../structs/steam_ugc_details.dart";

@Packed(8)
class SteamUgcRequestUgcDetailsResult extends Struct {
  external SteamUgcDetails details;

  @Bool()
  external bool cachedData;
}
