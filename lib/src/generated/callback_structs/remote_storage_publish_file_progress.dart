import "dart:ffi";

@Packed(8)
class RemoteStoragePublishFileProgress extends Struct {
  @Double()
  external double dPercentFile;

  @Bool()
  external bool preview;
}
