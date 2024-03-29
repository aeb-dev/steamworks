// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EItemStateAliasDart = int;
typedef EItemStateAliasC = Int32;

enum EItemState {
  none(0),
  subscribed(1),
  legacyItem(2),
  installed(4),
  needsUpdate(8),
  downloading(16),
  downloadPending(32),
  disabledLocally(64),
  ;

  final int value;

  const EItemState(this.value);

  factory EItemState.fromValue(int value) {
    switch (value) {
      case 0:
        return EItemState.none;
      case 1:
        return EItemState.subscribed;
      case 2:
        return EItemState.legacyItem;
      case 4:
        return EItemState.installed;
      case 8:
        return EItemState.needsUpdate;
      case 16:
        return EItemState.downloading;
      case 32:
        return EItemState.downloadPending;
      case 64:
        return EItemState.disabledLocally;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EItemState'. The value was: '$value'",
        );
    }
  }
}
