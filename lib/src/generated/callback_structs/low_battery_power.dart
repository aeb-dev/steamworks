import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class LowBatteryPower extends Struct {
  @UnsignedChar()
  external int minutesBatteryLeft;
}
