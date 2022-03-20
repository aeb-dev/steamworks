import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";

class SteamMatchmakingRulesResponse extends Opaque {}

final _rulesResponded = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingRulesResponse>,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    void Function(
  Pointer<SteamMatchmakingRulesResponse>,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded");

final _rulesFailedToRespond = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingRulesResponse>,
),
    void Function(
  Pointer<SteamMatchmakingRulesResponse>,
)>("SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond");

final _rulesRefreshComplete = dl.lookupFunction<
    Void Function(
  Pointer<SteamMatchmakingRulesResponse>,
),
    void Function(
  Pointer<SteamMatchmakingRulesResponse>,
)>("SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete");

extension SteamMatchmakingRulesResponseExtensions
    on Pointer<SteamMatchmakingRulesResponse> {
  void rulesResponded(
    Pointer<Utf8> rule,
    Pointer<Utf8> value,
  ) =>
      _rulesResponded.call(
        this,
        rule,
        value,
      );

  void rulesFailedToRespond() => _rulesFailedToRespond.call(
        this,
      );

  void rulesRefreshComplete() => _rulesRefreshComplete.call(
        this,
      );
}
