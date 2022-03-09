import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_vr_screenshot_type.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamScreenshots extends Opaque {
  static Pointer<SteamScreenshots> steamScreenshots() => nullptr;
}

final _writeScreenshot = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamScreenshots>,
  Pointer<Void>,
  UnsignedInt,
  Int,
  Int,
),
    ScreenshotHandle Function(
  Pointer<SteamScreenshots>,
  Pointer<Void>,
  int,
  int,
  int,
)>("SteamAPI_ISteamScreenshots_WriteScreenshot");

final _addScreenshotToLibrary = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamScreenshots>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Int,
  Int,
),
    ScreenshotHandle Function(
  Pointer<SteamScreenshots>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
  int,
)>("SteamAPI_ISteamScreenshots_AddScreenshotToLibrary");

final _triggerScreenshot = dl.lookupFunction<
    Void Function(
  Pointer<SteamScreenshots>,
),
    void Function(
  Pointer<SteamScreenshots>,
)>("SteamAPI_ISteamScreenshots_TriggerScreenshot");

final _hookScreenshots = dl.lookupFunction<
    Void Function(
  Pointer<SteamScreenshots>,
  Bool,
),
    void Function(
  Pointer<SteamScreenshots>,
  bool,
)>("SteamAPI_ISteamScreenshots_HookScreenshots");

final _setLocation = dl.lookupFunction<
    Bool Function(
  Pointer<SteamScreenshots>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamScreenshots>,
  ScreenshotHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamScreenshots_SetLocation");

final _tagUser = dl.lookupFunction<
    Bool Function(
  Pointer<SteamScreenshots>,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamScreenshots>,
  ScreenshotHandle,
  CSteamId,
)>("SteamAPI_ISteamScreenshots_TagUser");

final _tagPublishedFile = dl.lookupFunction<
    Bool Function(
  Pointer<SteamScreenshots>,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamScreenshots>,
  ScreenshotHandle,
  PublishedFileId,
)>("SteamAPI_ISteamScreenshots_TagPublishedFile");

final _isScreenshotsHooked = dl.lookupFunction<
    Bool Function(
  Pointer<SteamScreenshots>,
),
    bool Function(
  Pointer<SteamScreenshots>,
)>("SteamAPI_ISteamScreenshots_IsScreenshotsHooked");

final _addVRScreenshotToLibrary = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamScreenshots>,
  Int32,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    ScreenshotHandle Function(
  Pointer<SteamScreenshots>,
  EVrScreenshotType,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary");

extension SteamScreenshotsExtensions on Pointer<SteamScreenshots> {
  ScreenshotHandle writeScreenshot(
    Pointer<Void> pubRGB,
    int cubRGB,
    int nWidth,
    int nHeight,
  ) =>
      _writeScreenshot.call(
        this,
        pubRGB,
        cubRGB,
        nWidth,
        nHeight,
      );

  ScreenshotHandle addScreenshotToLibrary(
    Pointer<Utf8> pchFilename,
    Pointer<Utf8> pchThumbnailFilename,
    int nWidth,
    int nHeight,
  ) =>
      _addScreenshotToLibrary.call(
        this,
        pchFilename,
        pchThumbnailFilename,
        nWidth,
        nHeight,
      );

  void triggerScreenshot() => _triggerScreenshot.call(
        this,
      );

  void hookScreenshots(
    bool bHook,
  ) =>
      _hookScreenshots.call(
        this,
        bHook,
      );

  bool setLocation(
    ScreenshotHandle hScreenshot,
    Pointer<Utf8> pchLocation,
  ) =>
      _setLocation.call(
        this,
        hScreenshot,
        pchLocation,
      );

  bool tagUser(
    ScreenshotHandle hScreenshot,
    CSteamId steamID,
  ) =>
      _tagUser.call(
        this,
        hScreenshot,
        steamID,
      );

  bool tagPublishedFile(
    ScreenshotHandle hScreenshot,
    PublishedFileId unPublishedFileID,
  ) =>
      _tagPublishedFile.call(
        this,
        hScreenshot,
        unPublishedFileID,
      );

  bool isScreenshotsHooked() => _isScreenshotsHooked.call(
        this,
      );

  ScreenshotHandle addVRScreenshotToLibrary(
    EVrScreenshotType eType,
    Pointer<Utf8> pchFilename,
    Pointer<Utf8> pchVRFilename,
  ) =>
      _addVRScreenshotToLibrary.call(
        this,
        eType,
        pchFilename,
        pchVRFilename,
      );
}
