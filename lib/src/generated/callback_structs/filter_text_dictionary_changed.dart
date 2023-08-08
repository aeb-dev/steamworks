// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class FilterTextDictionaryChanged extends Struct {
  static int get callbackId => 739;

  @Int()
  external int language;
}

extension FilterTextDictionaryChangedExtensions
    on Pointer<FilterTextDictionaryChanged> {
  int get language => ref.language;
}
