// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../typedefs.dart";

@Packed(8)
class UserSubscribedItemsListChanged extends Struct {
  static int get callbackId => 3418;

  @UnsignedInt()
  external AppId appId;
}

extension UserSubscribedItemsListChangedExtensions
    on Pointer<UserSubscribedItemsListChanged> {
  AppId get appId => ref.appId;
}
