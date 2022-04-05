// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/evr_screenshot_type.dart";
import "../typedefs.dart";

final _steamScreenshots = dl.lookupFunction<
    Pointer<ISteamScreenshots> Function(),
    Pointer<ISteamScreenshots> Function()>("SteamAPI_SteamScreenshots_v003");

class ISteamScreenshots extends Opaque {
  static Pointer<ISteamScreenshots> get userInstance => _steamScreenshots();
}

final _writeScreenshot = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamScreenshots>,
  Pointer<Void>,
  UnsignedInt,
  Int,
  Int,
),
    ScreenshotHandle Function(
  Pointer<ISteamScreenshots>,
  Pointer<Void>,
  int,
  int,
  int,
)>("SteamAPI_ISteamScreenshots_WriteScreenshot");

final _addScreenshotToLibrary = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamScreenshots>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Int,
  Int,
),
    ScreenshotHandle Function(
  Pointer<ISteamScreenshots>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
  int,
)>("SteamAPI_ISteamScreenshots_AddScreenshotToLibrary");

final _triggerScreenshot = dl.lookupFunction<
    Void Function(
  Pointer<ISteamScreenshots>,
),
    void Function(
  Pointer<ISteamScreenshots>,
)>("SteamAPI_ISteamScreenshots_TriggerScreenshot");

final _hookScreenshots = dl.lookupFunction<
    Void Function(
  Pointer<ISteamScreenshots>,
  Bool,
),
    void Function(
  Pointer<ISteamScreenshots>,
  bool,
)>("SteamAPI_ISteamScreenshots_HookScreenshots");

final _setLocation = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamScreenshots>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamScreenshots>,
  ScreenshotHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamScreenshots_SetLocation");

final _tagUser = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamScreenshots>,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamScreenshots>,
  ScreenshotHandle,
  CSteamId,
)>("SteamAPI_ISteamScreenshots_TagUser");

final _tagPublishedFile = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamScreenshots>,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamScreenshots>,
  ScreenshotHandle,
  PublishedFileId,
)>("SteamAPI_ISteamScreenshots_TagPublishedFile");

final _isScreenshotsHooked = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamScreenshots>,
),
    bool Function(
  Pointer<ISteamScreenshots>,
)>("SteamAPI_ISteamScreenshots_IsScreenshotsHooked");

final _addVrScreenshotToLibrary = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamScreenshots>,
  Int32,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    ScreenshotHandle Function(
  Pointer<ISteamScreenshots>,
  EVrScreenshotType,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary");

extension ISteamScreenshotsExtensions on Pointer<ISteamScreenshots> {
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
