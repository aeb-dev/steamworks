// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(8)
class LowBatteryPower extends Struct {
  static int get callbackId => 702;

  @UnsignedChar()
  external int minutesBatteryLeft;
}

extension LowBatteryPowerExtensions on Pointer<LowBatteryPower> {
  int get minutesBatteryLeft => ref.minutesBatteryLeft;
}
