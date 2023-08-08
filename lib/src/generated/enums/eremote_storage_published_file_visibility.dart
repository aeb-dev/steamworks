// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemoteStoragePublishedFileVisibilityAliasDart = int;
typedef ERemoteStoragePublishedFileVisibilityAliasC = Int32;

enum ERemoteStoragePublishedFileVisibility {
  public(0),
  friendsOnly(1),
  private(2),
  unlisted(3),
  ;

  final int value;

  const ERemoteStoragePublishedFileVisibility(this.value);

  factory ERemoteStoragePublishedFileVisibility.fromValue(int value) {
    switch (value) {
      case 0:
        return ERemoteStoragePublishedFileVisibility.public;
      case 1:
        return ERemoteStoragePublishedFileVisibility.friendsOnly;
      case 2:
        return ERemoteStoragePublishedFileVisibility.private;
      case 3:
        return ERemoteStoragePublishedFileVisibility.unlisted;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemoteStoragePublishedFileVisibility'. The value was: '$value'",
        );
    }
  }
}
