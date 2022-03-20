import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_steam_party_beacon_location_data.dart";
import "../structs/steam_party_beacon_location.dart";
import "../typedefs.dart";

final _steamParties = dl.lookupFunction<Pointer<SteamParties> Function(),
    Pointer<SteamParties> Function()>("SteamAPI_SteamParties_v002");

class SteamParties extends Opaque {
  static Pointer<SteamParties> get userInstance => _steamParties();
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
    int index,
  ) =>
      _getBeaconByIndex.call(
        this,
        index,
      );

  bool getBeaconDetails(
    PartyBeaconId ulBeaconId,
    Pointer<UnsignedLongLong> pSteamIdBeaconOwner,
    Pointer<SteamPartyBeaconLocation> pLocation,
    Pointer<Utf8> metadata,
    int cchMetadata,
  ) =>
      _getBeaconDetails.call(
        this,
        ulBeaconId,
        pSteamIdBeaconOwner,
        pLocation,
        metadata,
        cchMetadata,
      );

  SteamApiCall joinParty(
    PartyBeaconId ulBeaconId,
  ) =>
      _joinParty.call(
        this,
        ulBeaconId,
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
    int openSlots,
    Pointer<SteamPartyBeaconLocation> pBeaconLocation,
    Pointer<Utf8> connectString,
    Pointer<Utf8> metadata,
  ) =>
      _createBeacon.call(
        this,
        openSlots,
        pBeaconLocation,
        connectString,
        metadata,
      );

  void onReservationCompleted(
    PartyBeaconId ulBeacon,
    CSteamId steamIdUser,
  ) =>
      _onReservationCompleted.call(
        this,
        ulBeacon,
        steamIdUser,
      );

  void cancelReservation(
    PartyBeaconId ulBeacon,
    CSteamId steamIdUser,
  ) =>
      _cancelReservation.call(
        this,
        ulBeacon,
        steamIdUser,
      );

  SteamApiCall changeNumOpenSlots(
    PartyBeaconId ulBeacon,
    int openSlots,
  ) =>
      _changeNumOpenSlots.call(
        this,
        ulBeacon,
        openSlots,
      );

  bool destroyBeacon(
    PartyBeaconId ulBeacon,
  ) =>
      _destroyBeacon.call(
        this,
        ulBeacon,
      );

  bool getBeaconLocationData(
    SteamPartyBeaconLocation beaconLocation,
    ESteamPartyBeaconLocationData data,
    Pointer<Utf8> dataStringOut,
    int cchDataStringOut,
  ) =>
      _getBeaconLocationData.call(
        this,
        beaconLocation,
        data,
        dataStringOut,
        cchDataStringOut,
      );
}
