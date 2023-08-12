// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../dl.dart";

@Packed(4)
final class MatchMakingKeyValuePair extends Struct {
  @Array<Char>(256)
  external Array<Char> key;

  @Array<Char>(256)
  external Array<Char> value;
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

  Array<Char> get key => ref.key;

  Array<Char> get value => ref.value;
}
