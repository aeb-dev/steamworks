import "dart:ffi";

@Packed(8)
class LicensesUpdated extends Opaque {
  static int get callbackId => 125;
}
