// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef ERemoteStorageLocalFileChangeAliasDart = int;
typedef ERemoteStorageLocalFileChangeAliasC = Int32;

enum ERemoteStorageLocalFileChange {
  invalid(0),
  fileUpdated(1),
  fileDeleted(2),
  ;

  final int value;

  const ERemoteStorageLocalFileChange(this.value);

  factory ERemoteStorageLocalFileChange.fromValue(int value) {
    switch (value) {
      case 0:
        return ERemoteStorageLocalFileChange.invalid;
      case 1:
        return ERemoteStorageLocalFileChange.fileUpdated;
      case 2:
        return ERemoteStorageLocalFileChange.fileDeleted;
      default:
        throw "Unknown value for 'ERemoteStorageLocalFileChange'. The value was: '$value'";
    }
  }
}
