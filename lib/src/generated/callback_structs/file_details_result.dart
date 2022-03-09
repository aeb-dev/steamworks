import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_result.dart";

@Packed(8)
class FileDetailsResult extends Struct {
  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int fileSize;

  @Array<UnsignedChar>(20)
  external Array<UnsignedChar> fileSHA;

  @UnsignedInt()
  external int flags;
}
