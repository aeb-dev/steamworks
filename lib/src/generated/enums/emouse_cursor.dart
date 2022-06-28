// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EMouseCursorAliasDart = int;
typedef EMouseCursorAliasC = Int32;

enum EMouseCursor {
  user(0),
  none(1),
  arrow(2),
  ibeam(3),
  hourglass(4),
  waitarrow(5),
  crosshair(6),
  up(7),
  sizenw(8),
  sizese(9),
  sizene(10),
  sizesw(11),
  sizew(12),
  sizee(13),
  sizen(14),
  sizes(15),
  sizewe(16),
  sizens(17),
  sizeall(18),
  no(19),
  hand(20),
  blank(21),
  middlepan(22),
  northpan(23),
  northeastpan(24),
  eastpan(25),
  southeastpan(26),
  southpan(27),
  southwestpan(28),
  westpan(29),
  northwestpan(30),
  alias(31),
  cell(32),
  colresize(33),
  copycur(34),
  verticaltext(35),
  rowresize(36),
  zoomin(37),
  zoomout(38),
  help(39),
  custom(40),
  last(41),
  ;

  final int value;

  const EMouseCursor(this.value);

  factory EMouseCursor.fromValue(int value) {
    switch (value) {
      case 0:
        return EMouseCursor.user;
      case 1:
        return EMouseCursor.none;
      case 2:
        return EMouseCursor.arrow;
      case 3:
        return EMouseCursor.ibeam;
      case 4:
        return EMouseCursor.hourglass;
      case 5:
        return EMouseCursor.waitarrow;
      case 6:
        return EMouseCursor.crosshair;
      case 7:
        return EMouseCursor.up;
      case 8:
        return EMouseCursor.sizenw;
      case 9:
        return EMouseCursor.sizese;
      case 10:
        return EMouseCursor.sizene;
      case 11:
        return EMouseCursor.sizesw;
      case 12:
        return EMouseCursor.sizew;
      case 13:
        return EMouseCursor.sizee;
      case 14:
        return EMouseCursor.sizen;
      case 15:
        return EMouseCursor.sizes;
      case 16:
        return EMouseCursor.sizewe;
      case 17:
        return EMouseCursor.sizens;
      case 18:
        return EMouseCursor.sizeall;
      case 19:
        return EMouseCursor.no;
      case 20:
        return EMouseCursor.hand;
      case 21:
        return EMouseCursor.blank;
      case 22:
        return EMouseCursor.middlepan;
      case 23:
        return EMouseCursor.northpan;
      case 24:
        return EMouseCursor.northeastpan;
      case 25:
        return EMouseCursor.eastpan;
      case 26:
        return EMouseCursor.southeastpan;
      case 27:
        return EMouseCursor.southpan;
      case 28:
        return EMouseCursor.southwestpan;
      case 29:
        return EMouseCursor.westpan;
      case 30:
        return EMouseCursor.northwestpan;
      case 31:
        return EMouseCursor.alias;
      case 32:
        return EMouseCursor.cell;
      case 33:
        return EMouseCursor.colresize;
      case 34:
        return EMouseCursor.copycur;
      case 35:
        return EMouseCursor.verticaltext;
      case 36:
        return EMouseCursor.rowresize;
      case 37:
        return EMouseCursor.zoomin;
      case 38:
        return EMouseCursor.zoomout;
      case 39:
        return EMouseCursor.help;
      case 40:
        return EMouseCursor.custom;
      case 41:
        return EMouseCursor.last;
      default:
        throw "Unknown value for 'EMouseCursor'. The value was: '$value'";
    }
  }
}
