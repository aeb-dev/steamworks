import "dart:ffi";
import "../enums/e_result.dart";

@Packed(4)
class FavoritesListAccountsUpdated extends Struct {
  @Int32()
  external EResult result;
}
