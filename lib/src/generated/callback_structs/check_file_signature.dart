import "dart:ffi";
import "../enums/e_check_file_signature.dart";

@Packed(4)
class CheckFileSignature extends Struct {
  @Int32()
  external ECheckFileSignature checkFileSignature;
}
