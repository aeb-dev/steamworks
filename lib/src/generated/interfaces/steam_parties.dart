import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_steam_party_beacon_location_data.dart";
import "../steam_api.dart";
import "../structs/steam_party_beacon_location.dart";
import "../typedefs.dart";

class SteamParties extends Opaque {
  static Pointer<SteamParties> steamParties() => nullptr;
}

final _getNumActiveBeacons = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamParties>,
),
    int Function(
  Pointer<SteamParties>,
)>("SteamAPI_ISteamParties_GetNumActiveBeacons");

final _getBeaconByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamParties>,
  UnsignedInt,
),
    PartyBeaconId Function(
  Pointer<SteamParties>,
  int,
)>("SteamAPI_ISteamParties_GetBeaconByIndex");

final _getBeaconDetails = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParties>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamParties>,
  PartyBeaconId,
  Pointer<UnsignedLongLong>,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamParties_GetBeaconDetails");

final _joinParty = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamParties>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamParties>,
  PartyBeaconId,
)>("SteamAPI_ISteamParties_JoinParty");

final _getNumAvailableBeaconLocations = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParties>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamParties>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamParties_GetNumAvailableBeaconLocations");

final _getAvailableBeaconLocations = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParties>,
  Pointer<SteamPartyBeaconLocation>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamParties>,
  Pointer<SteamPartyBeaconLocation>,
  int,
)>("SteamAPI_ISteamParties_GetAvailableBeaconLocations");

final _createBeacon = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamParties>,
  UnsignedInt,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamParties>,
  int,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamParties_CreateBeacon");

final _onReservationCompleted = dl.lookupFunction<
    Void Function(
  Pointer<SteamParties>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamParties>,
  PartyBeaconId,
  CSteamId,
)>("SteamAPI_ISteamParties_OnReservationCompleted");

final _cancelReservation = dl.lookupFunction<
    Void Function(
  Pointer<SteamParties>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<SteamParties>,
  PartyBeaconId,
  CSteamId,
)>("SteamAPI_ISteamParties_CancelReservation");

final _changeNumOpenSlots = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamParties>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamParties>,
  PartyBeaconId,
  int,
)>("SteamAPI_ISteamParties_ChangeNumOpenSlots");

final _destroyBeacon = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParties>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamParties>,
  PartyBeaconId,
)>("SteamAPI_ISteamParties_DestroyBeacon");

final _getBeaconLocationData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamParties>,
  SteamPartyBeaconLocation,
  Int32,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<SteamParties>,
  SteamPartyBeaconLocation,
  ESteamPartyBeaconLocationData,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamParties_GetBeaconLocationData");

extension SteamPartiesExtensions on Pointer<SteamParties> {
  int getNumActiveBeacons() => _getNumActiveBeacons.call(
        this,
      );

  PartyBeaconId getBeaconByIndex(
    int unIndex,
  ) =>
      _getBeaconByIndex.call(
        this,
        unIndex,
      );

  bool getBeaconDetails(
    PartyBeaconId ulBeaconID,
    Pointer<UnsignedLongLong> pSteamIDBeaconOwner,
    Pointer<SteamPartyBeaconLocation> pLocation,
    Pointer<Utf8> pchMetadata,
    int cchMetadata,
  ) =>
      _getBeaconDetails.call(
        this,
        ulBeaconID,
        pSteamIDBeaconOwner,
        pLocation,
        pchMetadata,
        cchMetadata,
      );

  SteamApiCall joinParty(
    PartyBeaconId ulBeaconID,
  ) =>
      _joinParty.call(
        this,
        ulBeaconID,
      );

  bool getNumAvailableBeaconLocations(
    Pointer<UnsignedInt> puNumLocations,
  ) =>
      _getNumAvailableBeaconLocations.call(
        this,
        puNumLocations,
      );

  bool getAvailableBeaconLocations(
    Pointer<SteamPartyBeaconLocation> pLocationList,
    int uMaxNumLocations,
  ) =>
      _getAvailableBeaconLocations.call(
        this,
        pLocationList,
        uMaxNumLocations,
      );

  SteamApiCall createBeacon(
    int unOpenSlots,
    Pointer<SteamPartyBeaconLocation> pBeaconLocation,
    Pointer<Utf8> pchConnectString,
    Pointer<Utf8> pchMetadata,
  ) =>
      _createBeacon.call(
        this,
        unOpenSlots,
        pBeaconLocation,
        pchConnectString,
        pchMetadata,
      );

  void onReservationCompleted(
    PartyBeaconId ulBeacon,
    CSteamId steamIDUser,
  ) =>
      _onReservationCompleted.call(
        this,
        ulBeacon,
        steamIDUser,
      );

  void cancelReservation(
    PartyBeaconId ulBeacon,
    CSteamId steamIDUser,
  ) =>
      _cancelReservation.call(
        this,
        ulBeacon,
        steamIDUser,
      );

  SteamApiCall changeNumOpenSlots(
    PartyBeaconId ulBeacon,
    int unOpenSlots,
  ) =>
      _changeNumOpenSlots.call(
        this,
        ulBeacon,
        unOpenSlots,
      );

  bool destroyBeacon(
    PartyBeaconId ulBeacon,
  ) =>
      _destroyBeacon.call(
        this,
        ulBeacon,
      );

  bool getBeaconLocationData(
    SteamPartyBeaconLocation BeaconLocation,
    ESteamPartyBeaconLocationData eData,
    Pointer<Utf8> pchDataStringOut,
    int cchDataStringOut,
  ) =>
      _getBeaconLocationData.call(
        this,
        BeaconLocation,
        eData,
        pchDataStringOut,
        cchDataStringOut,
      );
}
