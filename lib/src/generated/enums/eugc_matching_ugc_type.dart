// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EUgcMatchingUgcTypeAliasDart = int;
typedef EUgcMatchingUgcTypeAliasC = Int32;

enum EUgcMatchingUgcType {
  all(-1),
  items(0),
  itemsMtx(1),
  itemsReadyToUse(2),
  collections(3),
  artwork(4),
  videos(5),
  screenshots(6),
  allGuides(7),
  webGuides(8),
  integratedGuides(9),
  usableInGame(10),
  controllerBindings(11),
  gameManagedItems(12),
  ;

  final int value;

  const EUgcMatchingUgcType(this.value);

  factory EUgcMatchingUgcType.fromValue(int value) {
    switch (value) {
      case -1:
        return EUgcMatchingUgcType.all;
      case 0:
        return EUgcMatchingUgcType.items;
      case 1:
        return EUgcMatchingUgcType.itemsMtx;
      case 2:
        return EUgcMatchingUgcType.itemsReadyToUse;
      case 3:
        return EUgcMatchingUgcType.collections;
      case 4:
        return EUgcMatchingUgcType.artwork;
      case 5:
        return EUgcMatchingUgcType.videos;
      case 6:
        return EUgcMatchingUgcType.screenshots;
      case 7:
        return EUgcMatchingUgcType.allGuides;
      case 8:
        return EUgcMatchingUgcType.webGuides;
      case 9:
        return EUgcMatchingUgcType.integratedGuides;
      case 10:
        return EUgcMatchingUgcType.usableInGame;
      case 11:
        return EUgcMatchingUgcType.controllerBindings;
      case 12:
        return EUgcMatchingUgcType.gameManagedItems;
      default:
        throw "Unknown value for 'EUgcMatchingUgcType'. The value was: '$value'";
    }
  }
}
