// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
final class SteamParamStringArray extends Struct {
  external Pointer<Pointer<Utf8>> strings;

  @Int()
  external int numStrings;
}

extension SteamParamStringArrayExtensions on Pointer<SteamParamStringArray> {
  Pointer<Pointer<Utf8>> get strings => ref.strings;

  int get numStrings => ref.numStrings;
}
