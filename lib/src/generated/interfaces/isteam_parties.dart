// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/esteam_party_beacon_location_data.dart";
import "../structs/steam_party_beacon_location.dart";
import "../typedefs.dart";

final _steamParties = dl.lookupFunction<Pointer<ISteamParties> Function(),
    Pointer<ISteamParties> Function()>("SteamAPI_SteamParties_v002");

class ISteamParties extends Opaque {
  static Pointer<ISteamParties> get userInstance => _steamParties();
}

final _getNumActiveBeacons = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamParties>,
),
    int Function(
  Pointer<ISteamParties>,
)>("SteamAPI_ISteamParties_GetNumActiveBeacons");

final _getBeaconByIndex = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamParties>,
  UnsignedInt,
),
    PartyBeaconId Function(
  Pointer<ISteamParties>,
  int,
)>("SteamAPI_ISteamParties_GetBeaconByIndex");

final _getBeaconDetails = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamParties>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamParties>,
  PartyBeaconId,
  Pointer<UnsignedLongLong>,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamParties_GetBeaconDetails");

final _joinParty = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamParties>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamParties>,
  PartyBeaconId,
)>("SteamAPI_ISteamParties_JoinParty");

final _getNumAvailableBeaconLocations = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamParties>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamParties>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamParties_GetNumAvailableBeaconLocations");

final _getAvailableBeaconLocations = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamParties>,
  Pointer<SteamPartyBeaconLocation>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamParties>,
  Pointer<SteamPartyBeaconLocation>,
  int,
)>("SteamAPI_ISteamParties_GetAvailableBeaconLocations");

final _createBeacon = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamParties>,
  UnsignedInt,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamParties>,
  int,
  Pointer<SteamPartyBeaconLocation>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamParties_CreateBeacon");

final _onReservationCompleted = dl.lookupFunction<
    Void Function(
  Pointer<ISteamParties>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamParties>,
  PartyBeaconId,
  CSteamId,
)>("SteamAPI_ISteamParties_OnReservationCompleted");

final _cancelReservation = dl.lookupFunction<
    Void Function(
  Pointer<ISteamParties>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    void Function(
  Pointer<ISteamParties>,
  PartyBeaconId,
  CSteamId,
)>("SteamAPI_ISteamParties_CancelReservation");

final _changeNumOpenSlots = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamParties>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamParties>,
  PartyBeaconId,
  int,
)>("SteamAPI_ISteamParties_ChangeNumOpenSlots");

final _destroyBeacon = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamParties>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamParties>,
  PartyBeaconId,
)>("SteamAPI_ISteamParties_DestroyBeacon");

final _getBeaconLocationData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamParties>,
  SteamPartyBeaconLocation,
  Int32,
  Pointer<Utf8>,
  Int,
),
    bool Function(
  Pointer<ISteamParties>,
  SteamPartyBeaconLocation,
  ESteamPartyBeaconLocationData,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamParties_GetBeaconLocationData");

extension ISteamPartiesExtensions on Pointer<ISteamParties> {
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
