import "dart:ffi";

@Packed(8)
class RemoteStorageLocalFileChange extends Opaque {
  static int get callbackId => 1333;
}
