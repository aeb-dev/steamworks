// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class InputMotionDataV2 extends Struct {
  @Float()
  external double driftCorrectedQuatX;

  @Float()
  external double driftCorrectedQuatY;

  @Float()
  external double driftCorrectedQuatZ;

  @Float()
  external double driftCorrectedQuatW;

  @Float()
  external double sensorFusionQuatX;

  @Float()
  external double sensorFusionQuatY;

  @Float()
  external double sensorFusionQuatZ;

  @Float()
  external double sensorFusionQuatW;

  @Float()
  external double deferredSensorFusionQuatX;

  @Float()
  external double deferredSensorFusionQuatY;

  @Float()
  external double deferredSensorFusionQuatZ;

  @Float()
  external double deferredSensorFusionQuatW;

  @Float()
  external double gravityX;

  @Float()
  external double gravityY;

  @Float()
  external double gravityZ;

  @Float()
  external double degreesPerSecondX;

  @Float()
  external double degreesPerSecondY;

  @Float()
  external double degreesPerSecondZ;
}

extension InputMotionDataV2Extensions on Pointer<InputMotionDataV2> {
  double get driftCorrectedQuatX => ref.driftCorrectedQuatX;

  double get driftCorrectedQuatY => ref.driftCorrectedQuatY;

  double get driftCorrectedQuatZ => ref.driftCorrectedQuatZ;

  double get driftCorrectedQuatW => ref.driftCorrectedQuatW;

  double get sensorFusionQuatX => ref.sensorFusionQuatX;

  double get sensorFusionQuatY => ref.sensorFusionQuatY;

  double get sensorFusionQuatZ => ref.sensorFusionQuatZ;

  double get sensorFusionQuatW => ref.sensorFusionQuatW;

  double get deferredSensorFusionQuatX => ref.deferredSensorFusionQuatX;

  double get deferredSensorFusionQuatY => ref.deferredSensorFusionQuatY;

  double get deferredSensorFusionQuatZ => ref.deferredSensorFusionQuatZ;

  double get deferredSensorFusionQuatW => ref.deferredSensorFusionQuatW;

  double get gravityX => ref.gravityX;

  double get gravityY => ref.gravityY;

  double get gravityZ => ref.gravityZ;

  double get degreesPerSecondX => ref.degreesPerSecondX;

  double get degreesPerSecondY => ref.degreesPerSecondY;

  double get degreesPerSecondZ => ref.degreesPerSecondZ;
}
