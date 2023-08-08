// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class FavoritesListChanged extends Struct {
  static int get callbackId => 502;

  @UnsignedInt()
  external int ip;

  @UnsignedInt()
  external int queryPort;

  @UnsignedInt()
  external int connPort;

  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int flags;

  @Bool()
  external bool add;

  @UnsignedInt()
  external AccountId accountId;
}

extension FavoritesListChangedExtensions on Pointer<FavoritesListChanged> {
  int get ip => ref.ip;

  int get queryPort => ref.queryPort;

  int get connPort => ref.connPort;

  int get appId => ref.appId;

  int get flags => ref.flags;

  bool get add => ref.add;

  AccountId get accountId => ref.accountId;
}
