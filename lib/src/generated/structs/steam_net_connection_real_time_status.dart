import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_networking_connection_state.dart";
import "../typedefs.dart";

@Packed(4)
class SteamNetConnectionRealTimeStatus extends Struct {
  @Int32()
  external ESteamNetworkingConnectionState state;

  @Int()
  external int ping;

  @Float()
  external double connectionQualityLocal;

  @Float()
  external double connectionQualityRemote;

  @Float()
  external double outPacketsPerSec;

  @Float()
  external double outBytesPerSec;

  @Float()
  external double inPacketsPerSec;

  @Float()
  external double inBytesPerSec;

  @Int()
  external int sendRateBytesPerSecond;

  @Int()
  external int pendingUnreliableSize;

  @Int()
  external int pendingReliableSize;

  @Int()
  external int sentUnackedReliableSize;

  @LongLong()
  external SteamNetworkingMicroseconds ecQueueTime;

  @Array<UnsignedInt>(16)
  external Array<UnsignedInt> reserved;
}
