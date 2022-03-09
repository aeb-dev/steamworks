import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageFileShareResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external UgcHandle file;

  external Pointer<Utf8> filename;
}
