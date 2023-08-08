// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ECommunityProfileItemTypeAliasDart = int;
typedef ECommunityProfileItemTypeAliasC = Int32;

enum ECommunityProfileItemType {
  animatedAvatar(0),
  avatarFrame(1),
  profileModifier(2),
  profileBackground(3),
  miniProfileBackground(4),
  ;

  final int value;

  const ECommunityProfileItemType(this.value);

  factory ECommunityProfileItemType.fromValue(int value) {
    switch (value) {
      case 0:
        return ECommunityProfileItemType.animatedAvatar;
      case 1:
        return ECommunityProfileItemType.avatarFrame;
      case 2:
        return ECommunityProfileItemType.profileModifier;
      case 3:
        return ECommunityProfileItemType.profileBackground;
      case 4:
        return ECommunityProfileItemType.miniProfileBackground;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ECommunityProfileItemType'. The value was: '$value'",
        );
    }
  }
}
