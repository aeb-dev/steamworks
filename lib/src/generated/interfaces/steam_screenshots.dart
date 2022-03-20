import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/e_vr_screenshot_type.dart";
import "../typedefs.dart";

final _steamScreenshots = dl.lookupFunction<
    Pointer<SteamScreenshots> Function(),
    Pointer<SteamScreenshots> Function()>("SteamAPI_SteamScreenshots_v003");

class SteamScreenshots extends Opaque {
  static Pointer<SteamScreenshots> get userInstance => _steamScreenshots();
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

final _addVrScreenshotToLibrary = dl.lookupFunction<
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
    Pointer<Utf8> filename,
    Pointer<Utf8> thumbnailFilename,
    int nWidth,
    int nHeight,
  ) =>
      _addScreenshotToLibrary.call(
        this,
        filename,
        thumbnailFilename,
        nWidth,
        nHeight,
      );

  void triggerScreenshot() => _triggerScreenshot.call(
        this,
      );

  void hookScreenshots(
    bool hook,
  ) =>
      _hookScreenshots.call(
        this,
        hook,
      );

  bool setLocation(
    ScreenshotHandle hScreenshot,
    Pointer<Utf8> location,
  ) =>
      _setLocation.call(
        this,
        hScreenshot,
        location,
      );

  bool tagUser(
    ScreenshotHandle hScreenshot,
    CSteamId steamId,
  ) =>
      _tagUser.call(
        this,
        hScreenshot,
        steamId,
      );

  bool tagPublishedFile(
    ScreenshotHandle hScreenshot,
    PublishedFileId publishedFileId,
  ) =>
      _tagPublishedFile.call(
        this,
        hScreenshot,
        publishedFileId,
      );

  bool isScreenshotsHooked() => _isScreenshotsHooked.call(
        this,
      );

  ScreenshotHandle addVrScreenshotToLibrary(
    EVrScreenshotType type,
    Pointer<Utf8> filename,
    Pointer<Utf8> vrFilename,
  ) =>
      _addVrScreenshotToLibrary.call(
        this,
        type,
        filename,
        vrFilename,
      );
}
