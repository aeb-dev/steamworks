// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class HtmlSearchResults extends Struct {
  static int get callbackId => 4509;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int results;

  @UnsignedInt()
  external int currentMatch;
}

extension HtmlSearchResultsExtensions on Pointer<HtmlSearchResults> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get results => ref.results;

  int get currentMatch => ref.currentMatch;
}
