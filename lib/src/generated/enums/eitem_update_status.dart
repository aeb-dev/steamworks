// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EItemUpdateStatusAliasDart = int;
typedef EItemUpdateStatusAliasC = Int32;

enum EItemUpdateStatus {
  invalid(0),
  preparingConfig(1),
  preparingContent(2),
  uploadingContent(3),
  uploadingPreviewFile(4),
  committingChanges(5),
  ;

  final int value;

  const EItemUpdateStatus(this.value);

  factory EItemUpdateStatus.fromValue(int value) {
    switch (value) {
      case 0:
        return EItemUpdateStatus.invalid;
      case 1:
        return EItemUpdateStatus.preparingConfig;
      case 2:
        return EItemUpdateStatus.preparingContent;
      case 3:
        return EItemUpdateStatus.uploadingContent;
      case 4:
        return EItemUpdateStatus.uploadingPreviewFile;
      case 5:
        return EItemUpdateStatus.committingChanges;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EItemUpdateStatus'. The value was: '$value'",
        );
    }
  }
}
