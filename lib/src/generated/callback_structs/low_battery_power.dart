// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(8)
final class LowBatteryPower extends Struct {
  static int get callbackId => 702;

  @UnsignedChar()
  external int minutesBatteryLeft;
}

extension LowBatteryPowerExtensions on Pointer<LowBatteryPower> {
  int get minutesBatteryLeft => ref.minutesBatteryLeft;
}
