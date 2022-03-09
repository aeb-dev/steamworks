import "dart:ffi";

@Packed(4)
class RemoteStoragePublishFileProgress extends Struct {
  @Double()
  external double dPercentFile;

  @Bool()
  external bool preview;
}
