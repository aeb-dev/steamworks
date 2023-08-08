// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ECommunityProfileItemPropertyAliasDart = int;
typedef ECommunityProfileItemPropertyAliasC = Int32;

enum ECommunityProfileItemProperty {
  imageSmall(0),
  imageLarge(1),
  internalName(2),
  title(3),
  description(4),
  appId(5),
  typeId(6),
  class_(7),
  movieWebM(8),
  movieMP4(9),
  movieWebMSmall(10),
  movieMP4Small(11),
  ;

  final int value;

  const ECommunityProfileItemProperty(this.value);

  factory ECommunityProfileItemProperty.fromValue(int value) {
    switch (value) {
      case 0:
        return ECommunityProfileItemProperty.imageSmall;
      case 1:
        return ECommunityProfileItemProperty.imageLarge;
      case 2:
        return ECommunityProfileItemProperty.internalName;
      case 3:
        return ECommunityProfileItemProperty.title;
      case 4:
        return ECommunityProfileItemProperty.description;
      case 5:
        return ECommunityProfileItemProperty.appId;
      case 6:
        return ECommunityProfileItemProperty.typeId;
      case 7:
        return ECommunityProfileItemProperty.class_;
      case 8:
        return ECommunityProfileItemProperty.movieWebM;
      case 9:
        return ECommunityProfileItemProperty.movieMP4;
      case 10:
        return ECommunityProfileItemProperty.movieWebMSmall;
      case 11:
        return ECommunityProfileItemProperty.movieMP4Small;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ECommunityProfileItemProperty'. The value was: '$value'",
        );
    }
  }
}
