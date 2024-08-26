// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EBetaBranchFlagsAliasDart = int;
typedef EBetaBranchFlagsAliasC = Int32;

enum EBetaBranchFlags {
  none(0),
  default_(1),
  available(2),
  private(4),
  selected(8),
  installed(16),
  ;

  final int value;

  const EBetaBranchFlags(this.value);

  factory EBetaBranchFlags.fromValue(int value) {
    switch (value) {
      case 0:
        return EBetaBranchFlags.none;
      case 1:
        return EBetaBranchFlags.default_;
      case 2:
        return EBetaBranchFlags.available;
      case 4:
        return EBetaBranchFlags.private;
      case 8:
        return EBetaBranchFlags.selected;
      case 16:
        return EBetaBranchFlags.installed;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EBetaBranchFlags'. The value was: '$value'",
        );
    }
  }
}
