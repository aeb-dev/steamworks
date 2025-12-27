// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef EHtmlMouseCursorAliasDart = int;
typedef EHtmlMouseCursorAliasC = Int32;

enum EHtmlMouseCursor {
  user(0),
  none(1),
  arrow(2),
  iBeam(3),
  hourglass(4),
  waitArrow(5),
  crosshair(6),
  up(7),
  sizeNW(8),
  sizeSE(9),
  sizeNE(10),
  sizeSW(11),
  sizeW(12),
  sizeE(13),
  sizeN(14),
  sizeS(15),
  sizeWE(16),
  sizeNS(17),
  sizeAll(18),
  no(19),
  hand(20),
  blank(21),
  middlePan(22),
  northPan(23),
  northEastPan(24),
  eastPan(25),
  southEastPan(26),
  southPan(27),
  southWestPan(28),
  westPan(29),
  northWestPan(30),
  alias(31),
  cell(32),
  colResize(33),
  copyCur(34),
  verticalText(35),
  rowResize(36),
  zoomIn(37),
  zoomOut(38),
  help(39),
  custom(40),
  sizeNWSE(41),
  sizeNESW(42),
  last(43),
  ;

  final int value;

  const EHtmlMouseCursor(this.value);

  factory EHtmlMouseCursor.fromValue(int value) {
    switch (value) {
      case 0:
        return EHtmlMouseCursor.user;
      case 1:
        return EHtmlMouseCursor.none;
      case 2:
        return EHtmlMouseCursor.arrow;
      case 3:
        return EHtmlMouseCursor.iBeam;
      case 4:
        return EHtmlMouseCursor.hourglass;
      case 5:
        return EHtmlMouseCursor.waitArrow;
      case 6:
        return EHtmlMouseCursor.crosshair;
      case 7:
        return EHtmlMouseCursor.up;
      case 8:
        return EHtmlMouseCursor.sizeNW;
      case 9:
        return EHtmlMouseCursor.sizeSE;
      case 10:
        return EHtmlMouseCursor.sizeNE;
      case 11:
        return EHtmlMouseCursor.sizeSW;
      case 12:
        return EHtmlMouseCursor.sizeW;
      case 13:
        return EHtmlMouseCursor.sizeE;
      case 14:
        return EHtmlMouseCursor.sizeN;
      case 15:
        return EHtmlMouseCursor.sizeS;
      case 16:
        return EHtmlMouseCursor.sizeWE;
      case 17:
        return EHtmlMouseCursor.sizeNS;
      case 18:
        return EHtmlMouseCursor.sizeAll;
      case 19:
        return EHtmlMouseCursor.no;
      case 20:
        return EHtmlMouseCursor.hand;
      case 21:
        return EHtmlMouseCursor.blank;
      case 22:
        return EHtmlMouseCursor.middlePan;
      case 23:
        return EHtmlMouseCursor.northPan;
      case 24:
        return EHtmlMouseCursor.northEastPan;
      case 25:
        return EHtmlMouseCursor.eastPan;
      case 26:
        return EHtmlMouseCursor.southEastPan;
      case 27:
        return EHtmlMouseCursor.southPan;
      case 28:
        return EHtmlMouseCursor.southWestPan;
      case 29:
        return EHtmlMouseCursor.westPan;
      case 30:
        return EHtmlMouseCursor.northWestPan;
      case 31:
        return EHtmlMouseCursor.alias;
      case 32:
        return EHtmlMouseCursor.cell;
      case 33:
        return EHtmlMouseCursor.colResize;
      case 34:
        return EHtmlMouseCursor.copyCur;
      case 35:
        return EHtmlMouseCursor.verticalText;
      case 36:
        return EHtmlMouseCursor.rowResize;
      case 37:
        return EHtmlMouseCursor.zoomIn;
      case 38:
        return EHtmlMouseCursor.zoomOut;
      case 39:
        return EHtmlMouseCursor.help;
      case 40:
        return EHtmlMouseCursor.custom;
      case 41:
        return EHtmlMouseCursor.sizeNWSE;
      case 42:
        return EHtmlMouseCursor.sizeNESW;
      case 43:
        return EHtmlMouseCursor.last;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'EHtmlMouseCursor'. The value was: '$value'",
        );
    }
  }
}
