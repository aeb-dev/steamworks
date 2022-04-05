import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(8)
class LowBatteryPower extends Struct {
  static int get callbackId => 702;

  @UnsignedChar()
  external int minutesBatteryLeft;
}

extension LowBatteryPowerExtensions on Pointer<LowBatteryPower> {
  int get minutesBatteryLeft => ref.minutesBatteryLeft;
}
