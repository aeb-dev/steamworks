// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class RemotePlayInputMouseMotion extends Struct {
  @Bool()
  external bool absolute;

  @Float()
  external double normalizedX;

  @Float()
  external double normalizedY;

  @Int()
  external int deltaX;

  @Int()
  external int deltaY;
}

extension RemotePlayInputMouseMotionExtensions
    on Pointer<RemotePlayInputMouseMotion> {
  bool get absolute => ref.absolute;

  double get normalizedX => ref.normalizedX;

  double get normalizedY => ref.normalizedY;

  int get deltaX => ref.deltaX;

  int get deltaY => ref.deltaY;
}
