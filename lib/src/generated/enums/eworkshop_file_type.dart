// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EWorkshopFileTypeAliasDart = int;
typedef EWorkshopFileTypeAliasC = Int32;

enum EWorkshopFileType {
  first(0),
  community(0),
  microtransaction(1),
  collection(2),
  art(3),
  video(4),
  screenshot(5),
  game(6),
  software(7),
  concept(8),
  webGuide(9),
  integratedGuide(10),
  merch(11),
  controllerBinding(12),
  steamworksAccessInvite(13),
  steamVideo(14),
  gameManagedItem(15),
  clip(16),
  max(17),
  ;

  final int value;

  const EWorkshopFileType(this.value);

  factory EWorkshopFileType.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopFileType.first;
      case 0:
        return EWorkshopFileType.community;
      case 1:
        return EWorkshopFileType.microtransaction;
      case 2:
        return EWorkshopFileType.collection;
      case 3:
        return EWorkshopFileType.art;
      case 4:
        return EWorkshopFileType.video;
      case 5:
        return EWorkshopFileType.screenshot;
      case 6:
        return EWorkshopFileType.game;
      case 7:
        return EWorkshopFileType.software;
      case 8:
        return EWorkshopFileType.concept;
      case 9:
        return EWorkshopFileType.webGuide;
      case 10:
        return EWorkshopFileType.integratedGuide;
      case 11:
        return EWorkshopFileType.merch;
      case 12:
        return EWorkshopFileType.controllerBinding;
      case 13:
        return EWorkshopFileType.steamworksAccessInvite;
      case 14:
        return EWorkshopFileType.steamVideo;
      case 15:
        return EWorkshopFileType.gameManagedItem;
      case 16:
        return EWorkshopFileType.clip;
      case 17:
        return EWorkshopFileType.max;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EWorkshopFileType'. The value was: '$value'",
        );
    }
  }
}
