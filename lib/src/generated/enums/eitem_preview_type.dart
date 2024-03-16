// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EItemPreviewTypeAliasDart = int;
typedef EItemPreviewTypeAliasC = Int32;

enum EItemPreviewType {
  image(0),
  youTubeVideo(1),
  sketchfab(2),
  environmentMapHorizontalCross(3),
  environmentMapLatLong(4),
  clip(5),
  reservedMax(255),
  ;

  final int value;

  const EItemPreviewType(this.value);

  factory EItemPreviewType.fromValue(int value) {
    switch (value) {
      case 0:
        return EItemPreviewType.image;
      case 1:
        return EItemPreviewType.youTubeVideo;
      case 2:
        return EItemPreviewType.sketchfab;
      case 3:
        return EItemPreviewType.environmentMapHorizontalCross;
      case 4:
        return EItemPreviewType.environmentMapLatLong;
      case 5:
        return EItemPreviewType.clip;
      case 255:
        return EItemPreviewType.reservedMax;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EItemPreviewType'. The value was: '$value'",
        );
    }
  }
}
