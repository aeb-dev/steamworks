// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../callback_structs/steam_net_authentication_status.dart";
import "../callback_structs/steam_networking_fake_ip_result.dart";
import "../dl.dart";
import "../enums/eresult.dart";
import "../enums/esteam_networking_availability.dart";
import "../interfaces/isteam_networking_connection_signaling.dart";
import "../interfaces/isteam_networking_fake_udp_port.dart";
import "../interfaces/isteam_networking_signaling_recv_context.dart";
import "../structs/steam_datagram_game_coordinator_server_login.dart";
import "../structs/steam_datagram_hosted_address.dart";
import "../structs/steam_datagram_relay_auth_ticket.dart";
import "../structs/steam_net_connection_info.dart";
import "../structs/steam_net_connection_real_time_lane_status.dart";
import "../structs/steam_net_connection_real_time_status.dart";
import "../structs/steam_networking_config_value.dart";
import "../structs/steam_networking_identity.dart";
import "../structs/steam_networking_ip_addr.dart";
import "../structs/steam_networking_message.dart";
import "../typedefs.dart";

final _steamNetworkingSocketsSteamApi = dl.lookupFunction<
    Pointer<ISteamNetworkingSockets> Function(),
    Pointer<ISteamNetworkingSockets>
        Function()>("SteamAPI_SteamNetworkingSockets_SteamAPI_v012");

final _steamGameServerNetworkingSocketsSteamApi = dl.lookupFunction<
    Pointer<ISteamNetworkingSockets> Function(),
    Pointer<ISteamNetworkingSockets>
        Function()>("SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012");

class ISteamNetworkingSockets extends Opaque {
  static Pointer<ISteamNetworkingSockets> get userInstance =>
      _steamNetworkingSocketsSteamApi();

  static Pointer<ISteamNetworkingSockets> get serverInstance =>
      _steamGameServerNetworkingSocketsSteamApi();
}

final _createListenSocketIp = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP");

final _connectByIpAddress = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIpAddr>,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress");

final _createListenSocketP2p = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<ISteamNetworkingSockets>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P");

final _connectP2p = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectP2P");

final _acceptConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
)>("SteamAPI_ISteamNetworkingSockets_AcceptConnection");

final _closeConnection = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Int,
  Pointer<Utf8>,
  Bool,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  int,
  Pointer<Utf8>,
  bool,
)>("SteamAPI_ISteamNetworkingSockets_CloseConnection");

final _closeListenSocket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamListenSocket,
)>("SteamAPI_ISteamNetworkingSockets_CloseListenSocket");

final _setConnectionUserData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  LongLong,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  int,
)>("SteamAPI_ISteamNetworkingSockets_SetConnectionUserData");

final _getConnectionUserData = dl.lookupFunction<
    LongLong Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionUserData");

final _setConnectionName = dl.lookupFunction<
    Void Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Utf8>,
)>("SteamAPI_ISteamNetworkingSockets_SetConnectionName");

final _getConnectionName = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionName");

final _sendMessageToConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Int,
  Pointer<LongLong>,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Void>,
  int,
  int,
  Pointer<LongLong>,
)>("SteamAPI_ISteamNetworkingSockets_SendMessageToConnection");

final _sendMessages = dl.lookupFunction<
    Void Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Pointer<LongLong>,
),
    void Function(
  Pointer<ISteamNetworkingSockets>,
  int,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Pointer<LongLong>,
)>("SteamAPI_ISteamNetworkingSockets_SendMessages");

final _flushMessagesOnConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
)>("SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection");

final _receiveMessagesOnConnection = dl.lookupFunction<
    Int Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection");

final _getConnectionInfo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetConnectionInfo>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<SteamNetConnectionInfo>,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionInfo");

final _getConnectionRealTimeStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetConnectionRealTimeStatus>,
  Int,
  Pointer<SteamNetConnectionRealTimeLaneStatus>,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<SteamNetConnectionRealTimeStatus>,
  int,
  Pointer<SteamNetConnectionRealTimeLaneStatus>,
)>("SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus");

final _getDetailedConnectionStatus = dl.lookupFunction<
    Int Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Utf8>,
  Int,
),
    int Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus");

final _getListenSocketAddress = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetworkingIpAddr>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamListenSocket,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress");

final _createSocketPair = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  Bool,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
  bool,
  Pointer<SteamNetworkingIdentity>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingSockets_CreateSocketPair");

final _configureConnectionLanes = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Int,
  Pointer<Int>,
  Pointer<UnsignedShort>,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  int,
  Pointer<Int>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes");

final _getIdentity = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingSockets_GetIdentity");

final _initAuthentication = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
),
    ESteamNetworkingAvailability Function(
  Pointer<ISteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_InitAuthentication");

final _getAuthenticationStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetAuthenticationStatus>,
),
    ESteamNetworkingAvailability Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetAuthenticationStatus>,
)>("SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus");

final _createPollGroup = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
),
    HSteamNetPollGroup Function(
  Pointer<ISteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_CreatePollGroup");

final _destroyPollGroup = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetPollGroup,
)>("SteamAPI_ISteamNetworkingSockets_DestroyPollGroup");

final _setConnectionPollGroup = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  HSteamNetPollGroup,
)>("SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup");

final _receiveMessagesOnPollGroup = dl.lookupFunction<
    Int Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<Pointer<SteamNetworkingMessage>>,
  Int,
),
    int Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetPollGroup,
  Pointer<Pointer<SteamNetworkingMessage>>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup");

final _receivedRelayAuthTicket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Void>,
  Int,
  Pointer<SteamDatagramRelayAuthTicket>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Void>,
  int,
  Pointer<SteamDatagramRelayAuthTicket>,
)>("SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket");

final _findRelayAuthTicketForServer = dl.lookupFunction<
    Int Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Pointer<SteamDatagramRelayAuthTicket>,
),
    int Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  int,
  Pointer<SteamDatagramRelayAuthTicket>,
)>("SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer");

final _connectToHostedDedicatedServer = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer");

final _getHostedDedicatedServerPort = dl.lookupFunction<
    UnsignedShort Function(
  Pointer<ISteamNetworkingSockets>,
),
    int Function(
  Pointer<ISteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort");

final _getHostedDedicatedServerPopId = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
),
    SteamNetworkingPopId Function(
  Pointer<ISteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID");

final _getHostedDedicatedServerAddress = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamDatagramHostedAddress>,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamDatagramHostedAddress>,
)>("SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress");

final _createHostedDedicatedServerListenSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<ISteamNetworkingSockets>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket");

final _getGameCoordinatorServerLogin = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamDatagramGameCoordinatorServerLogin>,
  Pointer<Int>,
  Pointer<Void>,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamDatagramGameCoordinatorServerLogin>,
  Pointer<Int>,
  Pointer<Void>,
)>("SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin");

final _connectP2pCustomSignaling = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<ISteamNetworkingConnectionSignaling>,
  Pointer<SteamNetworkingIdentity>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamNetConnection Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<ISteamNetworkingConnectionSignaling>,
  Pointer<SteamNetworkingIdentity>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling");

final _receivedP2pCustomSignal = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Void>,
  Int,
  Pointer<ISteamNetworkingSignalingRecvContext>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Void>,
  int,
  Pointer<ISteamNetworkingSignalingRecvContext>,
)>("SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal");

final _getCertificateRequest = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Int>,
  Pointer<Void>,
  Pointer<Pointer<Utf8>>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Int>,
  Pointer<Void>,
  Pointer<Pointer<Utf8>>,
)>("SteamAPI_ISteamNetworkingSockets_GetCertificateRequest");

final _setCertificate = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Void>,
  Int,
  Pointer<Pointer<Utf8>>,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<Void>,
  int,
  Pointer<Pointer<Utf8>>,
)>("SteamAPI_ISteamNetworkingSockets_SetCertificate");

final _resetIdentity = dl.lookupFunction<
    Void Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
),
    void Function(
  Pointer<ISteamNetworkingSockets>,
  Pointer<SteamNetworkingIdentity>,
)>("SteamAPI_ISteamNetworkingSockets_ResetIdentity");

final _runCallbacks = dl.lookupFunction<
    Void Function(
  Pointer<ISteamNetworkingSockets>,
),
    void Function(
  Pointer<ISteamNetworkingSockets>,
)>("SteamAPI_ISteamNetworkingSockets_RunCallbacks");

final _beginAsyncRequestFakeIp = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
),
    bool Function(
  Pointer<ISteamNetworkingSockets>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP");

final _getFakeIp = dl.lookupFunction<
    Void Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
  Pointer<SteamNetworkingFakeIpResult>,
),
    void Function(
  Pointer<ISteamNetworkingSockets>,
  int,
  Pointer<SteamNetworkingFakeIpResult>,
)>("SteamAPI_ISteamNetworkingSockets_GetFakeIP");

final _createListenSocketP2pFakeIp = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
  Int,
  Pointer<SteamNetworkingConfigValue>,
),
    HSteamListenSocket Function(
  Pointer<ISteamNetworkingSockets>,
  int,
  int,
  Pointer<SteamNetworkingConfigValue>,
)>("SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP");

final _getRemoteFakeIpForConnection = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworkingSockets>,
  UnsignedInt,
  Pointer<SteamNetworkingIpAddr>,
),
    EResult Function(
  Pointer<ISteamNetworkingSockets>,
  HSteamNetConnection,
  Pointer<SteamNetworkingIpAddr>,
)>("SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection");

final _createFakeUdpPort = dl.lookupFunction<
    Pointer<ISteamNetworkingFakeUdpPort> Function(
  Pointer<ISteamNetworkingSockets>,
  Int,
),
    Pointer<ISteamNetworkingFakeUdpPort> Function(
  Pointer<ISteamNetworkingSockets>,
  int,
)>("SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort");

extension ISteamNetworkingSocketsExtensions
    on Pointer<ISteamNetworkingSockets> {
  HSteamListenSocket createListenSocketIp(
    Pointer<SteamNetworkingIpAddr> localAddress,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createListenSocketIp.call(
        this,
        localAddress,
        nOptions,
        pOptions,
      );

  HSteamNetConnection connectByIpAddress(
    Pointer<SteamNetworkingIpAddr> address,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectByIpAddress.call(
        this,
        address,
        nOptions,
        pOptions,
      );

  HSteamListenSocket createListenSocketP2p(
    int nLocalVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createListenSocketP2p.call(
        this,
        nLocalVirtualPort,
        nOptions,
        pOptions,
      );

  HSteamNetConnection connectP2p(
    Pointer<SteamNetworkingIdentity> identityRemote,
    int nRemoteVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectP2p.call(
        this,
        identityRemote,
        nRemoteVirtualPort,
        nOptions,
        pOptions,
      );

  EResult acceptConnection(
    HSteamNetConnection hConn,
  ) =>
      _acceptConnection.call(
        this,
        hConn,
      );

  bool closeConnection(
    HSteamNetConnection hPeer,
    int nReason,
    Pointer<Utf8> pszDebug,
    bool enableLinger,
  ) =>
      _closeConnection.call(
        this,
        hPeer,
        nReason,
        pszDebug,
        enableLinger,
      );

  bool closeListenSocket(
    HSteamListenSocket hSocket,
  ) =>
      _closeListenSocket.call(
        this,
        hSocket,
      );

  bool setConnectionUserData(
    HSteamNetConnection hPeer,
    int nUserData,
  ) =>
      _setConnectionUserData.call(
        this,
        hPeer,
        nUserData,
      );

  int getConnectionUserData(
    HSteamNetConnection hPeer,
  ) =>
      _getConnectionUserData.call(
        this,
        hPeer,
      );

  void setConnectionName(
    HSteamNetConnection hPeer,
    Pointer<Utf8> pszName,
  ) =>
      _setConnectionName.call(
        this,
        hPeer,
        pszName,
      );

  bool getConnectionName(
    HSteamNetConnection hPeer,
    Pointer<Utf8> pszName,
    int nMaxLen,
  ) =>
      _getConnectionName.call(
        this,
        hPeer,
        pszName,
        nMaxLen,
      );

  EResult sendMessageToConnection(
    HSteamNetConnection hConn,
    Pointer<Void> pData,
    int cbData,
    int nSendFlags,
    Pointer<LongLong> pOutMessageNumber,
  ) =>
      _sendMessageToConnection.call(
        this,
        hConn,
        pData,
        cbData,
        nSendFlags,
        pOutMessageNumber,
      );

  void sendMessages(
    int nMessages,
    Pointer<Pointer<SteamNetworkingMessage>> pMessages,
    Pointer<LongLong> pOutMessageNumberOrResult,
  ) =>
      _sendMessages.call(
        this,
        nMessages,
        pMessages,
        pOutMessageNumberOrResult,
      );

  EResult flushMessagesOnConnection(
    HSteamNetConnection hConn,
  ) =>
      _flushMessagesOnConnection.call(
        this,
        hConn,
      );

  int receiveMessagesOnConnection(
    HSteamNetConnection hConn,
    Pointer<Pointer<SteamNetworkingMessage>> ppOutMessages,
    int nMaxMessages,
  ) =>
      _receiveMessagesOnConnection.call(
        this,
        hConn,
        ppOutMessages,
        nMaxMessages,
      );

  bool getConnectionInfo(
    HSteamNetConnection hConn,
    Pointer<SteamNetConnectionInfo> pInfo,
  ) =>
      _getConnectionInfo.call(
        this,
        hConn,
        pInfo,
      );

  EResult getConnectionRealTimeStatus(
    HSteamNetConnection hConn,
    Pointer<SteamNetConnectionRealTimeStatus> pStatus,
    int nLanes,
    Pointer<SteamNetConnectionRealTimeLaneStatus> pLanes,
  ) =>
      _getConnectionRealTimeStatus.call(
        this,
        hConn,
        pStatus,
        nLanes,
        pLanes,
      );

  int getDetailedConnectionStatus(
    HSteamNetConnection hConn,
    Pointer<Utf8> pszBuf,
    int cbBuf,
  ) =>
      _getDetailedConnectionStatus.call(
        this,
        hConn,
        pszBuf,
        cbBuf,
      );

  bool getListenSocketAddress(
    HSteamListenSocket hSocket,
    Pointer<SteamNetworkingIpAddr> address,
  ) =>
      _getListenSocketAddress.call(
        this,
        hSocket,
        address,
      );

  bool createSocketPair(
    Pointer<UnsignedInt> pOutConnection1,
    Pointer<UnsignedInt> pOutConnection2,
    bool useNetworkLoopback,
    Pointer<SteamNetworkingIdentity> pIdentity1,
    Pointer<SteamNetworkingIdentity> pIdentity2,
  ) =>
      _createSocketPair.call(
        this,
        pOutConnection1,
        pOutConnection2,
        useNetworkLoopback,
        pIdentity1,
        pIdentity2,
      );

  EResult configureConnectionLanes(
    HSteamNetConnection hConn,
    int nNumLanes,
    Pointer<Int> pLanePriorities,
    Pointer<UnsignedShort> pLaneWeights,
  ) =>
      _configureConnectionLanes.call(
        this,
        hConn,
        nNumLanes,
        pLanePriorities,
        pLaneWeights,
      );

  bool getIdentity(
    Pointer<SteamNetworkingIdentity> pIdentity,
  ) =>
      _getIdentity.call(
        this,
        pIdentity,
      );

  ESteamNetworkingAvailability initAuthentication() => _initAuthentication.call(
        this,
      );

  ESteamNetworkingAvailability getAuthenticationStatus(
    Pointer<SteamNetAuthenticationStatus> pDetails,
  ) =>
      _getAuthenticationStatus.call(
        this,
        pDetails,
      );

  HSteamNetPollGroup createPollGroup() => _createPollGroup.call(
        this,
      );

  bool destroyPollGroup(
    HSteamNetPollGroup hPollGroup,
  ) =>
      _destroyPollGroup.call(
        this,
        hPollGroup,
      );

  bool setConnectionPollGroup(
    HSteamNetConnection hConn,
    HSteamNetPollGroup hPollGroup,
  ) =>
      _setConnectionPollGroup.call(
        this,
        hConn,
        hPollGroup,
      );

  int receiveMessagesOnPollGroup(
    HSteamNetPollGroup hPollGroup,
    Pointer<Pointer<SteamNetworkingMessage>> ppOutMessages,
    int nMaxMessages,
  ) =>
      _receiveMessagesOnPollGroup.call(
        this,
        hPollGroup,
        ppOutMessages,
        nMaxMessages,
      );

  bool receivedRelayAuthTicket(
    Pointer<Void> pvTicket,
    int cbTicket,
    Pointer<SteamDatagramRelayAuthTicket> pOutParsedTicket,
  ) =>
      _receivedRelayAuthTicket.call(
        this,
        pvTicket,
        cbTicket,
        pOutParsedTicket,
      );

  int findRelayAuthTicketForServer(
    Pointer<SteamNetworkingIdentity> identityGameServer,
    int nRemoteVirtualPort,
    Pointer<SteamDatagramRelayAuthTicket> pOutParsedTicket,
  ) =>
      _findRelayAuthTicketForServer.call(
        this,
        identityGameServer,
        nRemoteVirtualPort,
        pOutParsedTicket,
      );

  HSteamNetConnection connectToHostedDedicatedServer(
    Pointer<SteamNetworkingIdentity> identityTarget,
    int nRemoteVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectToHostedDedicatedServer.call(
        this,
        identityTarget,
        nRemoteVirtualPort,
        nOptions,
        pOptions,
      );

  int getHostedDedicatedServerPort() => _getHostedDedicatedServerPort.call(
        this,
      );

  SteamNetworkingPopId getHostedDedicatedServerPopId() =>
      _getHostedDedicatedServerPopId.call(
        this,
      );

  EResult getHostedDedicatedServerAddress(
    Pointer<SteamDatagramHostedAddress> pRouting,
  ) =>
      _getHostedDedicatedServerAddress.call(
        this,
        pRouting,
      );

  HSteamListenSocket createHostedDedicatedServerListenSocket(
    int nLocalVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createHostedDedicatedServerListenSocket.call(
        this,
        nLocalVirtualPort,
        nOptions,
        pOptions,
      );

  EResult getGameCoordinatorServerLogin(
    Pointer<SteamDatagramGameCoordinatorServerLogin> pLoginInfo,
    Pointer<Int> pcbSignedBlob,
    Pointer<Void> pBlob,
  ) =>
      _getGameCoordinatorServerLogin.call(
        this,
        pLoginInfo,
        pcbSignedBlob,
        pBlob,
      );

  HSteamNetConnection connectP2pCustomSignaling(
    Pointer<ISteamNetworkingConnectionSignaling> pSignaling,
    Pointer<SteamNetworkingIdentity> pPeerIdentity,
    int nRemoteVirtualPort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _connectP2pCustomSignaling.call(
        this,
        pSignaling,
        pPeerIdentity,
        nRemoteVirtualPort,
        nOptions,
        pOptions,
      );

  bool receivedP2pCustomSignal(
    Pointer<Void> pMsg,
    int cbMsg,
    Pointer<ISteamNetworkingSignalingRecvContext> pContext,
  ) =>
      _receivedP2pCustomSignal.call(
        this,
        pMsg,
        cbMsg,
        pContext,
      );

  bool getCertificateRequest(
    Pointer<Int> pcbBlob,
    Pointer<Void> pBlob,
    Pointer<Pointer<Utf8>> errMsg,
  ) =>
      _getCertificateRequest.call(
        this,
        pcbBlob,
        pBlob,
        errMsg,
      );

  bool setCertificate(
    Pointer<Void> pCertificate,
    int cbCertificate,
    Pointer<Pointer<Utf8>> errMsg,
  ) =>
      _setCertificate.call(
        this,
        pCertificate,
        cbCertificate,
        errMsg,
      );

  void resetIdentity(
    Pointer<SteamNetworkingIdentity> pIdentity,
  ) =>
      _resetIdentity.call(
        this,
        pIdentity,
      );

  void runCallbacks() => _runCallbacks.call(
        this,
      );

  bool beginAsyncRequestFakeIp(
    int nNumPorts,
  ) =>
      _beginAsyncRequestFakeIp.call(
        this,
        nNumPorts,
      );

  void getFakeIp(
    int idxFirstPort,
    Pointer<SteamNetworkingFakeIpResult> pInfo,
  ) =>
      _getFakeIp.call(
        this,
        idxFirstPort,
        pInfo,
      );

  HSteamListenSocket createListenSocketP2pFakeIp(
    int idxFakePort,
    int nOptions,
    Pointer<SteamNetworkingConfigValue> pOptions,
  ) =>
      _createListenSocketP2pFakeIp.call(
        this,
        idxFakePort,
        nOptions,
        pOptions,
      );

  EResult getRemoteFakeIpForConnection(
    HSteamNetConnection hConn,
    Pointer<SteamNetworkingIpAddr> pOutAddr,
  ) =>
      _getRemoteFakeIpForConnection.call(
        this,
        hConn,
        pOutAddr,
      );

  Pointer<ISteamNetworkingFakeUdpPort> createFakeUdpPort(
    int idxFakeServerPort,
  ) =>
      _createFakeUdpPort.call(
        this,
        idxFakeServerPort,
      );
}
