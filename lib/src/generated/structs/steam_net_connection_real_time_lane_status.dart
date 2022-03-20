import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamNetConnectionRealTimeLaneStatus extends Struct {
  @Int()
  external int pendingUnreliableSize;

  @Int()
  external int pendingReliableSize;

  @Int()
  external int sentUnackedReliableSize;

  @Int()
  external int reservePad1;

  @LongLong()
  external SteamNetworkingMicroseconds queueTime;

  @Array<UnsignedInt>(10)
  external Array<UnsignedInt> reserved;
}
