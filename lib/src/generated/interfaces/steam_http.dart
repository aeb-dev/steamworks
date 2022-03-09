import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_http_method.dart";
import "../steam_api.dart";
import "../typedefs.dart";

class SteamHttp extends Opaque {
  static Pointer<SteamHttp> steamHttp() => nullptr;
  static Pointer<SteamHttp> steamGameServerHttp() => nullptr;
}

final _createHTTPRequest = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamHttp>,
  Int32,
  Pointer<Utf8>,
),
    HttpRequestHandle Function(
  Pointer<SteamHttp>,
  EHttpMethod,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_CreateHTTPRequest");

final _setHTTPRequestContextValue = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestContextValue");

final _setHTTPRequestNetworkActivityTimeout = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout");

final _setHTTPRequestHeaderValue = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue");

final _setHTTPRequestGetOrPostParameter = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter");

final _sendHTTPRequest = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamHTTP_SendHTTPRequest");

final _sendHTTPRequestAndStreamResponse = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse");

final _deferHTTPRequest = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
)>("SteamAPI_ISteamHTTP_DeferHTTPRequest");

final _prioritizeHTTPRequest = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
)>("SteamAPI_ISteamHTTP_PrioritizeHTTPRequest");

final _getHTTPResponseHeaderSize = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize");

final _getHTTPResponseHeaderValue = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue");

final _getHTTPResponseBodySize = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseBodySize");

final _getHTTPResponseBodyData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseBodyData");

final _getHTTPStreamingResponseBodyData = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  UnsignedInt,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  int,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData");

final _releaseHTTPRequest = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
)>("SteamAPI_ISteamHTTP_ReleaseHTTPRequest");

final _getHTTPDownloadProgressPct = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Float>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Float>,
)>("SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct");

final _setHTTPRequestRawPostBody = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody");

final _createCookieContainer = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamHttp>,
  Bool,
),
    HttpCookieContainerHandle Function(
  Pointer<SteamHttp>,
  bool,
)>("SteamAPI_ISteamHTTP_CreateCookieContainer");

final _releaseCookieContainer = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpCookieContainerHandle,
)>("SteamAPI_ISteamHTTP_ReleaseCookieContainer");

final _setCookie = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpCookieContainerHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetCookie");

final _setHTTPRequestCookieContainer = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  HttpCookieContainerHandle,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer");

final _setHTTPRequestUserAgentInfo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo");

final _setHTTPRequestRequiresVerifiedCertificate = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  bool,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate");

final _setHTTPRequestAbsoluteTimeoutMS = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS");

final _getHTTPRequestWasTimedOut = dl.lookupFunction<
    Bool Function(
  Pointer<SteamHttp>,
  UnsignedInt,
  Pointer<Bool>,
),
    bool Function(
  Pointer<SteamHttp>,
  HttpRequestHandle,
  Pointer<Bool>,
)>("SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut");

extension SteamHttpExtensions on Pointer<SteamHttp> {
  HttpRequestHandle createHTTPRequest(
    EHttpMethod eHTTPRequestMethod,
    Pointer<Utf8> pchAbsoluteURL,
  ) =>
      _createHTTPRequest.call(
        this,
        eHTTPRequestMethod,
        pchAbsoluteURL,
      );

  bool setHTTPRequestContextValue(
    HttpRequestHandle hRequest,
    int ulContextValue,
  ) =>
      _setHTTPRequestContextValue.call(
        this,
        hRequest,
        ulContextValue,
      );

  bool setHTTPRequestNetworkActivityTimeout(
    HttpRequestHandle hRequest,
    int unTimeoutSeconds,
  ) =>
      _setHTTPRequestNetworkActivityTimeout.call(
        this,
        hRequest,
        unTimeoutSeconds,
      );

  bool setHTTPRequestHeaderValue(
    HttpRequestHandle hRequest,
    Pointer<Utf8> pchHeaderName,
    Pointer<Utf8> pchHeaderValue,
  ) =>
      _setHTTPRequestHeaderValue.call(
        this,
        hRequest,
        pchHeaderName,
        pchHeaderValue,
      );

  bool setHTTPRequestGetOrPostParameter(
    HttpRequestHandle hRequest,
    Pointer<Utf8> pchParamName,
    Pointer<Utf8> pchParamValue,
  ) =>
      _setHTTPRequestGetOrPostParameter.call(
        this,
        hRequest,
        pchParamName,
        pchParamValue,
      );

  bool sendHTTPRequest(
    HttpRequestHandle hRequest,
    Pointer<UnsignedLongLong> pCallHandle,
  ) =>
      _sendHTTPRequest.call(
        this,
        hRequest,
        pCallHandle,
      );

  bool sendHTTPRequestAndStreamResponse(
    HttpRequestHandle hRequest,
    Pointer<UnsignedLongLong> pCallHandle,
  ) =>
      _sendHTTPRequestAndStreamResponse.call(
        this,
        hRequest,
        pCallHandle,
      );

  bool deferHTTPRequest(
    HttpRequestHandle hRequest,
  ) =>
      _deferHTTPRequest.call(
        this,
        hRequest,
      );

  bool prioritizeHTTPRequest(
    HttpRequestHandle hRequest,
  ) =>
      _prioritizeHTTPRequest.call(
        this,
        hRequest,
      );

  bool getHTTPResponseHeaderSize(
    HttpRequestHandle hRequest,
    Pointer<Utf8> pchHeaderName,
    Pointer<UnsignedInt> unResponseHeaderSize,
  ) =>
      _getHTTPResponseHeaderSize.call(
        this,
        hRequest,
        pchHeaderName,
        unResponseHeaderSize,
      );

  bool getHTTPResponseHeaderValue(
    HttpRequestHandle hRequest,
    Pointer<Utf8> pchHeaderName,
    Pointer<UnsignedChar> pHeaderValueBuffer,
    int unBufferSize,
  ) =>
      _getHTTPResponseHeaderValue.call(
        this,
        hRequest,
        pchHeaderName,
        pHeaderValueBuffer,
        unBufferSize,
      );

  bool getHTTPResponseBodySize(
    HttpRequestHandle hRequest,
    Pointer<UnsignedInt> unBodySize,
  ) =>
      _getHTTPResponseBodySize.call(
        this,
        hRequest,
        unBodySize,
      );

  bool getHTTPResponseBodyData(
    HttpRequestHandle hRequest,
    Pointer<UnsignedChar> pBodyDataBuffer,
    int unBufferSize,
  ) =>
      _getHTTPResponseBodyData.call(
        this,
        hRequest,
        pBodyDataBuffer,
        unBufferSize,
      );

  bool getHTTPStreamingResponseBodyData(
    HttpRequestHandle hRequest,
    int cOffset,
    Pointer<UnsignedChar> pBodyDataBuffer,
    int unBufferSize,
  ) =>
      _getHTTPStreamingResponseBodyData.call(
        this,
        hRequest,
        cOffset,
        pBodyDataBuffer,
        unBufferSize,
      );

  bool releaseHTTPRequest(
    HttpRequestHandle hRequest,
  ) =>
      _releaseHTTPRequest.call(
        this,
        hRequest,
      );

  bool getHTTPDownloadProgressPct(
    HttpRequestHandle hRequest,
    Pointer<Float> pflPercentOut,
  ) =>
      _getHTTPDownloadProgressPct.call(
        this,
        hRequest,
        pflPercentOut,
      );

  bool setHTTPRequestRawPostBody(
    HttpRequestHandle hRequest,
    Pointer<Utf8> pchContentType,
    Pointer<UnsignedChar> pubBody,
    int unBodyLen,
  ) =>
      _setHTTPRequestRawPostBody.call(
        this,
        hRequest,
        pchContentType,
        pubBody,
        unBodyLen,
      );

  HttpCookieContainerHandle createCookieContainer(
    bool bAllowResponsesToModify,
  ) =>
      _createCookieContainer.call(
        this,
        bAllowResponsesToModify,
      );

  bool releaseCookieContainer(
    HttpCookieContainerHandle hCookieContainer,
  ) =>
      _releaseCookieContainer.call(
        this,
        hCookieContainer,
      );

  bool setCookie(
    HttpCookieContainerHandle hCookieContainer,
    Pointer<Utf8> pchHost,
    Pointer<Utf8> pchUrl,
    Pointer<Utf8> pchCookie,
  ) =>
      _setCookie.call(
        this,
        hCookieContainer,
        pchHost,
        pchUrl,
        pchCookie,
      );

  bool setHTTPRequestCookieContainer(
    HttpRequestHandle hRequest,
    HttpCookieContainerHandle hCookieContainer,
  ) =>
      _setHTTPRequestCookieContainer.call(
        this,
        hRequest,
        hCookieContainer,
      );

  bool setHTTPRequestUserAgentInfo(
    HttpRequestHandle hRequest,
    Pointer<Utf8> pchUserAgentInfo,
  ) =>
      _setHTTPRequestUserAgentInfo.call(
        this,
        hRequest,
        pchUserAgentInfo,
      );

  bool setHTTPRequestRequiresVerifiedCertificate(
    HttpRequestHandle hRequest,
    bool bRequireVerifiedCertificate,
  ) =>
      _setHTTPRequestRequiresVerifiedCertificate.call(
        this,
        hRequest,
        bRequireVerifiedCertificate,
      );

  bool setHTTPRequestAbsoluteTimeoutMS(
    HttpRequestHandle hRequest,
    int unMilliseconds,
  ) =>
      _setHTTPRequestAbsoluteTimeoutMS.call(
        this,
        hRequest,
        unMilliseconds,
      );

  bool getHTTPRequestWasTimedOut(
    HttpRequestHandle hRequest,
    Pointer<Bool> pbWasTimedOut,
  ) =>
      _getHTTPRequestWasTimedOut.call(
        this,
        hRequest,
        pbWasTimedOut,
      );
}
