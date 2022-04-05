// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/ehtml_key_modifiers.dart";
import "../enums/ehtml_mouse_button.dart";
import "../typedefs.dart";

final _steamHtmlSurface = dl.lookupFunction<
    Pointer<ISteamHtmlSurface> Function(),
    Pointer<ISteamHtmlSurface> Function()>("SteamAPI_SteamHTMLSurface_v005");

class ISteamHtmlSurface extends Opaque {
  static Pointer<ISteamHtmlSurface> get userInstance => _steamHtmlSurface();
}

final _init = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHtmlSurface>,
),
    bool Function(
  Pointer<ISteamHtmlSurface>,
)>("SteamAPI_ISteamHTMLSurface_Init");

final _shutdown = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHtmlSurface>,
),
    bool Function(
  Pointer<ISteamHtmlSurface>,
)>("SteamAPI_ISteamHTMLSurface_Shutdown");

final _createBrowser = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_CreateBrowser");

final _removeBrowser = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_RemoveBrowser");

final _loadUrl = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_LoadURL");

final _setSize = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetSize");

final _stopLoad = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_StopLoad");

final _reload = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_Reload");

final _goBack = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_GoBack");

final _goForward = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_GoForward");

final _addHeader = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_AddHeader");

final _executeJavascript = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_ExecuteJavascript");

final _mouseUp = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  EHtmlMouseButton,
)>("SteamAPI_ISteamHTMLSurface_MouseUp");

final _mouseDown = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  EHtmlMouseButton,
)>("SteamAPI_ISteamHTMLSurface_MouseDown");

final _mouseDoubleClick = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  EHtmlMouseButton,
)>("SteamAPI_ISteamHTMLSurface_MouseDoubleClick");

final _mouseMove = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Int,
  Int,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_MouseMove");

final _mouseWheel = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Int,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
)>("SteamAPI_ISteamHTMLSurface_MouseWheel");

final _keyDown = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  Int32,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
  EHtmlKeyModifiers,
  bool,
)>("SteamAPI_ISteamHTMLSurface_KeyDown");

final _keyUp = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
  EHtmlKeyModifiers,
)>("SteamAPI_ISteamHTMLSurface_KeyUp");

final _keyChar = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
  EHtmlKeyModifiers,
)>("SteamAPI_ISteamHTMLSurface_KeyChar");

final _setHorizontalScroll = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetHorizontalScroll");

final _setVerticalScroll = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetVerticalScroll");

final _setKeyFocus = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_SetKeyFocus");

final _viewSource = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_ViewSource");

final _copyToClipboard = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_CopyToClipboard");

final _pasteFromClipboard = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_PasteFromClipboard");

final _find = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
  Bool,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
  bool,
  bool,
)>("SteamAPI_ISteamHTMLSurface_Find");

final _stopFind = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_StopFind");

final _getLinkAtPosition = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Int,
  Int,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_GetLinkAtPosition");

final _setCookie = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
  Bool,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  RTime32,
  bool,
  bool,
)>("SteamAPI_ISteamHTMLSurface_SetCookie");

final _setPageScaleFactor = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Float,
  Int,
  Int,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  double,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetPageScaleFactor");

final _setBackgroundMode = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_SetBackgroundMode");

final _setDPIScalingFactor = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Float,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  double,
)>("SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor");

final _openDeveloperTools = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_OpenDeveloperTools");

final _allowStartRequest = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_AllowStartRequest");

final _jsDialogResponse = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_JSDialogResponse");

final _fileLoadDialogResponse = dl.lookupFunction<
    Void Function(
  Pointer<ISteamHtmlSurface>,
  UnsignedInt,
  Pointer<Pointer<Utf8>>,
),
    void Function(
  Pointer<ISteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Pointer<Utf8>>,
)>("SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse");

extension ISteamHtmlSurfaceExtensions on Pointer<ISteamHtmlSurface> {
  bool init() => _init.call(
        this,
      );

  bool shutdown() => _shutdown.call(
        this,
      );

  SteamApiCall createBrowser(
    Pointer<Utf8> userAgent,
    Pointer<Utf8> userCSS,
  ) =>
      _createBrowser.call(
        this,
        userAgent,
        userCSS,
      );

  void removeBrowser(
    HHtmlBrowser browserHandle,
  ) =>
      _removeBrowser.call(
        this,
        browserHandle,
      );

  void loadUrl(
    HHtmlBrowser browserHandle,
    Pointer<Utf8> url,
    Pointer<Utf8> postData,
  ) =>
      _loadUrl.call(
        this,
        browserHandle,
        url,
        postData,
      );

  void setSize(
    HHtmlBrowser browserHandle,
    int width,
    int height,
  ) =>
      _setSize.call(
        this,
        browserHandle,
        width,
        height,
      );

  void stopLoad(
    HHtmlBrowser browserHandle,
  ) =>
      _stopLoad.call(
        this,
        browserHandle,
      );

  void reload(
    HHtmlBrowser browserHandle,
  ) =>
      _reload.call(
        this,
        browserHandle,
      );

  void goBack(
    HHtmlBrowser browserHandle,
  ) =>
      _goBack.call(
        this,
        browserHandle,
      );

  void goForward(
    HHtmlBrowser browserHandle,
  ) =>
      _goForward.call(
        this,
        browserHandle,
      );

  void addHeader(
    HHtmlBrowser browserHandle,
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      _addHeader.call(
        this,
        browserHandle,
        key,
        value,
      );

  void executeJavascript(
    HHtmlBrowser browserHandle,
    Pointer<Utf8> script,
  ) =>
      _executeJavascript.call(
        this,
        browserHandle,
        script,
      );

  void mouseUp(
    HHtmlBrowser browserHandle,
    EHtmlMouseButton mouseButton,
  ) =>
      _mouseUp.call(
        this,
        browserHandle,
        mouseButton,
      );

  void mouseDown(
    HHtmlBrowser browserHandle,
    EHtmlMouseButton mouseButton,
  ) =>
      _mouseDown.call(
        this,
        browserHandle,
        mouseButton,
      );

  void mouseDoubleClick(
    HHtmlBrowser browserHandle,
    EHtmlMouseButton mouseButton,
  ) =>
      _mouseDoubleClick.call(
        this,
        browserHandle,
        mouseButton,
      );

  void mouseMove(
    HHtmlBrowser browserHandle,
    int x,
    int y,
  ) =>
      _mouseMove.call(
        this,
        browserHandle,
        x,
        y,
      );

  void mouseWheel(
    HHtmlBrowser browserHandle,
    int nDelta,
  ) =>
      _mouseWheel.call(
        this,
        browserHandle,
        nDelta,
      );

  void keyDown(
    HHtmlBrowser browserHandle,
    int nNativeKeyCode,
    EHtmlKeyModifiers htmlKeyModifiers,
    bool isSystemKey,
  ) =>
      _keyDown.call(
        this,
        browserHandle,
        nNativeKeyCode,
        htmlKeyModifiers,
        isSystemKey,
      );

  void keyUp(
    HHtmlBrowser browserHandle,
    int nNativeKeyCode,
    EHtmlKeyModifiers htmlKeyModifiers,
  ) =>
      _keyUp.call(
        this,
        browserHandle,
        nNativeKeyCode,
        htmlKeyModifiers,
      );

  void keyChar(
    HHtmlBrowser browserHandle,
    int cUnicodeChar,
    EHtmlKeyModifiers htmlKeyModifiers,
  ) =>
      _keyChar.call(
        this,
        browserHandle,
        cUnicodeChar,
        htmlKeyModifiers,
      );

  void setHorizontalScroll(
    HHtmlBrowser browserHandle,
    int nAbsolutePixelScroll,
  ) =>
      _setHorizontalScroll.call(
        this,
        browserHandle,
        nAbsolutePixelScroll,
      );

  void setVerticalScroll(
    HHtmlBrowser browserHandle,
    int nAbsolutePixelScroll,
  ) =>
      _setVerticalScroll.call(
        this,
        browserHandle,
        nAbsolutePixelScroll,
      );

  void setKeyFocus(
    HHtmlBrowser browserHandle,
    bool hasKeyFocus,
  ) =>
      _setKeyFocus.call(
        this,
        browserHandle,
        hasKeyFocus,
      );

  void viewSource(
    HHtmlBrowser browserHandle,
  ) =>
      _viewSource.call(
        this,
        browserHandle,
      );

  void copyToClipboard(
    HHtmlBrowser browserHandle,
  ) =>
      _copyToClipboard.call(
        this,
        browserHandle,
      );

  void pasteFromClipboard(
    HHtmlBrowser browserHandle,
  ) =>
      _pasteFromClipboard.call(
        this,
        browserHandle,
      );

  void find(
    HHtmlBrowser browserHandle,
    Pointer<Utf8> searchStr,
    bool currentlyInFind,
    bool reverse,
  ) =>
      _find.call(
        this,
        browserHandle,
        searchStr,
        currentlyInFind,
        reverse,
      );

  void stopFind(
    HHtmlBrowser browserHandle,
  ) =>
      _stopFind.call(
        this,
        browserHandle,
      );

  void getLinkAtPosition(
    HHtmlBrowser browserHandle,
    int x,
    int y,
  ) =>
      _getLinkAtPosition.call(
        this,
        browserHandle,
        x,
        y,
      );

  void setCookie(
    Pointer<Utf8> hostname,
    Pointer<Utf8> key,
    Pointer<Utf8> value,
    Pointer<Utf8> path,
    RTime32 nExpires,
    bool secure,
    bool httpOnly,
  ) =>
      _setCookie.call(
        this,
        hostname,
        key,
        value,
        path,
        nExpires,
        secure,
        httpOnly,
      );

  void setPageScaleFactor(
    HHtmlBrowser browserHandle,
    double zoom,
    int nPointX,
    int nPointY,
  ) =>
      _setPageScaleFactor.call(
        this,
        browserHandle,
        zoom,
        nPointX,
        nPointY,
      );

  void setBackgroundMode(
    HHtmlBrowser browserHandle,
    bool backgroundMode,
  ) =>
      _setBackgroundMode.call(
        this,
        browserHandle,
        backgroundMode,
      );

  void setDPIScalingFactor(
    HHtmlBrowser browserHandle,
    double dPIScaling,
  ) =>
      _setDPIScalingFactor.call(
        this,
        browserHandle,
        dPIScaling,
      );

  void openDeveloperTools(
    HHtmlBrowser browserHandle,
  ) =>
      _openDeveloperTools.call(
        this,
        browserHandle,
      );

  void allowStartRequest(
    HHtmlBrowser browserHandle,
    bool allowed,
  ) =>
      _allowStartRequest.call(
        this,
        browserHandle,
        allowed,
      );

  void jsDialogResponse(
    HHtmlBrowser browserHandle,
    bool result,
  ) =>
      _jsDialogResponse.call(
        this,
        browserHandle,
        result,
      );

  void fileLoadDialogResponse(
    HHtmlBrowser browserHandle,
    Pointer<Pointer<Utf8>> selectedFiles,
  ) =>
      _fileLoadDialogResponse.call(
        this,
        browserHandle,
        selectedFiles,
      );
}
