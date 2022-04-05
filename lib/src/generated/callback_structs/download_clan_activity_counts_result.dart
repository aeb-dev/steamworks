// ignore_for_file: public_member_api_docs
import "dart:ffi";

@Packed(8)
class DownloadClanActivityCountsResult extends Struct {
  static int get callbackId => 341;

  @Bool()
  external bool success;
}

extension DownloadClanActivityCountsResultExtensions
    on Pointer<DownloadClanActivityCountsResult> {
  bool get success => ref.success;
}
