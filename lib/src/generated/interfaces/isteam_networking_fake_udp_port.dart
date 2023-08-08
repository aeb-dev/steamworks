// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../dl.dart";
import "../enums/eresult.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../structs/steam_networking_message.dart";

final class ISteamNetworkingFakeUdpPort extends Opaque {}

final _destroyFakeUdpPort = dl.lookupFunction<
    Void Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
    ),
    void Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
    )>("SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort");

final _sendMessageToFakeIp = dl.lookupFunction<
    EResultAliasC Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<Void>,
      UnsignedInt,
      Int,
    ),
    EResultAliasDart Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
      Pointer<SteamNetworkingIpAddr>,
      Pointer<Void>,
      int,
      int,
    )>("SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP");

final _receiveMessages = dl.lookupFunction<
    Int Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
      Pointer<Pointer<SteamNetworkingMessage>>,
      Int,
    ),
    int Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
      Pointer<Pointer<SteamNetworkingMessage>>,
      int,
    )>("SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages");

final _scheduleCleanup = dl.lookupFunction<
    Void Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
      Pointer<SteamNetworkingIpAddr>,
    ),
    void Function(
      Pointer<ISteamNetworkingFakeUdpPort>,
      Pointer<SteamNetworkingIpAddr>,
    )>("SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup");

extension ISteamNetworkingFakeUdpPortExtensions
    on Pointer<ISteamNetworkingFakeUdpPort> {
  void destroyFakeUdpPort() => _destroyFakeUdpPort.call(
        this,
      );

  EResult sendMessageToFakeIp(
    Pointer<SteamNetworkingIpAddr> remoteAddress,
    Pointer<Void> pData,
    int cbData,
    int nSendFlags,
  ) =>
      EResult.fromValue(
        _sendMessageToFakeIp.call(
          this,
          remoteAddress,
          pData,
          cbData,
          nSendFlags,
        ),
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
