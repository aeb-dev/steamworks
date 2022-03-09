import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";
import "../enums/e_html_mouse_button.dart";
import "../enums/e_html_key_modifiers.dart";

class SteamHtmlSurface extends Opaque {
  static Pointer<SteamHtmlSurface> steamHtmlSurface() => nullptr;
}

final _init = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHtmlSurface>,
),
    bool Function(
  Pointer<SteamHtmlSurface>,
)>("SteamAPI_ISteamHTMLSurface_Init");

final _shutdown = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHtmlSurface>,
),
    bool Function(
  Pointer<SteamHtmlSurface>,
)>("SteamAPI_ISteamHTMLSurface_Shutdown");

final _createBrowser = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_CreateBrowser");

final _removeBrowser = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_RemoveBrowser");

final _loadURL = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_LoadURL");

final _setSize = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetSize");

final _stopLoad = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_StopLoad");

final _reload = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_Reload");

final _goBack = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_GoBack");

final _goForward = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_GoForward");

final _addHeader = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_AddHeader");

final _executeJavascript = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTMLSurface_ExecuteJavascript");

final _mouseUp = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  EHtmlMouseButton,
)>("SteamAPI_ISteamHTMLSurface_MouseUp");

final _mouseDown = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  EHtmlMouseButton,
)>("SteamAPI_ISteamHTMLSurface_MouseDown");

final _mouseDoubleClick = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  EHtmlMouseButton,
)>("SteamAPI_ISteamHTMLSurface_MouseDoubleClick");

final _mouseMove = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Int,
  Int,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_MouseMove");

final _mouseWheel = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Int,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
)>("SteamAPI_ISteamHTMLSurface_MouseWheel");

final _keyDown = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  Int32,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
  EHtmlKeyModifiers,
  bool,
)>("SteamAPI_ISteamHTMLSurface_KeyDown");

final _keyUp = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
  EHtmlKeyModifiers,
)>("SteamAPI_ISteamHTMLSurface_KeyUp");

final _keyChar = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
  Int32,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
  EHtmlKeyModifiers,
)>("SteamAPI_ISteamHTMLSurface_KeyChar");

final _setHorizontalScroll = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetHorizontalScroll");

final _setVerticalScroll = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetVerticalScroll");

final _setKeyFocus = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_SetKeyFocus");

final _viewSource = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_ViewSource");

final _copyToClipboard = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_CopyToClipboard");

final _pasteFromClipboard = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_PasteFromClipboard");

final _find = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Pointer<Utf8>,
  Bool,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Utf8>,
  bool,
  bool,
)>("SteamAPI_ISteamHTMLSurface_Find");

final _stopFind = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_StopFind");

final _getLinkAtPosition = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Int,
  Int,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_GetLinkAtPosition");

final _setCookie = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
  Bool,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
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
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Float,
  Int,
  Int,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  double,
  int,
  int,
)>("SteamAPI_ISteamHTMLSurface_SetPageScaleFactor");

final _setBackgroundMode = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_SetBackgroundMode");

final _setDPIScalingFactor = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Float,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  double,
)>("SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor");

final _openDeveloperTools = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
)>("SteamAPI_ISteamHTMLSurface_OpenDeveloperTools");

final _allowStartRequest = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_AllowStartRequest");

final _jSDialogResponse = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Bool,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  bool,
)>("SteamAPI_ISteamHTMLSurface_JSDialogResponse");

final _fileLoadDialogResponse = dl.lookupFunction<
    Void Function(
  Pointer<SteamHtmlSurface>,
  UnsignedInt,
  Pointer<Pointer<Utf8>>,
),
    void Function(
  Pointer<SteamHtmlSurface>,
  HHtmlBrowser,
  Pointer<Pointer<Utf8>>,
)>("SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse");

extension SteamHtmlSurfaceExtensions on Pointer<SteamHtmlSurface> {
  bool init() => _init.call(
        this,
      );

  bool shutdown() => _shutdown.call(
        this,
      );

  SteamApiCall createBrowser(
    Pointer<Utf8> pchUserAgent,
    Pointer<Utf8> pchUserCSS,
  ) =>
      _createBrowser.call(
        this,
        pchUserAgent,
        pchUserCSS,
      );

  void removeBrowser(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _removeBrowser.call(
        this,
        unBrowserHandle,
      );

  void loadURL(
    HHtmlBrowser unBrowserHandle,
    Pointer<Utf8> pchURL,
    Pointer<Utf8> pchPostData,
  ) =>
      _loadURL.call(
        this,
        unBrowserHandle,
        pchURL,
        pchPostData,
      );

  void setSize(
    HHtmlBrowser unBrowserHandle,
    int unWidth,
    int unHeight,
  ) =>
      _setSize.call(
        this,
        unBrowserHandle,
        unWidth,
        unHeight,
      );

  void stopLoad(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _stopLoad.call(
        this,
        unBrowserHandle,
      );

  void reload(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _reload.call(
        this,
        unBrowserHandle,
      );

  void goBack(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _goBack.call(
        this,
        unBrowserHandle,
      );

  void goForward(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _goForward.call(
        this,
        unBrowserHandle,
      );

  void addHeader(
    HHtmlBrowser unBrowserHandle,
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
  ) =>
      _addHeader.call(
        this,
        unBrowserHandle,
        pchKey,
        pchValue,
      );

  void executeJavascript(
    HHtmlBrowser unBrowserHandle,
    Pointer<Utf8> pchScript,
  ) =>
      _executeJavascript.call(
        this,
        unBrowserHandle,
        pchScript,
      );

  void mouseUp(
    HHtmlBrowser unBrowserHandle,
    EHtmlMouseButton eMouseButton,
  ) =>
      _mouseUp.call(
        this,
        unBrowserHandle,
        eMouseButton,
      );

  void mouseDown(
    HHtmlBrowser unBrowserHandle,
    EHtmlMouseButton eMouseButton,
  ) =>
      _mouseDown.call(
        this,
        unBrowserHandle,
        eMouseButton,
      );

  void mouseDoubleClick(
    HHtmlBrowser unBrowserHandle,
    EHtmlMouseButton eMouseButton,
  ) =>
      _mouseDoubleClick.call(
        this,
        unBrowserHandle,
        eMouseButton,
      );

  void mouseMove(
    HHtmlBrowser unBrowserHandle,
    int x,
    int y,
  ) =>
      _mouseMove.call(
        this,
        unBrowserHandle,
        x,
        y,
      );

  void mouseWheel(
    HHtmlBrowser unBrowserHandle,
    int nDelta,
  ) =>
      _mouseWheel.call(
        this,
        unBrowserHandle,
        nDelta,
      );

  void keyDown(
    HHtmlBrowser unBrowserHandle,
    int nNativeKeyCode,
    EHtmlKeyModifiers eHTMLKeyModifiers,
    bool bIsSystemKey,
  ) =>
      _keyDown.call(
        this,
        unBrowserHandle,
        nNativeKeyCode,
        eHTMLKeyModifiers,
        bIsSystemKey,
      );

  void keyUp(
    HHtmlBrowser unBrowserHandle,
    int nNativeKeyCode,
    EHtmlKeyModifiers eHTMLKeyModifiers,
  ) =>
      _keyUp.call(
        this,
        unBrowserHandle,
        nNativeKeyCode,
        eHTMLKeyModifiers,
      );

  void keyChar(
    HHtmlBrowser unBrowserHandle,
    int cUnicodeChar,
    EHtmlKeyModifiers eHTMLKeyModifiers,
  ) =>
      _keyChar.call(
        this,
        unBrowserHandle,
        cUnicodeChar,
        eHTMLKeyModifiers,
      );

  void setHorizontalScroll(
    HHtmlBrowser unBrowserHandle,
    int nAbsolutePixelScroll,
  ) =>
      _setHorizontalScroll.call(
        this,
        unBrowserHandle,
        nAbsolutePixelScroll,
      );

  void setVerticalScroll(
    HHtmlBrowser unBrowserHandle,
    int nAbsolutePixelScroll,
  ) =>
      _setVerticalScroll.call(
        this,
        unBrowserHandle,
        nAbsolutePixelScroll,
      );

  void setKeyFocus(
    HHtmlBrowser unBrowserHandle,
    bool bHasKeyFocus,
  ) =>
      _setKeyFocus.call(
        this,
        unBrowserHandle,
        bHasKeyFocus,
      );

  void viewSource(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _viewSource.call(
        this,
        unBrowserHandle,
      );

  void copyToClipboard(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _copyToClipboard.call(
        this,
        unBrowserHandle,
      );

  void pasteFromClipboard(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _pasteFromClipboard.call(
        this,
        unBrowserHandle,
      );

  void find(
    HHtmlBrowser unBrowserHandle,
    Pointer<Utf8> pchSearchStr,
    bool bCurrentlyInFind,
    bool bReverse,
  ) =>
      _find.call(
        this,
        unBrowserHandle,
        pchSearchStr,
        bCurrentlyInFind,
        bReverse,
      );

  void stopFind(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _stopFind.call(
        this,
        unBrowserHandle,
      );

  void getLinkAtPosition(
    HHtmlBrowser unBrowserHandle,
    int x,
    int y,
  ) =>
      _getLinkAtPosition.call(
        this,
        unBrowserHandle,
        x,
        y,
      );

  void setCookie(
    Pointer<Utf8> pchHostname,
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
    Pointer<Utf8> pchPath,
    RTime32 nExpires,
    bool bSecure,
    bool bHTTPOnly,
  ) =>
      _setCookie.call(
        this,
        pchHostname,
        pchKey,
        pchValue,
        pchPath,
        nExpires,
        bSecure,
        bHTTPOnly,
      );

  void setPageScaleFactor(
    HHtmlBrowser unBrowserHandle,
    double flZoom,
    int nPointX,
    int nPointY,
  ) =>
      _setPageScaleFactor.call(
        this,
        unBrowserHandle,
        flZoom,
        nPointX,
        nPointY,
      );

  void setBackgroundMode(
    HHtmlBrowser unBrowserHandle,
    bool bBackgroundMode,
  ) =>
      _setBackgroundMode.call(
        this,
        unBrowserHandle,
        bBackgroundMode,
      );

  void setDPIScalingFactor(
    HHtmlBrowser unBrowserHandle,
    double flDPIScaling,
  ) =>
      _setDPIScalingFactor.call(
        this,
        unBrowserHandle,
        flDPIScaling,
      );

  void openDeveloperTools(
    HHtmlBrowser unBrowserHandle,
  ) =>
      _openDeveloperTools.call(
        this,
        unBrowserHandle,
      );

  void allowStartRequest(
    HHtmlBrowser unBrowserHandle,
    bool bAllowed,
  ) =>
      _allowStartRequest.call(
        this,
        unBrowserHandle,
        bAllowed,
      );

  void jSDialogResponse(
    HHtmlBrowser unBrowserHandle,
    bool bResult,
  ) =>
      _jSDialogResponse.call(
        this,
        unBrowserHandle,
        bResult,
      );

  void fileLoadDialogResponse(
    HHtmlBrowser unBrowserHandle,
    Pointer<Pointer<Utf8>> pchSelectedFiles,
  ) =>
      _fileLoadDialogResponse.call(
        this,
        unBrowserHandle,
        pchSelectedFiles,
      );
}
