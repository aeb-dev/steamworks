import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_p2p_send.dart";
import "../enums/e_snet_socket_connection_type.dart";
import "../steam_api.dart";
import "../structs/p2p_session_state.dart";
import "../structs/steam_ip_address.dart";
import "../typedefs.dart";

class SteamNetworking extends Opaque {
  static Pointer<SteamNetworking> steamNetworking() => nullptr;
  static Pointer<SteamNetworking> steamGameServerNetworking() => nullptr;
}

final _sendP2PPacket = dl.lookupFunction<
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

final _isP2PPacketAvailable = dl.lookupFunction<
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

final _readP2PPacket = dl.lookupFunction<
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

final _acceptP2PSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
)>("SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser");

final _closeP2PSessionWithUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamNetworking>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamNetworking>,
  CSteamId,
)>("SteamAPI_ISteamNetworking_CloseP2PSessionWithUser");

final _closeP2PChannelWithUser = dl.lookupFunction<
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

final _getP2PSessionState = dl.lookupFunction<
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

final _allowP2PPacketRelay = dl.lookupFunction<
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

final _createP2PConnectionSocket = dl.lookupFunction<
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
  bool sendP2PPacket(
    CSteamId steamIDRemote,
    Pointer<Void> pubData,
    int cubData,
    EP2pSend eP2PSendType,
    int nChannel,
  ) =>
      _sendP2PPacket.call(
        this,
        steamIDRemote,
        pubData,
        cubData,
        eP2PSendType,
        nChannel,
      );

  bool isP2PPacketAvailable(
    Pointer<UnsignedInt> pcubMsgSize,
    int nChannel,
  ) =>
      _isP2PPacketAvailable.call(
        this,
        pcubMsgSize,
        nChannel,
      );

  bool readP2PPacket(
    Pointer<Void> pubDest,
    int cubDest,
    Pointer<UnsignedInt> pcubMsgSize,
    Pointer<UnsignedLongLong> psteamIDRemote,
    int nChannel,
  ) =>
      _readP2PPacket.call(
        this,
        pubDest,
        cubDest,
        pcubMsgSize,
        psteamIDRemote,
        nChannel,
      );

  bool acceptP2PSessionWithUser(
    CSteamId steamIDRemote,
  ) =>
      _acceptP2PSessionWithUser.call(
        this,
        steamIDRemote,
      );

  bool closeP2PSessionWithUser(
    CSteamId steamIDRemote,
  ) =>
      _closeP2PSessionWithUser.call(
        this,
        steamIDRemote,
      );

  bool closeP2PChannelWithUser(
    CSteamId steamIDRemote,
    int nChannel,
  ) =>
      _closeP2PChannelWithUser.call(
        this,
        steamIDRemote,
        nChannel,
      );

  bool getP2PSessionState(
    CSteamId steamIDRemote,
    Pointer<P2pSessionState> pConnectionState,
  ) =>
      _getP2PSessionState.call(
        this,
        steamIDRemote,
        pConnectionState,
      );

  bool allowP2PPacketRelay(
    bool bAllow,
  ) =>
      _allowP2PPacketRelay.call(
        this,
        bAllow,
      );

  SnetListenSocket createListenSocket(
    int nVirtualP2PPort,
    SteamIpAddress nIP,
    int nPort,
    bool bAllowUseOfPacketRelay,
  ) =>
      _createListenSocket.call(
        this,
        nVirtualP2PPort,
        nIP,
        nPort,
        bAllowUseOfPacketRelay,
      );

  SnetSocket createP2PConnectionSocket(
    CSteamId steamIDTarget,
    int nVirtualPort,
    int nTimeoutSec,
    bool bAllowUseOfPacketRelay,
  ) =>
      _createP2PConnectionSocket.call(
        this,
        steamIDTarget,
        nVirtualPort,
        nTimeoutSec,
        bAllowUseOfPacketRelay,
      );

  SnetSocket createConnectionSocket(
    SteamIpAddress nIP,
    int nPort,
    int nTimeoutSec,
  ) =>
      _createConnectionSocket.call(
        this,
        nIP,
        nPort,
        nTimeoutSec,
      );

  bool destroySocket(
    SnetSocket hSocket,
    bool bNotifyRemoteEnd,
  ) =>
      _destroySocket.call(
        this,
        hSocket,
        bNotifyRemoteEnd,
      );

  bool destroyListenSocket(
    SnetListenSocket hSocket,
    bool bNotifyRemoteEnd,
  ) =>
      _destroyListenSocket.call(
        this,
        hSocket,
        bNotifyRemoteEnd,
      );

  bool sendDataOnSocket(
    SnetSocket hSocket,
    Pointer<Void> pubData,
    int cubData,
    bool bReliable,
  ) =>
      _sendDataOnSocket.call(
        this,
        hSocket,
        pubData,
        cubData,
        bReliable,
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
    Pointer<UnsignedLongLong> pSteamIDRemote,
    Pointer<Int> peSocketStatus,
    Pointer<SteamIpAddress> punIPRemote,
    Pointer<UnsignedShort> punPortRemote,
  ) =>
      _getSocketInfo.call(
        this,
        hSocket,
        pSteamIDRemote,
        peSocketStatus,
        punIPRemote,
        punPortRemote,
      );

  bool getListenSocketInfo(
    SnetListenSocket hListenSocket,
    Pointer<SteamIpAddress> pnIP,
    Pointer<UnsignedShort> pnPort,
  ) =>
      _getListenSocketInfo.call(
        this,
        hListenSocket,
        pnIP,
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
