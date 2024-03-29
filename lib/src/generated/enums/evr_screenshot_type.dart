// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EVrScreenshotTypeAliasDart = int;
typedef EVrScreenshotTypeAliasC = Int32;

enum EVrScreenshotType {
  none(0),
  mono(1),
  stereo(2),
  monoCubemap(3),
  monoPanorama(4),
  stereoPanorama(5),
  ;

  final int value;

  const EVrScreenshotType(this.value);

  factory EVrScreenshotType.fromValue(int value) {
    switch (value) {
      case 0:
        return EVrScreenshotType.none;
      case 1:
        return EVrScreenshotType.mono;
      case 2:
        return EVrScreenshotType.stereo;
      case 3:
        return EVrScreenshotType.monoCubemap;
      case 4:
        return EVrScreenshotType.monoPanorama;
      case 5:
        return EVrScreenshotType.stereoPanorama;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EVrScreenshotType'. The value was: '$value'",
        );
    }
  }
}
