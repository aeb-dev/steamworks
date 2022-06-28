// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ERemoteStoragePlatformAliasDart = int;
typedef ERemoteStoragePlatformAliasC = Int32;

enum ERemoteStoragePlatform {
  all(-1),
  none(0),
  windows(1),
  osx(2),
  ps3(4),
  linux(8),
  switch_(16),
  android(32),
  ios(64),
  ;

  final int value;

  const ERemoteStoragePlatform(this.value);

  factory ERemoteStoragePlatform.fromValue(int value) {
    switch (value) {
      case -1:
        return ERemoteStoragePlatform.all;
      case 0:
        return ERemoteStoragePlatform.none;
      case 1:
        return ERemoteStoragePlatform.windows;
      case 2:
        return ERemoteStoragePlatform.osx;
      case 4:
        return ERemoteStoragePlatform.ps3;
      case 8:
        return ERemoteStoragePlatform.linux;
      case 16:
        return ERemoteStoragePlatform.switch_;
      case 32:
        return ERemoteStoragePlatform.android;
      case 64:
        return ERemoteStoragePlatform.ios;
      default:
        throw "Unknown value for 'ERemoteStoragePlatform'. The value was: '$value'";
    }
  }
}
