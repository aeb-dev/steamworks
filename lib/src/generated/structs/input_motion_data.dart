// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(1)
class InputMotionData extends Struct {
  @Float()
  external double rotQuatX;

  @Float()
  external double rotQuatY;

  @Float()
  external double rotQuatZ;

  @Float()
  external double rotQuatW;

  @Float()
  external double posAccelX;

  @Float()
  external double posAccelY;

  @Float()
  external double posAccelZ;

  @Float()
  external double rotVelX;

  @Float()
  external double rotVelY;

  @Float()
  external double rotVelZ;
}

extension InputMotionDataExtensions on Pointer<InputMotionData> {
  double get rotQuatX => ref.rotQuatX;

  double get rotQuatY => ref.rotQuatY;

  double get rotQuatZ => ref.rotQuatZ;

  double get rotQuatW => ref.rotQuatW;

  double get posAccelX => ref.posAccelX;

  double get posAccelY => ref.posAccelY;

  double get posAccelZ => ref.posAccelZ;

  double get rotVelX => ref.rotVelX;

  double get rotVelY => ref.rotVelY;

  double get rotVelZ => ref.rotVelZ;
}
