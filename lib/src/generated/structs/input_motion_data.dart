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
