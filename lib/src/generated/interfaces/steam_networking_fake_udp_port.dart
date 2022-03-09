import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../enums/e_result.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../structs/steam_networking_message.dart";

class SteamNetworkingFakeUdpPort extends Opaque {}

final _destroyFakeUDPPort = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingFakeUdpPort>,
),
    void Function(
  Pointer<SteamNetworkingFakeUdpPort>,
)>("SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort");

final _sendMessageToFakeIP = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworkingFakeUdpPort>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Void>,
  UnsignedInt,
  Int,
),
    EResult Function(
  Pointer<SteamNetworkingFakeUdpPort>,
  Pointer<SteamNetworkingIpAddr>,
  Pointer<Void>,
  int,
  int,
)>("SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP");

final _receiveMessages = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworkingFakeUdpPort>,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<SteamNetworkingFakeUdpPort>,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages");

final _scheduleCleanup = dl.lookupFunction<
    Void Function(
  Pointer<SteamNetworkingFakeUdpPort>,
  Pointer<SteamNetworkingIpAddr>,
),
    void Function(
  Pointer<SteamNetworkingFakeUdpPort>,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup");

extension SteamNetworkingFakeUdpPortExtensions
    on Pointer<SteamNetworkingFakeUdpPort> {
  void destroyFakeUDPPort() => _destroyFakeUDPPort.call(
        this,
      );

  EResult sendMessageToFakeIP(
    Pointer<SteamNetworkingIpAddr> remoteAddress,
    Pointer<Void> pData,
    int cbData,
    int nSendFlags,
  ) =>
      _sendMessageToFakeIP.call(
        this,
        remoteAddress,
        pData,
        cbData,
        nSendFlags,
      );

  int receiveMessages(
    Pointer<Pointer<SteamNetworkingMessage>> ppOutMessages,
    int nMaxMessages,
  ) =>
      _receiveMessages.call(
        this,
        ppOutMessages,
        nMaxMessages,
      );

  void scheduleCleanup(
    Pointer<SteamNetworkingIpAddr> remoteAddress,
  ) =>
      _scheduleCleanup.call(
        this,
        remoteAddress,
      );
}
