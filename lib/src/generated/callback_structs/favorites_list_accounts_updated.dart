import "dart:ffi";

import "../enums/eresult.dart";

@Packed(8)
class FavoritesListAccountsUpdated extends Struct {
  static int get callbackId => 516;

  @Int32()
  external EResult result;
}

extension FavoritesListAccountsUpdatedExtensions
    on Pointer<FavoritesListAccountsUpdated> {
  EResult get result => ref.result;
}
