import "dart:ffi";

@Packed(8)
class DownloadClanActivityCountsResult extends Struct {
  @Bool()
  external bool success;
}
