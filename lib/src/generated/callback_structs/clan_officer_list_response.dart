// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class ClanOfficerListResponse extends Struct {
  static int get callbackId => 335;

  @UnsignedLongLong()
  external CSteamId steamIdClan;

  @Int()
  external int officers;

  @UnsignedChar()
  external int success;
}

extension ClanOfficerListResponseExtensions
    on Pointer<ClanOfficerListResponse> {
  CSteamId get steamIdClan => ref.steamIdClan;

  int get officers => ref.officers;

  int get success => ref.success;
}
