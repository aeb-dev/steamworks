// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EHttpStatusCodeAliasDart = int;
typedef EHttpStatusCodeAliasC = Int32;

enum EHttpStatusCode {
  invalid(0),
  statusCode100Continue(100),
  statusCode101SwitchingProtocols(101),
  statusCode200OK(200),
  statusCode201Created(201),
  statusCode202Accepted(202),
  statusCode203NonAuthoritative(203),
  statusCode204NoContent(204),
  statusCode205ResetContent(205),
  statusCode206PartialContent(206),
  statusCode300MultipleChoices(300),
  statusCode301MovedPermanently(301),
  statusCode302Found(302),
  statusCode303SeeOther(303),
  statusCode304NotModified(304),
  statusCode305UseProxy(305),
  statusCode307TemporaryRedirect(307),
  statusCode400BadRequest(400),
  statusCode401Unauthorized(401),
  statusCode402PaymentRequired(402),
  statusCode403Forbidden(403),
  statusCode404NotFound(404),
  statusCode405MethodNotAllowed(405),
  statusCode406NotAcceptable(406),
  statusCode407ProxyAuthRequired(407),
  statusCode408RequestTimeout(408),
  statusCode409Conflict(409),
  statusCode410Gone(410),
  statusCode411LengthRequired(411),
  statusCode412PreconditionFailed(412),
  statusCode413RequestEntityTooLarge(413),
  statusCode414RequestURITooLong(414),
  statusCode415UnsupportedMediaType(415),
  statusCode416RequestedRangeNotSatisfiable(416),
  statusCode417ExpectationFailed(417),
  statusCode4xxUnknown(418),
  statusCode429TooManyRequests(429),
  statusCode444ConnectionClosed(444),
  statusCode500InternalServerError(500),
  statusCode501NotImplemented(501),
  statusCode502BadGateway(502),
  statusCode503ServiceUnavailable(503),
  statusCode504GatewayTimeout(504),
  statusCode505HttpVersionNotSupported(505),
  statusCode5xxUnknown(599),
  ;

  final int value;

  const EHttpStatusCode(this.value);

  factory EHttpStatusCode.fromValue(int value) {
    switch (value) {
      case 0:
        return EHttpStatusCode.invalid;
      case 100:
        return EHttpStatusCode.statusCode100Continue;
      case 101:
        return EHttpStatusCode.statusCode101SwitchingProtocols;
      case 200:
        return EHttpStatusCode.statusCode200OK;
      case 201:
        return EHttpStatusCode.statusCode201Created;
      case 202:
        return EHttpStatusCode.statusCode202Accepted;
      case 203:
        return EHttpStatusCode.statusCode203NonAuthoritative;
      case 204:
        return EHttpStatusCode.statusCode204NoContent;
      case 205:
        return EHttpStatusCode.statusCode205ResetContent;
      case 206:
        return EHttpStatusCode.statusCode206PartialContent;
      case 300:
        return EHttpStatusCode.statusCode300MultipleChoices;
      case 301:
        return EHttpStatusCode.statusCode301MovedPermanently;
      case 302:
        return EHttpStatusCode.statusCode302Found;
      case 303:
        return EHttpStatusCode.statusCode303SeeOther;
      case 304:
        return EHttpStatusCode.statusCode304NotModified;
      case 305:
        return EHttpStatusCode.statusCode305UseProxy;
      case 307:
        return EHttpStatusCode.statusCode307TemporaryRedirect;
      case 400:
        return EHttpStatusCode.statusCode400BadRequest;
      case 401:
        return EHttpStatusCode.statusCode401Unauthorized;
      case 402:
        return EHttpStatusCode.statusCode402PaymentRequired;
      case 403:
        return EHttpStatusCode.statusCode403Forbidden;
      case 404:
        return EHttpStatusCode.statusCode404NotFound;
      case 405:
        return EHttpStatusCode.statusCode405MethodNotAllowed;
      case 406:
        return EHttpStatusCode.statusCode406NotAcceptable;
      case 407:
        return EHttpStatusCode.statusCode407ProxyAuthRequired;
      case 408:
        return EHttpStatusCode.statusCode408RequestTimeout;
      case 409:
        return EHttpStatusCode.statusCode409Conflict;
      case 410:
        return EHttpStatusCode.statusCode410Gone;
      case 411:
        return EHttpStatusCode.statusCode411LengthRequired;
      case 412:
        return EHttpStatusCode.statusCode412PreconditionFailed;
      case 413:
        return EHttpStatusCode.statusCode413RequestEntityTooLarge;
      case 414:
        return EHttpStatusCode.statusCode414RequestURITooLong;
      case 415:
        return EHttpStatusCode.statusCode415UnsupportedMediaType;
      case 416:
        return EHttpStatusCode.statusCode416RequestedRangeNotSatisfiable;
      case 417:
        return EHttpStatusCode.statusCode417ExpectationFailed;
      case 418:
        return EHttpStatusCode.statusCode4xxUnknown;
      case 429:
        return EHttpStatusCode.statusCode429TooManyRequests;
      case 444:
        return EHttpStatusCode.statusCode444ConnectionClosed;
      case 500:
        return EHttpStatusCode.statusCode500InternalServerError;
      case 501:
        return EHttpStatusCode.statusCode501NotImplemented;
      case 502:
        return EHttpStatusCode.statusCode502BadGateway;
      case 503:
        return EHttpStatusCode.statusCode503ServiceUnavailable;
      case 504:
        return EHttpStatusCode.statusCode504GatewayTimeout;
      case 505:
        return EHttpStatusCode.statusCode505HttpVersionNotSupported;
      case 599:
        return EHttpStatusCode.statusCode5xxUnknown;
      default:
        throw "Unknown value for 'EHttpStatusCode'. The value was: '$value'";
    }
  }
}
