// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members, unreachable_switch_case
import "dart:ffi";
import "../unknown_enum_value_exception.dart";

typedef ERemotePlayScancodeAliasDart = int;
typedef ERemotePlayScancodeAliasC = Int32;

enum ERemotePlayScancode {
  unknown(0),
  a(4),
  b(5),
  c(6),
  d(7),
  e(8),
  f(9),
  g(10),
  h(11),
  i(12),
  j(13),
  k(14),
  l(15),
  m(16),
  n(17),
  o(18),
  p(19),
  q(20),
  r(21),
  s(22),
  t(23),
  u(24),
  v(25),
  w(26),
  x(27),
  y(28),
  z(29),
  remotePlayScancode1(30),
  remotePlayScancode2(31),
  remotePlayScancode3(32),
  remotePlayScancode4(33),
  remotePlayScancode5(34),
  remotePlayScancode6(35),
  remotePlayScancode7(36),
  remotePlayScancode8(37),
  remotePlayScancode9(38),
  remotePlayScancode0(39),
  return_(40),
  escape(41),
  backspace(42),
  tab(43),
  space(44),
  minus(45),
  equals(46),
  leftBracket(47),
  rightBracket(48),
  backslash(49),
  semicolon(51),
  apostrophe(52),
  grave(53),
  comma(54),
  period(55),
  slash(56),
  capsLock(57),
  f1(58),
  f2(59),
  f3(60),
  f4(61),
  f5(62),
  f6(63),
  f7(64),
  f8(65),
  f9(66),
  f10(67),
  f11(68),
  f12(69),
  insert(73),
  home(74),
  pageUp(75),
  delete(76),
  end(77),
  pageDown(78),
  right(79),
  left(80),
  down(81),
  up(82),
  keypadDivide(84),
  keypadMultiply(85),
  keypadMinus(86),
  keypadPlus(87),
  keypadEnter(88),
  keypad1(89),
  keypad2(90),
  keypad3(91),
  keypad4(92),
  keypad5(93),
  keypad6(94),
  keypad7(95),
  keypad8(96),
  keypad9(97),
  keypad0(98),
  keypadPeriod(99),
  leftControl(224),
  leftShift(225),
  leftAlt(226),
  leftGUI(227),
  rightControl(228),
  rightShift(229),
  rightALT(230),
  rightGUI(231),
  ;

  final int value;

  const ERemotePlayScancode(this.value);

  factory ERemotePlayScancode.fromValue(int value) {
    switch (value) {
      case 0:
        return ERemotePlayScancode.unknown;
      case 4:
        return ERemotePlayScancode.a;
      case 5:
        return ERemotePlayScancode.b;
      case 6:
        return ERemotePlayScancode.c;
      case 7:
        return ERemotePlayScancode.d;
      case 8:
        return ERemotePlayScancode.e;
      case 9:
        return ERemotePlayScancode.f;
      case 10:
        return ERemotePlayScancode.g;
      case 11:
        return ERemotePlayScancode.h;
      case 12:
        return ERemotePlayScancode.i;
      case 13:
        return ERemotePlayScancode.j;
      case 14:
        return ERemotePlayScancode.k;
      case 15:
        return ERemotePlayScancode.l;
      case 16:
        return ERemotePlayScancode.m;
      case 17:
        return ERemotePlayScancode.n;
      case 18:
        return ERemotePlayScancode.o;
      case 19:
        return ERemotePlayScancode.p;
      case 20:
        return ERemotePlayScancode.q;
      case 21:
        return ERemotePlayScancode.r;
      case 22:
        return ERemotePlayScancode.s;
      case 23:
        return ERemotePlayScancode.t;
      case 24:
        return ERemotePlayScancode.u;
      case 25:
        return ERemotePlayScancode.v;
      case 26:
        return ERemotePlayScancode.w;
      case 27:
        return ERemotePlayScancode.x;
      case 28:
        return ERemotePlayScancode.y;
      case 29:
        return ERemotePlayScancode.z;
      case 30:
        return ERemotePlayScancode.remotePlayScancode1;
      case 31:
        return ERemotePlayScancode.remotePlayScancode2;
      case 32:
        return ERemotePlayScancode.remotePlayScancode3;
      case 33:
        return ERemotePlayScancode.remotePlayScancode4;
      case 34:
        return ERemotePlayScancode.remotePlayScancode5;
      case 35:
        return ERemotePlayScancode.remotePlayScancode6;
      case 36:
        return ERemotePlayScancode.remotePlayScancode7;
      case 37:
        return ERemotePlayScancode.remotePlayScancode8;
      case 38:
        return ERemotePlayScancode.remotePlayScancode9;
      case 39:
        return ERemotePlayScancode.remotePlayScancode0;
      case 40:
        return ERemotePlayScancode.return_;
      case 41:
        return ERemotePlayScancode.escape;
      case 42:
        return ERemotePlayScancode.backspace;
      case 43:
        return ERemotePlayScancode.tab;
      case 44:
        return ERemotePlayScancode.space;
      case 45:
        return ERemotePlayScancode.minus;
      case 46:
        return ERemotePlayScancode.equals;
      case 47:
        return ERemotePlayScancode.leftBracket;
      case 48:
        return ERemotePlayScancode.rightBracket;
      case 49:
        return ERemotePlayScancode.backslash;
      case 51:
        return ERemotePlayScancode.semicolon;
      case 52:
        return ERemotePlayScancode.apostrophe;
      case 53:
        return ERemotePlayScancode.grave;
      case 54:
        return ERemotePlayScancode.comma;
      case 55:
        return ERemotePlayScancode.period;
      case 56:
        return ERemotePlayScancode.slash;
      case 57:
        return ERemotePlayScancode.capsLock;
      case 58:
        return ERemotePlayScancode.f1;
      case 59:
        return ERemotePlayScancode.f2;
      case 60:
        return ERemotePlayScancode.f3;
      case 61:
        return ERemotePlayScancode.f4;
      case 62:
        return ERemotePlayScancode.f5;
      case 63:
        return ERemotePlayScancode.f6;
      case 64:
        return ERemotePlayScancode.f7;
      case 65:
        return ERemotePlayScancode.f8;
      case 66:
        return ERemotePlayScancode.f9;
      case 67:
        return ERemotePlayScancode.f10;
      case 68:
        return ERemotePlayScancode.f11;
      case 69:
        return ERemotePlayScancode.f12;
      case 73:
        return ERemotePlayScancode.insert;
      case 74:
        return ERemotePlayScancode.home;
      case 75:
        return ERemotePlayScancode.pageUp;
      case 76:
        return ERemotePlayScancode.delete;
      case 77:
        return ERemotePlayScancode.end;
      case 78:
        return ERemotePlayScancode.pageDown;
      case 79:
        return ERemotePlayScancode.right;
      case 80:
        return ERemotePlayScancode.left;
      case 81:
        return ERemotePlayScancode.down;
      case 82:
        return ERemotePlayScancode.up;
      case 84:
        return ERemotePlayScancode.keypadDivide;
      case 85:
        return ERemotePlayScancode.keypadMultiply;
      case 86:
        return ERemotePlayScancode.keypadMinus;
      case 87:
        return ERemotePlayScancode.keypadPlus;
      case 88:
        return ERemotePlayScancode.keypadEnter;
      case 89:
        return ERemotePlayScancode.keypad1;
      case 90:
        return ERemotePlayScancode.keypad2;
      case 91:
        return ERemotePlayScancode.keypad3;
      case 92:
        return ERemotePlayScancode.keypad4;
      case 93:
        return ERemotePlayScancode.keypad5;
      case 94:
        return ERemotePlayScancode.keypad6;
      case 95:
        return ERemotePlayScancode.keypad7;
      case 96:
        return ERemotePlayScancode.keypad8;
      case 97:
        return ERemotePlayScancode.keypad9;
      case 98:
        return ERemotePlayScancode.keypad0;
      case 99:
        return ERemotePlayScancode.keypadPeriod;
      case 224:
        return ERemotePlayScancode.leftControl;
      case 225:
        return ERemotePlayScancode.leftShift;
      case 226:
        return ERemotePlayScancode.leftAlt;
      case 227:
        return ERemotePlayScancode.leftGUI;
      case 228:
        return ERemotePlayScancode.rightControl;
      case 229:
        return ERemotePlayScancode.rightShift;
      case 230:
        return ERemotePlayScancode.rightALT;
      case 231:
        return ERemotePlayScancode.rightGUI;
      default:
        throw UnknownEnumValueException(
          "Unknown value for 'ERemotePlayScancode'. The value was: '$value'",
        );
    }
  }
}
