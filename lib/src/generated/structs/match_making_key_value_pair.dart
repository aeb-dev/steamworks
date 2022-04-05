// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../dl.dart";

@Packed(4)
class MatchMakingKeyValuePair extends Struct {
  external Pointer<Utf8> key;

  external Pointer<Utf8> value;
}

final _construct = dl.lookupFunction<
    Void Function(
  Pointer<MatchMakingKeyValuePair>,
),
    void Function(
  Pointer<MatchMakingKeyValuePair>,
)>("SteamAPI_MatchMakingKeyValuePair_t_Construct");

extension MatchMakingKeyValuePairExtensions
    on Pointer<MatchMakingKeyValuePair> {
  void construct() => _construct.call(
        this,
      );

  Pointer<Utf8> get key => ref.key;

  Pointer<Utf8> get value => ref.value;
}
