// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_networking_connection_state.dart";
import "../typedefs.dart";

@Packed(8)
final class SteamNetConnectionRealTimeStatus extends Struct {
  @Int32()
  external ESteamNetworkingConnectionStateAliasDart state;

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
  external SteamNetworkingMicroseconds queueTime;

  @Array<UnsignedInt>(16)
  external Array<UnsignedInt> reserved;
}

extension SteamNetConnectionRealTimeStatusExtensions
    on Pointer<SteamNetConnectionRealTimeStatus> {
  ESteamNetworkingConnectionState get state =>
      ESteamNetworkingConnectionState.fromValue(ref.state);

  int get ping => ref.ping;

  double get connectionQualityLocal => ref.connectionQualityLocal;

  double get connectionQualityRemote => ref.connectionQualityRemote;

  double get outPacketsPerSec => ref.outPacketsPerSec;

  double get outBytesPerSec => ref.outBytesPerSec;

  double get inPacketsPerSec => ref.inPacketsPerSec;

  double get inBytesPerSec => ref.inBytesPerSec;

  int get sendRateBytesPerSecond => ref.sendRateBytesPerSecond;

  int get pendingUnreliableSize => ref.pendingUnreliableSize;

  int get pendingReliableSize => ref.pendingReliableSize;

  int get sentUnackedReliableSize => ref.sentUnackedReliableSize;

  SteamNetworkingMicroseconds get queueTime => ref.queueTime;

  Array<UnsignedInt> get reserved => ref.reserved;
}
