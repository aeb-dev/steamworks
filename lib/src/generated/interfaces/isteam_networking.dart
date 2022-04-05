// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/ep2p_send.dart";
import "../enums/esnet_socket_connection_type.dart";
import "../structs/p2p_session_state.dart";
import "../structs/steam_ip_address.dart";
import "../typedefs.dart";

final _steamNetworking = dl.lookupFunction<Pointer<ISteamNetworking> Function(),
    Pointer<ISteamNetworking> Function()>("SteamAPI_SteamNetworking_v006");

final _steamGameServerNetworking = dl.lookupFunction<
    Pointer<ISteamNetworking> Function(),
    Pointer<ISteamNetworking>
        Function()>("SteamAPI_SteamGameServerNetworking_v006");

class ISteamNetworking extends Opaque {
  static Pointer<ISteamNetworking> get userInstance => _steamNetworking();

  static Pointer<ISteamNetworking> get serverInstance =>
      _steamGameServerNetworking();
}

final _sendP2pPacket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedLongLong,
  Pointer<Void>,
  UnsignedInt,
  Int32,
  Int,
),
    bool Function(
  Pointer<ISteamNetworking>,
  CSteamId,
  Pointer<Void>,
  int,
  EP2pSend,
  int,
)>("SteamAPI_ISteamNetworking_SendP2PPacket");

final _isP2pPacketAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  Pointer<UnsignedInt>,
  Int,
),
    bool Function(
  Pointer<ISteamNetworking>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamNetworking_IsP2PPacketAvailable");

final _readP2pPacket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Pointer<UnsignedLongLong>,
  Int,
),
    bool Function(
  Pointer<ISteamNetworking>,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamNetworking_ReadP2PPacket");

final _acceptP2pSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamNetworking>,
  CSteamId,
)>("SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser");

final _closeP2pSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamNetworking>,
  CSteamId,
)>("SteamAPI_ISteamNetworking_CloseP2PSessionWithUser");

final _closeP2pChannelWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedLongLong,
  Int,
),
    bool Function(
  Pointer<ISteamNetworking>,
  CSteamId,
  int,
)>("SteamAPI_ISteamNetworking_CloseP2PChannelWithUser");

final _getP2pSessionState = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedLongLong,
  Pointer<P2pSessionState>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  CSteamId,
  Pointer<P2pSessionState>,
)>("SteamAPI_ISteamNetworking_GetP2PSessionState");

final _allowP2pPacketRelay = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  Bool,
),
    bool Function(
  Pointer<ISteamNetworking>,
  bool,
)>("SteamAPI_ISteamNetworking_AllowP2PPacketRelay");

final _createListenSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworking>,
  Int,
  SteamIpAddress,
  UnsignedShort,
  Bool,
),
    SnetListenSocket Function(
  Pointer<ISteamNetworking>,
  int,
  SteamIpAddress,
  int,
  bool,
)>("SteamAPI_ISteamNetworking_CreateListenSocket");

final _createP2pConnectionSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworking>,
  UnsignedLongLong,
  Int,
  Int,
  Bool,
),
    SnetSocket Function(
  Pointer<ISteamNetworking>,
  CSteamId,
  int,
  int,
  bool,
)>("SteamAPI_ISteamNetworking_CreateP2PConnectionSocket");

final _createConnectionSocket = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamNetworking>,
  SteamIpAddress,
  UnsignedShort,
  Int,
),
    SnetSocket Function(
  Pointer<ISteamNetworking>,
  SteamIpAddress,
  int,
  int,
)>("SteamAPI_ISteamNetworking_CreateConnectionSocket");

final _destroySocket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
  bool,
)>("SteamAPI_ISteamNetworking_DestroySocket");

final _destroyListenSocket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetListenSocket,
  bool,
)>("SteamAPI_ISteamNetworking_DestroyListenSocket");

final _sendDataOnSocket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
  Pointer<Void>,
  int,
  bool,
)>("SteamAPI_ISteamNetworking_SendDataOnSocket");

final _isDataAvailableOnSocket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_IsDataAvailableOnSocket");

final _retrieveDataFromSocket = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_RetrieveDataFromSocket");

final _isDataAvailable = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetListenSocket,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_IsDataAvailable");

final _retrieveData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<Void>,
  UnsignedInt,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetListenSocket,
  Pointer<Void>,
  int,
  Pointer<UnsignedInt>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamNetworking_RetrieveData");

final _getSocketInfo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<Int>,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
  Pointer<UnsignedLongLong>,
  Pointer<Int>,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamNetworking_GetSocketInfo");

final _getListenSocketInfo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
),
    bool Function(
  Pointer<ISteamNetworking>,
  SnetListenSocket,
  Pointer<SteamIpAddress>,
  Pointer<UnsignedShort>,
)>("SteamAPI_ISteamNetworking_GetListenSocketInfo");

final _getSocketConnectionType = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
),
    ESnetSocketConnectionType Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
)>("SteamAPI_ISteamNetworking_GetSocketConnectionType");

final _getMaxPacketSize = dl.lookupFunction<
    Int Function(
  Pointer<ISteamNetworking>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamNetworking>,
  SnetSocket,
)>("SteamAPI_ISteamNetworking_GetMaxPacketSize");

extension ISteamNetworkingExtensions on Pointer<ISteamNetworking> {
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
