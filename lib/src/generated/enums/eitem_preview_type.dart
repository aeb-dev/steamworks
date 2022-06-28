// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EItemPreviewTypeAliasDart = int;
typedef EItemPreviewTypeAliasC = Int32;

enum EItemPreviewType {
  image(0),
  youTubeVideo(1),
  sketchfab(2),
  environmentMapHorizontalCross(3),
  environmentMapLatLong(4),
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
      case 255:
        return EItemPreviewType.reservedMax;
      default:
        throw "Unknown value for 'EItemPreviewType'. The value was: '$value'";
    }
  }
}
