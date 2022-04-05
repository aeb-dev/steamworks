// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/ehttp_method.dart";
import "../typedefs.dart";

final _steamHttp = dl.lookupFunction<Pointer<ISteamHttp> Function(),
    Pointer<ISteamHttp> Function()>("SteamAPI_SteamHTTP_v003");

final _steamGameServerHttp = dl.lookupFunction<Pointer<ISteamHttp> Function(),
    Pointer<ISteamHttp> Function()>("SteamAPI_SteamGameServerHTTP_v003");

class ISteamHttp extends Opaque {
  static Pointer<ISteamHttp> get userInstance => _steamHttp();

  static Pointer<ISteamHttp> get serverInstance => _steamGameServerHttp();
}

final _createHttpRequest = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamHttp>,
  Int32,
  Pointer<Utf8>,
),
    HttpRequestHandle Function(
  Pointer<ISteamHttp>,
  EHttpMethod,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_CreateHTTPRequest");

final _setHttpRequestContextValue = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestContextValue");

final _setHttpRequestNetworkActivityTimeout = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout");

final _setHttpRequestHeaderValue = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue");

final _setHttpRequestGetOrPostParameter = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter");

final _sendHttpRequest = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamHTTP_SendHTTPRequest");

final _sendHttpRequestAndStreamResponse = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse");

final _deferHttpRequest = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
)>("SteamAPI_ISteamHTTP_DeferHTTPRequest");

final _prioritizeHttpRequest = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
)>("SteamAPI_ISteamHTTP_PrioritizeHTTPRequest");

final _getHttpResponseHeaderSize = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize");

final _getHttpResponseHeaderValue = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue");

final _getHttpResponseBodySize = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseBodySize");

final _getHttpResponseBodyData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_GetHTTPResponseBodyData");

final _getHttpStreamingResponseBodyData = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  UnsignedInt,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  int,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData");

final _releaseHttpRequest = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
)>("SteamAPI_ISteamHTTP_ReleaseHTTPRequest");

final _getHttpDownloadProgressPct = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Float>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Float>,
)>("SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct");

final _setHttpRequestRawPostBody = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
  Pointer<UnsignedChar>,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody");

final _createCookieContainer = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamHttp>,
  Bool,
),
    HttpCookieContainerHandle Function(
  Pointer<ISteamHttp>,
  bool,
)>("SteamAPI_ISteamHTTP_CreateCookieContainer");

final _releaseCookieContainer = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpCookieContainerHandle,
)>("SteamAPI_ISteamHTTP_ReleaseCookieContainer");

final _setCookie = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpCookieContainerHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetCookie");

final _setHttpRequestCookieContainer = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  HttpCookieContainerHandle,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer");

final _setHttpRequestUserAgentInfo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo");

final _setHttpRequestRequiresVerifiedCertificate = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  bool,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate");

final _setHttpRequestAbsoluteTimeoutMS = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  int,
)>("SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS");

final _getHttpRequestWasTimedOut = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamHttp>,
  UnsignedInt,
  Pointer<Bool>,
),
    bool Function(
  Pointer<ISteamHttp>,
  HttpRequestHandle,
  Pointer<Bool>,
)>("SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut");

extension ISteamHttpExtensions on Pointer<ISteamHttp> {
  HttpRequestHandle createHttpRequest(
    EHttpMethod httpRequestMethod,
    Pointer<Utf8> absoluteUrl,
  ) =>
      _createHttpRequest.call(
        this,
        httpRequestMethod,
        absoluteUrl,
      );

  bool setHttpRequestContextValue(
    HttpRequestHandle hRequest,
    int ulContextValue,
  ) =>
      _setHttpRequestContextValue.call(
        this,
        hRequest,
        ulContextValue,
      );

  bool setHttpRequestNetworkActivityTimeout(
    HttpRequestHandle hRequest,
    int timeoutSeconds,
  ) =>
      _setHttpRequestNetworkActivityTimeout.call(
        this,
        hRequest,
        timeoutSeconds,
      );

  bool setHttpRequestHeaderValue(
    HttpRequestHandle hRequest,
    Pointer<Utf8> headerName,
    Pointer<Utf8> headerValue,
  ) =>
      _setHttpRequestHeaderValue.call(
        this,
        hRequest,
        headerName,
        headerValue,
      );

  bool setHttpRequestGetOrPostParameter(
    HttpRequestHandle hRequest,
    Pointer<Utf8> paramName,
    Pointer<Utf8> paramValue,
  ) =>
      _setHttpRequestGetOrPostParameter.call(
        this,
        hRequest,
        paramName,
        paramValue,
      );

  bool sendHttpRequest(
    HttpRequestHandle hRequest,
    Pointer<UnsignedLongLong> pCallHandle,
  ) =>
      _sendHttpRequest.call(
        this,
        hRequest,
        pCallHandle,
      );

  bool sendHttpRequestAndStreamResponse(
    HttpRequestHandle hRequest,
    Pointer<UnsignedLongLong> pCallHandle,
  ) =>
      _sendHttpRequestAndStreamResponse.call(
        this,
        hRequest,
        pCallHandle,
      );

  bool deferHttpRequest(
    HttpRequestHandle hRequest,
  ) =>
      _deferHttpRequest.call(
        this,
        hRequest,
      );

  bool prioritizeHttpRequest(
    HttpRequestHandle hRequest,
  ) =>
      _prioritizeHttpRequest.call(
        this,
        hRequest,
      );

  bool getHttpResponseHeaderSize(
    HttpRequestHandle hRequest,
    Pointer<Utf8> headerName,
    Pointer<UnsignedInt> responseHeaderSize,
  ) =>
      _getHttpResponseHeaderSize.call(
        this,
        hRequest,
        headerName,
        responseHeaderSize,
      );

  bool getHttpResponseHeaderValue(
    HttpRequestHandle hRequest,
    Pointer<Utf8> headerName,
    Pointer<UnsignedChar> pHeaderValueBuffer,
    int bufferSize,
  ) =>
      _getHttpResponseHeaderValue.call(
        this,
        hRequest,
        headerName,
        pHeaderValueBuffer,
        bufferSize,
      );

  bool getHttpResponseBodySize(
    HttpRequestHandle hRequest,
    Pointer<UnsignedInt> bodySize,
  ) =>
      _getHttpResponseBodySize.call(
        this,
        hRequest,
        bodySize,
      );

  bool getHttpResponseBodyData(
    HttpRequestHandle hRequest,
    Pointer<UnsignedChar> pBodyDataBuffer,
    int bufferSize,
  ) =>
      _getHttpResponseBodyData.call(
        this,
        hRequest,
        pBodyDataBuffer,
        bufferSize,
      );

  bool getHttpStreamingResponseBodyData(
    HttpRequestHandle hRequest,
    int cOffset,
    Pointer<UnsignedChar> pBodyDataBuffer,
    int bufferSize,
  ) =>
      _getHttpStreamingResponseBodyData.call(
        this,
        hRequest,
        cOffset,
        pBodyDataBuffer,
        bufferSize,
      );

  bool releaseHttpRequest(
    HttpRequestHandle hRequest,
  ) =>
      _releaseHttpRequest.call(
        this,
        hRequest,
      );

  bool getHttpDownloadProgressPct(
    HttpRequestHandle hRequest,
    Pointer<Float> percentOut,
  ) =>
      _getHttpDownloadProgressPct.call(
        this,
        hRequest,
        percentOut,
      );

  bool setHttpRequestRawPostBody(
    HttpRequestHandle hRequest,
    Pointer<Utf8> contentType,
    Pointer<UnsignedChar> pubBody,
    int bodyLen,
  ) =>
      _setHttpRequestRawPostBody.call(
        this,
        hRequest,
        contentType,
        pubBody,
        bodyLen,
      );

  HttpCookieContainerHandle createCookieContainer(
    bool allowResponsesToModify,
  ) =>
      _createCookieContainer.call(
        this,
        allowResponsesToModify,
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
    Pointer<Utf8> host,
    Pointer<Utf8> url,
    Pointer<Utf8> cookie,
  ) =>
      _setCookie.call(
        this,
        hCookieContainer,
        host,
        url,
        cookie,
      );

  bool setHttpRequestCookieContainer(
    HttpRequestHandle hRequest,
    HttpCookieContainerHandle hCookieContainer,
  ) =>
      _setHttpRequestCookieContainer.call(
        this,
        hRequest,
        hCookieContainer,
      );

  bool setHttpRequestUserAgentInfo(
    HttpRequestHandle hRequest,
    Pointer<Utf8> userAgentInfo,
  ) =>
      _setHttpRequestUserAgentInfo.call(
        this,
        hRequest,
        userAgentInfo,
      );

  bool setHttpRequestRequiresVerifiedCertificate(
    HttpRequestHandle hRequest,
    bool requireVerifiedCertificate,
  ) =>
      _setHttpRequestRequiresVerifiedCertificate.call(
        this,
        hRequest,
        requireVerifiedCertificate,
      );

  bool setHttpRequestAbsoluteTimeoutMS(
    HttpRequestHandle hRequest,
    int milliseconds,
  ) =>
      _setHttpRequestAbsoluteTimeoutMS.call(
        this,
        hRequest,
        milliseconds,
      );

  bool getHttpRequestWasTimedOut(
    HttpRequestHandle hRequest,
    Pointer<Bool> pbWasTimedOut,
  ) =>
      _getHttpRequestWasTimedOut.call(
        this,
        hRequest,
        pbWasTimedOut,
      );
}
