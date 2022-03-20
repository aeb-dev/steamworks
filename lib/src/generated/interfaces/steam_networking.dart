import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_p2p_send.dart";
import "../enums/e_snet_socket_connection_type.dart";
import "../structs/p2p_session_state.dart";
import "../structs/steam_ip_address.dart";
import "../typedefs.dart";

final _steamNetworking = dl.lookupFunction<Pointer<SteamNetworking> Function(),
    Pointer<SteamNetworking> Function()>("SteamAPI_SteamNetworking_v006");

final _steamGameServerNetworking = dl.lookupFunction<
    Pointer<SteamNetworking> Function(),
    Pointer<SteamNetworking>
        Function()>("SteamAPI_SteamGameServerNetworking_v006");

class SteamNetworking extends Opaque {
  static Pointer<SteamNetworking> get userInstance => _steamNetworking();

  static Pointer<SteamNetworking> get serverInstance =>
      _steamGameServerNetworking();
}

final _sendP2pPacket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
  Pointer<Void>,
  UnsignedInt,
  Int32,
  Int,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
  Pointer<Void>,
  int,
  EP2pSend,
  int,
)>("SteamAPI_ISteamNetworking_SendP2PPacket");

final _isP2pPacketAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  Pointer<UnsignedInt>,
  Int,
),
    bool Function(
  Pointer<SteamNetworking>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamNetworking_IsP2PPacketAvailable");

final _readP2pPacket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Pointer<UnsignedLongLong>,
  Int,
),
    bool Function(
  Pointer<SteamNetworking>,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamNetworking_ReadP2PPacket");

final _acceptP2pSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
)>("SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser");

final _closeP2pSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
)>("SteamAPI_ISteamNetworking_CloseP2PSessionWithUser");

final _closeP2pChannelWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
  Int,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
  int,
)>("SteamAPI_ISteamNetworking_CloseP2PChannelWithUser");

final _getP2pSessionState = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
  Pointer<P2pSessionState>,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
  Pointer<P2pSessionState>,
)>("SteamAPI_ISteamNetworking_GetP2PSessionState");

final _allowP2pPacketRelay = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  Bool,
),
    bool Function(
  Pointer<SteamNetworking>,
  bool,
)>("SteamAPI_ISteamNetworking_AllowP2PPacketRelay");

final _createListenSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworking>,
  Int,
  SteamIpAddress,
  UnsignedShort,
  Bool,
),
    SnetListenSocket Function(
  Pointer<SteamNetworking>,
  int,
  SteamIpAddress,
  int,
  bool,
)>("SteamAPI_ISteamNetworking_CreateListenSocket");

final _createP2pConnectionSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
  Int,
  Int,
  Bool,
),
    SnetSocket Function(
  Pointer<SteamNetworking>,
  CSteamId,
  int,
  int,
  bool,
)>("SteamAPI_ISteamNetworking_CreateP2PConnectionSocket");

final _createConnectionSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamNetworking>,
  SteamIpAddress,
  UnsignedShort,
  Int,
),
    SnetSocket Function(
  Pointer<SteamNetworking>,
  SteamIpAddress,
  int,
  int,
)>("SteamAPI_ISteamNetworking_CreateConnectionSocket");

final _destroySocket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetSocket,
  bool,
)>("SteamAPI_ISteamNetworking_DestroySocket");

final _destroyListenSocket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetListenSocket,
  bool,
)>("SteamAPI_ISteamNetworking_DestroyListenSocket");

final _sendDataOnSocket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetSocket,
  Pointer<Void>,
  int,
  bool,
)>("SteamAPI_ISteamNetworking_SendDataOnSocket");

final _isDataAvailableOnSocket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetSocket,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_IsDataAvailableOnSocket");

final _retrieveDataFromSocket = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetSocket,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_RetrieveDataFromSocket");

final _isDataAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetListenSocket,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_IsDataAvailable");

final _retrieveData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetListenSocket,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_RetrieveData");

final _getSocketInfo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<Int>,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetSocket,
  Pointer<UnsignedLongLong>,
  Pointer<Int>,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamNetworking_GetSocketInfo");

final _getListenSocketInfo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
),
    bool Function(
  Pointer<SteamNetworking>,
  SnetListenSocket,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamNetworking_GetListenSocketInfo");

final _getSocketConnectionType = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
),
    ESnetSocketConnectionType Function(
  Pointer<SteamNetworking>,
  SnetSocket,
)>("SteamAPI_ISteamNetworking_GetSocketConnectionType");

final _getMaxPacketSize = dl.lookupFunction<
    Int Function(
  Pointer<SteamNetworking>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamNetworking>,
  SnetSocket,
)>("SteamAPI_ISteamNetworking_GetMaxPacketSize");

extension SteamNetworkingExtensions on Pointer<SteamNetworking> {
  bool sendP2pPacket(
    CSteamId steamIdRemote,
    Pointer<Void> pubData,
    int cubData,
    EP2pSend p2pSendType,
    int nChannel,
  ) =>
      _sendP2pPacket.call(
        this,
        steamIdRemote,
        pubData,
        cubData,
        p2pSendType,
        nChannel,
      );

  bool isP2pPacketAvailable(
    Pointer<UnsignedInt> pcubMsgSize,
    int nChannel,
  ) =>
      _isP2pPacketAvailable.call(
        this,
        pcubMsgSize,
        nChannel,
      );

  bool readP2pPacket(
    Pointer<Void> pubDest,
    int cubDest,
    Pointer<UnsignedInt> pcubMsgSize,
    Pointer<UnsignedLongLong> psteamIdRemote,
    int nChannel,
  ) =>
      _readP2pPacket.call(
        this,
        pubDest,
        cubDest,
        pcubMsgSize,
        psteamIdRemote,
        nChannel,
      );

  bool acceptP2pSessionWithUser(
    CSteamId steamIdRemote,
  ) =>
      _acceptP2pSessionWithUser.call(
        this,
        steamIdRemote,
      );

  bool closeP2pSessionWithUser(
    CSteamId steamIdRemote,
  ) =>
      _closeP2pSessionWithUser.call(
        this,
        steamIdRemote,
      );

  bool closeP2pChannelWithUser(
    CSteamId steamIdRemote,
    int nChannel,
  ) =>
      _closeP2pChannelWithUser.call(
        this,
        steamIdRemote,
        nChannel,
      );

  bool getP2pSessionState(
    CSteamId steamIdRemote,
    Pointer<P2pSessionState> pConnectionState,
  ) =>
      _getP2pSessionState.call(
        this,
        steamIdRemote,
        pConnectionState,
      );

  bool allowP2pPacketRelay(
    bool allow,
  ) =>
      _allowP2pPacketRelay.call(
        this,
        allow,
      );

  SnetListenSocket createListenSocket(
    int nVirtualP2pPort,
    SteamIpAddress nIp,
    int nPort,
    bool allowUseOfPacketRelay,
  ) =>
      _createListenSocket.call(
        this,
        nVirtualP2pPort,
        nIp,
        nPort,
        allowUseOfPacketRelay,
      );

  SnetSocket createP2pConnectionSocket(
    CSteamId steamIdTarget,
    int nVirtualPort,
    int nTimeoutSec,
    bool allowUseOfPacketRelay,
  ) =>
      _createP2pConnectionSocket.call(
        this,
        steamIdTarget,
        nVirtualPort,
        nTimeoutSec,
        allowUseOfPacketRelay,
      );

  SnetSocket createConnectionSocket(
    SteamIpAddress nIp,
    int nPort,
    int nTimeoutSec,
  ) =>
      _createConnectionSocket.call(
        this,
        nIp,
        nPort,
        nTimeoutSec,
      );

  bool destroySocket(
    SnetSocket hSocket,
    bool notifyRemoteEnd,
  ) =>
      _destroySocket.call(
        this,
        hSocket,
        notifyRemoteEnd,
      );

  bool destroyListenSocket(
    SnetListenSocket hSocket,
    bool notifyRemoteEnd,
  ) =>
      _destroyListenSocket.call(
        this,
        hSocket,
        notifyRemoteEnd,
      );

  bool sendDataOnSocket(
    SnetSocket hSocket,
    Pointer<Void> pubData,
    int cubData,
    bool reliable,
  ) =>
      _sendDataOnSocket.call(
        this,
        hSocket,
        pubData,
        cubData,
        reliable,
      );

  bool isDataAvailableOnSocket(
    SnetSocket hSocket,
    Pointer<UnsignedInt> pcubMsgSize,
  ) =>
      _isDataAvailableOnSocket.call(
        this,
        hSocket,
        pcubMsgSize,
      );

  bool retrieveDataFromSocket(
    SnetSocket hSocket,
    Pointer<Void> pubDest,
    int cubDest,
    Pointer<UnsignedInt> pcubMsgSize,
  ) =>
      _retrieveDataFromSocket.call(
        this,
        hSocket,
        pubDest,
        cubDest,
        pcubMsgSize,
      );

  bool isDataAvailable(
    SnetListenSocket hListenSocket,
    Pointer<UnsignedInt> pcubMsgSize,
    Pointer<UnsignedInt> phSocket,
  ) =>
      _isDataAvailable.call(
        this,
        hListenSocket,
        pcubMsgSize,
        phSocket,
      );

  bool retrieveData(
    SnetListenSocket hListenSocket,
    Pointer<Void> pubDest,
    int cubDest,
    Pointer<UnsignedInt> pcubMsgSize,
    Pointer<UnsignedInt> phSocket,
  ) =>
      _retrieveData.call(
        this,
        hListenSocket,
        pubDest,
        cubDest,
        pcubMsgSize,
        phSocket,
      );

  bool getSocketInfo(
    SnetSocket hSocket,
    Pointer<UnsignedLongLong> pSteamIdRemote,
    Pointer<Int> peSocketStatus,
    Pointer<SteamIpAddress> punIpRemote,
    Pointer<UnsignedShort> punPortRemote,
  ) =>
      _getSocketInfo.call(
        this,
        hSocket,
        pSteamIdRemote,
        peSocketStatus,
        punIpRemote,
        punPortRemote,
      );

  bool getListenSocketInfo(
    SnetListenSocket hListenSocket,
    Pointer<SteamIpAddress> pnIp,
    Pointer<UnsignedShort> pnPort,
  ) =>
      _getListenSocketInfo.call(
        this,
        hListenSocket,
        pnIp,
        pnPort,
      );

  ESnetSocketConnectionType getSocketConnectionType(
    SnetSocket hSocket,
  ) =>
      _getSocketConnectionType.call(
        this,
        hSocket,
      );

  int getMaxPacketSize(
    SnetSocket hSocket,
  ) =>
      _getMaxPacketSize.call(
        this,
        hSocket,
      );
}
