// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class FavoritesListChanged extends Struct {
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
