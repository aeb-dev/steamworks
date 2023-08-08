// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class RemoteStoragePublishFileProgress extends Struct {
  static int get callbackId => 1329;

  @Double()
  external double dPercentFile;

  @Bool()
  external bool preview;
}

extension RemoteStoragePublishFileProgressExtensions
    on Pointer<RemoteStoragePublishFileProgress> {
  double get dPercentFile => ref.dPercentFile;

  bool get preview => ref.preview;
}
