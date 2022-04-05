import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class SteamParamStringArray extends Struct {
  external Pointer<Pointer<Utf8>> strings;

  @Int()
  external int numStrings;
}

extension SteamParamStringArrayExtensions on Pointer<SteamParamStringArray> {
  Pointer<Pointer<Utf8>> get strings => ref.strings;

  int get numStrings => ref.numStrings;
}
