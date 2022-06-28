// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EControllerActionOriginAliasDart = int;
typedef EControllerActionOriginAliasC = Int32;

enum EControllerActionOrigin {
  none(0),
  a(1),
  b(2),
  x(3),
  y(4),
  leftBumper(5),
  rightBumper(6),
  leftGrip(7),
  rightGrip(8),
  start(9),
  back(10),
  leftPadTouch(11),
  leftPadSwipe(12),
  leftPadClick(13),
  leftPadDPadNorth(14),
  leftPadDPadSouth(15),
  leftPadDPadWest(16),
  leftPadDPadEast(17),
  rightPadTouch(18),
  rightPadSwipe(19),
  rightPadClick(20),
  rightPadDPadNorth(21),
  rightPadDPadSouth(22),
  rightPadDPadWest(23),
  rightPadDPadEast(24),
  leftTriggerPull(25),
  leftTriggerClick(26),
  rightTriggerPull(27),
  rightTriggerClick(28),
  leftStickMove(29),
  leftStickClick(30),
  leftStickDPadNorth(31),
  leftStickDPadSouth(32),
  leftStickDPadWest(33),
  leftStickDPadEast(34),
  gyroMove(35),
  gyroPitch(36),
  gyroYaw(37),
  gyroRoll(38),
  ps4X(39),
  ps4Circle(40),
  ps4Triangle(41),
  ps4Square(42),
  ps4LeftBumper(43),
  ps4RightBumper(44),
  ps4Options(45),
  ps4Share(46),
  ps4LeftPadTouch(47),
  ps4LeftPadSwipe(48),
  ps4LeftPadClick(49),
  ps4LeftPadDPadNorth(50),
  ps4LeftPadDPadSouth(51),
  ps4LeftPadDPadWest(52),
  ps4LeftPadDPadEast(53),
  ps4RightPadTouch(54),
  ps4RightPadSwipe(55),
  ps4RightPadClick(56),
  ps4RightPadDPadNorth(57),
  ps4RightPadDPadSouth(58),
  ps4RightPadDPadWest(59),
  ps4RightPadDPadEast(60),
  ps4CenterPadTouch(61),
  ps4CenterPadSwipe(62),
  ps4CenterPadClick(63),
  ps4CenterPadDPadNorth(64),
  ps4CenterPadDPadSouth(65),
  ps4CenterPadDPadWest(66),
  ps4CenterPadDPadEast(67),
  ps4LeftTriggerPull(68),
  ps4LeftTriggerClick(69),
  ps4RightTriggerPull(70),
  ps4RightTriggerClick(71),
  ps4LeftStickMove(72),
  ps4LeftStickClick(73),
  ps4LeftStickDPadNorth(74),
  ps4LeftStickDPadSouth(75),
  ps4LeftStickDPadWest(76),
  ps4LeftStickDPadEast(77),
  ps4RightStickMove(78),
  ps4RightStickClick(79),
  ps4RightStickDPadNorth(80),
  ps4RightStickDPadSouth(81),
  ps4RightStickDPadWest(82),
  ps4RightStickDPadEast(83),
  ps4DPadNorth(84),
  ps4DPadSouth(85),
  ps4DPadWest(86),
  ps4DPadEast(87),
  ps4GyroMove(88),
  ps4GyroPitch(89),
  ps4GyroYaw(90),
  ps4GyroRoll(91),
  xBoxOneA(92),
  xBoxOneB(93),
  xBoxOneX(94),
  xBoxOneY(95),
  xBoxOneLeftBumper(96),
  xBoxOneRightBumper(97),
  xBoxOneMenu(98),
  xBoxOneView(99),
  xBoxOneLeftTriggerPull(100),
  xBoxOneLeftTriggerClick(101),
  xBoxOneRightTriggerPull(102),
  xBoxOneRightTriggerClick(103),
  xBoxOneLeftStickMove(104),
  xBoxOneLeftStickClick(105),
  xBoxOneLeftStickDPadNorth(106),
  xBoxOneLeftStickDPadSouth(107),
  xBoxOneLeftStickDPadWest(108),
  xBoxOneLeftStickDPadEast(109),
  xBoxOneRightStickMove(110),
  xBoxOneRightStickClick(111),
  xBoxOneRightStickDPadNorth(112),
  xBoxOneRightStickDPadSouth(113),
  xBoxOneRightStickDPadWest(114),
  xBoxOneRightStickDPadEast(115),
  xBoxOneDPadNorth(116),
  xBoxOneDPadSouth(117),
  xBoxOneDPadWest(118),
  xBoxOneDPadEast(119),
  xBox360A(120),
  xBox360B(121),
  xBox360X(122),
  xBox360Y(123),
  xBox360LeftBumper(124),
  xBox360RightBumper(125),
  xBox360Start(126),
  xBox360Back(127),
  xBox360LeftTriggerPull(128),
  xBox360LeftTriggerClick(129),
  xBox360RightTriggerPull(130),
  xBox360RightTriggerClick(131),
  xBox360LeftStickMove(132),
  xBox360LeftStickClick(133),
  xBox360LeftStickDPadNorth(134),
  xBox360LeftStickDPadSouth(135),
  xBox360LeftStickDPadWest(136),
  xBox360LeftStickDPadEast(137),
  xBox360RightStickMove(138),
  xBox360RightStickClick(139),
  xBox360RightStickDPadNorth(140),
  xBox360RightStickDPadSouth(141),
  xBox360RightStickDPadWest(142),
  xBox360RightStickDPadEast(143),
  xBox360DPadNorth(144),
  xBox360DPadSouth(145),
  xBox360DPadWest(146),
  xBox360DPadEast(147),
  steamV2A(148),
  steamV2B(149),
  steamV2X(150),
  steamV2Y(151),
  steamV2LeftBumper(152),
  steamV2RightBumper(153),
  steamV2LeftGripLower(154),
  steamV2LeftGripUpper(155),
  steamV2RightGripLower(156),
  steamV2RightGripUpper(157),
  steamV2LeftBumperPressure(158),
  steamV2RightBumperPressure(159),
  steamV2LeftGripPressure(160),
  steamV2RightGripPressure(161),
  steamV2LeftGripUpperPressure(162),
  steamV2RightGripUpperPressure(163),
  steamV2Start(164),
  steamV2Back(165),
  steamV2LeftPadTouch(166),
  steamV2LeftPadSwipe(167),
  steamV2LeftPadClick(168),
  steamV2LeftPadPressure(169),
  steamV2LeftPadDPadNorth(170),
  steamV2LeftPadDPadSouth(171),
  steamV2LeftPadDPadWest(172),
  steamV2LeftPadDPadEast(173),
  steamV2RightPadTouch(174),
  steamV2RightPadSwipe(175),
  steamV2RightPadClick(176),
  steamV2RightPadPressure(177),
  steamV2RightPadDPadNorth(178),
  steamV2RightPadDPadSouth(179),
  steamV2RightPadDPadWest(180),
  steamV2RightPadDPadEast(181),
  steamV2LeftTriggerPull(182),
  steamV2LeftTriggerClick(183),
  steamV2RightTriggerPull(184),
  steamV2RightTriggerClick(185),
  steamV2LeftStickMove(186),
  steamV2LeftStickClick(187),
  steamV2LeftStickDPadNorth(188),
  steamV2LeftStickDPadSouth(189),
  steamV2LeftStickDPadWest(190),
  steamV2LeftStickDPadEast(191),
  steamV2GyroMove(192),
  steamV2GyroPitch(193),
  steamV2GyroYaw(194),
  steamV2GyroRoll(195),
  switchA(196),
  switchB(197),
  switchX(198),
  switchY(199),
  switchLeftBumper(200),
  switchRightBumper(201),
  switchPlus(202),
  switchMinus(203),
  switchCapture(204),
  switchLeftTriggerPull(205),
  switchLeftTriggerClick(206),
  switchRightTriggerPull(207),
  switchRightTriggerClick(208),
  switchLeftStickMove(209),
  switchLeftStickClick(210),
  switchLeftStickDPadNorth(211),
  switchLeftStickDPadSouth(212),
  switchLeftStickDPadWest(213),
  switchLeftStickDPadEast(214),
  switchRightStickMove(215),
  switchRightStickClick(216),
  switchRightStickDPadNorth(217),
  switchRightStickDPadSouth(218),
  switchRightStickDPadWest(219),
  switchRightStickDPadEast(220),
  switchDPadNorth(221),
  switchDPadSouth(222),
  switchDPadWest(223),
  switchDPadEast(224),
  switchProGyroMove(225),
  switchProGyroPitch(226),
  switchProGyroYaw(227),
  switchProGyroRoll(228),
  switchRightGyroMove(229),
  switchRightGyroPitch(230),
  switchRightGyroYaw(231),
  switchRightGyroRoll(232),
  switchLeftGyroMove(233),
  switchLeftGyroPitch(234),
  switchLeftGyroYaw(235),
  switchLeftGyroRoll(236),
  switchLeftGripLower(237),
  switchLeftGripUpper(238),
  switchRightGripLower(239),
  switchRightGripUpper(240),
  ps4DPadMove(241),
  xBoxOneDPadMove(242),
  xBox360DPadMove(243),
  switchDPadMove(244),
  ps5X(245),
  ps5Circle(246),
  ps5Triangle(247),
  ps5Square(248),
  ps5LeftBumper(249),
  ps5RightBumper(250),
  ps5Option(251),
  ps5Create(252),
  ps5Mute(253),
  ps5LeftPadTouch(254),
  ps5LeftPadSwipe(255),
  ps5LeftPadClick(256),
  ps5LeftPadDPadNorth(257),
  ps5LeftPadDPadSouth(258),
  ps5LeftPadDPadWest(259),
  ps5LeftPadDPadEast(260),
  ps5RightPadTouch(261),
  ps5RightPadSwipe(262),
  ps5RightPadClick(263),
  ps5RightPadDPadNorth(264),
  ps5RightPadDPadSouth(265),
  ps5RightPadDPadWest(266),
  ps5RightPadDPadEast(267),
  ps5CenterPadTouch(268),
  ps5CenterPadSwipe(269),
  ps5CenterPadClick(270),
  ps5CenterPadDPadNorth(271),
  ps5CenterPadDPadSouth(272),
  ps5CenterPadDPadWest(273),
  ps5CenterPadDPadEast(274),
  ps5LeftTriggerPull(275),
  ps5LeftTriggerClick(276),
  ps5RightTriggerPull(277),
  ps5RightTriggerClick(278),
  ps5LeftStickMove(279),
  ps5LeftStickClick(280),
  ps5LeftStickDPadNorth(281),
  ps5LeftStickDPadSouth(282),
  ps5LeftStickDPadWest(283),
  ps5LeftStickDPadEast(284),
  ps5RightStickMove(285),
  ps5RightStickClick(286),
  ps5RightStickDPadNorth(287),
  ps5RightStickDPadSouth(288),
  ps5RightStickDPadWest(289),
  ps5RightStickDPadEast(290),
  ps5DPadMove(291),
  ps5DPadNorth(292),
  ps5DPadSouth(293),
  ps5DPadWest(294),
  ps5DPadEast(295),
  ps5GyroMove(296),
  ps5GyroPitch(297),
  ps5GyroYaw(298),
  ps5GyroRoll(299),
  xBoxOneLeftGripLower(300),
  xBoxOneLeftGripUpper(301),
  xBoxOneRightGripLower(302),
  xBoxOneRightGripUpper(303),
  xBoxOneShare(304),
  steamDeckA(305),
  steamDeckB(306),
  steamDeckX(307),
  steamDeckY(308),
  steamDeckL1(309),
  steamDeckR1(310),
  steamDeckMenu(311),
  steamDeckView(312),
  steamDeckLeftPadTouch(313),
  steamDeckLeftPadSwipe(314),
  steamDeckLeftPadClick(315),
  steamDeckLeftPadDPadNorth(316),
  steamDeckLeftPadDPadSouth(317),
  steamDeckLeftPadDPadWest(318),
  steamDeckLeftPadDPadEast(319),
  steamDeckRightPadTouch(320),
  steamDeckRightPadSwipe(321),
  steamDeckRightPadClick(322),
  steamDeckRightPadDPadNorth(323),
  steamDeckRightPadDPadSouth(324),
  steamDeckRightPadDPadWest(325),
  steamDeckRightPadDPadEast(326),
  steamDeckL2SoftPull(327),
  steamDeckL2(328),
  steamDeckR2SoftPull(329),
  steamDeckR2(330),
  steamDeckLeftStickMove(331),
  steamDeckL3(332),
  steamDeckLeftStickDPadNorth(333),
  steamDeckLeftStickDPadSouth(334),
  steamDeckLeftStickDPadWest(335),
  steamDeckLeftStickDPadEast(336),
  steamDeckLeftStickTouch(337),
  steamDeckRightStickMove(338),
  steamDeckR3(339),
  steamDeckRightStickDPadNorth(340),
  steamDeckRightStickDPadSouth(341),
  steamDeckRightStickDPadWest(342),
  steamDeckRightStickDPadEast(343),
  steamDeckRightStickTouch(344),
  steamDeckL4(345),
  steamDeckR4(346),
  steamDeckL5(347),
  steamDeckR5(348),
  steamDeckDPadMove(349),
  steamDeckDPadNorth(350),
  steamDeckDPadSouth(351),
  steamDeckDPadWest(352),
  steamDeckDPadEast(353),
  steamDeckGyroMove(354),
  steamDeckGyroPitch(355),
  steamDeckGyroYaw(356),
  steamDeckGyroRoll(357),
  steamDeckReserved1(358),
  steamDeckReserved2(359),
  steamDeckReserved3(360),
  steamDeckReserved4(361),
  steamDeckReserved5(362),
  steamDeckReserved6(363),
  steamDeckReserved7(364),
  steamDeckReserved8(365),
  steamDeckReserved9(366),
  steamDeckReserved10(367),
  steamDeckReserved11(368),
  steamDeckReserved12(369),
  steamDeckReserved13(370),
  steamDeckReserved14(371),
  steamDeckReserved15(372),
  steamDeckReserved16(373),
  steamDeckReserved17(374),
  steamDeckReserved18(375),
  steamDeckReserved19(376),
  steamDeckReserved20(377),
  count(378),
  maximumPossibleValue(32767),
  ;

  final int value;

  const EControllerActionOrigin(this.value);

  factory EControllerActionOrigin.fromValue(int value) {
    switch (value) {
      case 0:
        return EControllerActionOrigin.none;
      case 1:
        return EControllerActionOrigin.a;
      case 2:
        return EControllerActionOrigin.b;
      case 3:
        return EControllerActionOrigin.x;
      case 4:
        return EControllerActionOrigin.y;
      case 5:
        return EControllerActionOrigin.leftBumper;
      case 6:
        return EControllerActionOrigin.rightBumper;
      case 7:
        return EControllerActionOrigin.leftGrip;
      case 8:
        return EControllerActionOrigin.rightGrip;
      case 9:
        return EControllerActionOrigin.start;
      case 10:
        return EControllerActionOrigin.back;
      case 11:
        return EControllerActionOrigin.leftPadTouch;
      case 12:
        return EControllerActionOrigin.leftPadSwipe;
      case 13:
        return EControllerActionOrigin.leftPadClick;
      case 14:
        return EControllerActionOrigin.leftPadDPadNorth;
      case 15:
        return EControllerActionOrigin.leftPadDPadSouth;
      case 16:
        return EControllerActionOrigin.leftPadDPadWest;
      case 17:
        return EControllerActionOrigin.leftPadDPadEast;
      case 18:
        return EControllerActionOrigin.rightPadTouch;
      case 19:
        return EControllerActionOrigin.rightPadSwipe;
      case 20:
        return EControllerActionOrigin.rightPadClick;
      case 21:
        return EControllerActionOrigin.rightPadDPadNorth;
      case 22:
        return EControllerActionOrigin.rightPadDPadSouth;
      case 23:
        return EControllerActionOrigin.rightPadDPadWest;
      case 24:
        return EControllerActionOrigin.rightPadDPadEast;
      case 25:
        return EControllerActionOrigin.leftTriggerPull;
      case 26:
        return EControllerActionOrigin.leftTriggerClick;
      case 27:
        return EControllerActionOrigin.rightTriggerPull;
      case 28:
        return EControllerActionOrigin.rightTriggerClick;
      case 29:
        return EControllerActionOrigin.leftStickMove;
      case 30:
        return EControllerActionOrigin.leftStickClick;
      case 31:
        return EControllerActionOrigin.leftStickDPadNorth;
      case 32:
        return EControllerActionOrigin.leftStickDPadSouth;
      case 33:
        return EControllerActionOrigin.leftStickDPadWest;
      case 34:
        return EControllerActionOrigin.leftStickDPadEast;
      case 35:
        return EControllerActionOrigin.gyroMove;
      case 36:
        return EControllerActionOrigin.gyroPitch;
      case 37:
        return EControllerActionOrigin.gyroYaw;
      case 38:
        return EControllerActionOrigin.gyroRoll;
      case 39:
        return EControllerActionOrigin.ps4X;
      case 40:
        return EControllerActionOrigin.ps4Circle;
      case 41:
        return EControllerActionOrigin.ps4Triangle;
      case 42:
        return EControllerActionOrigin.ps4Square;
      case 43:
        return EControllerActionOrigin.ps4LeftBumper;
      case 44:
        return EControllerActionOrigin.ps4RightBumper;
      case 45:
        return EControllerActionOrigin.ps4Options;
      case 46:
        return EControllerActionOrigin.ps4Share;
      case 47:
        return EControllerActionOrigin.ps4LeftPadTouch;
      case 48:
        return EControllerActionOrigin.ps4LeftPadSwipe;
      case 49:
        return EControllerActionOrigin.ps4LeftPadClick;
      case 50:
        return EControllerActionOrigin.ps4LeftPadDPadNorth;
      case 51:
        return EControllerActionOrigin.ps4LeftPadDPadSouth;
      case 52:
        return EControllerActionOrigin.ps4LeftPadDPadWest;
      case 53:
        return EControllerActionOrigin.ps4LeftPadDPadEast;
      case 54:
        return EControllerActionOrigin.ps4RightPadTouch;
      case 55:
        return EControllerActionOrigin.ps4RightPadSwipe;
      case 56:
        return EControllerActionOrigin.ps4RightPadClick;
      case 57:
        return EControllerActionOrigin.ps4RightPadDPadNorth;
      case 58:
        return EControllerActionOrigin.ps4RightPadDPadSouth;
      case 59:
        return EControllerActionOrigin.ps4RightPadDPadWest;
      case 60:
        return EControllerActionOrigin.ps4RightPadDPadEast;
      case 61:
        return EControllerActionOrigin.ps4CenterPadTouch;
      case 62:
        return EControllerActionOrigin.ps4CenterPadSwipe;
      case 63:
        return EControllerActionOrigin.ps4CenterPadClick;
      case 64:
        return EControllerActionOrigin.ps4CenterPadDPadNorth;
      case 65:
        return EControllerActionOrigin.ps4CenterPadDPadSouth;
      case 66:
        return EControllerActionOrigin.ps4CenterPadDPadWest;
      case 67:
        return EControllerActionOrigin.ps4CenterPadDPadEast;
      case 68:
        return EControllerActionOrigin.ps4LeftTriggerPull;
      case 69:
        return EControllerActionOrigin.ps4LeftTriggerClick;
      case 70:
        return EControllerActionOrigin.ps4RightTriggerPull;
      case 71:
        return EControllerActionOrigin.ps4RightTriggerClick;
      case 72:
        return EControllerActionOrigin.ps4LeftStickMove;
      case 73:
        return EControllerActionOrigin.ps4LeftStickClick;
      case 74:
        return EControllerActionOrigin.ps4LeftStickDPadNorth;
      case 75:
        return EControllerActionOrigin.ps4LeftStickDPadSouth;
      case 76:
        return EControllerActionOrigin.ps4LeftStickDPadWest;
      case 77:
        return EControllerActionOrigin.ps4LeftStickDPadEast;
      case 78:
        return EControllerActionOrigin.ps4RightStickMove;
      case 79:
        return EControllerActionOrigin.ps4RightStickClick;
      case 80:
        return EControllerActionOrigin.ps4RightStickDPadNorth;
      case 81:
        return EControllerActionOrigin.ps4RightStickDPadSouth;
      case 82:
        return EControllerActionOrigin.ps4RightStickDPadWest;
      case 83:
        return EControllerActionOrigin.ps4RightStickDPadEast;
      case 84:
        return EControllerActionOrigin.ps4DPadNorth;
      case 85:
        return EControllerActionOrigin.ps4DPadSouth;
      case 86:
        return EControllerActionOrigin.ps4DPadWest;
      case 87:
        return EControllerActionOrigin.ps4DPadEast;
      case 88:
        return EControllerActionOrigin.ps4GyroMove;
      case 89:
        return EControllerActionOrigin.ps4GyroPitch;
      case 90:
        return EControllerActionOrigin.ps4GyroYaw;
      case 91:
        return EControllerActionOrigin.ps4GyroRoll;
      case 92:
        return EControllerActionOrigin.xBoxOneA;
      case 93:
        return EControllerActionOrigin.xBoxOneB;
      case 94:
        return EControllerActionOrigin.xBoxOneX;
      case 95:
        return EControllerActionOrigin.xBoxOneY;
      case 96:
        return EControllerActionOrigin.xBoxOneLeftBumper;
      case 97:
        return EControllerActionOrigin.xBoxOneRightBumper;
      case 98:
        return EControllerActionOrigin.xBoxOneMenu;
      case 99:
        return EControllerActionOrigin.xBoxOneView;
      case 100:
        return EControllerActionOrigin.xBoxOneLeftTriggerPull;
      case 101:
        return EControllerActionOrigin.xBoxOneLeftTriggerClick;
      case 102:
        return EControllerActionOrigin.xBoxOneRightTriggerPull;
      case 103:
        return EControllerActionOrigin.xBoxOneRightTriggerClick;
      case 104:
        return EControllerActionOrigin.xBoxOneLeftStickMove;
      case 105:
        return EControllerActionOrigin.xBoxOneLeftStickClick;
      case 106:
        return EControllerActionOrigin.xBoxOneLeftStickDPadNorth;
      case 107:
        return EControllerActionOrigin.xBoxOneLeftStickDPadSouth;
      case 108:
        return EControllerActionOrigin.xBoxOneLeftStickDPadWest;
      case 109:
        return EControllerActionOrigin.xBoxOneLeftStickDPadEast;
      case 110:
        return EControllerActionOrigin.xBoxOneRightStickMove;
      case 111:
        return EControllerActionOrigin.xBoxOneRightStickClick;
      case 112:
        return EControllerActionOrigin.xBoxOneRightStickDPadNorth;
      case 113:
        return EControllerActionOrigin.xBoxOneRightStickDPadSouth;
      case 114:
        return EControllerActionOrigin.xBoxOneRightStickDPadWest;
      case 115:
        return EControllerActionOrigin.xBoxOneRightStickDPadEast;
      case 116:
        return EControllerActionOrigin.xBoxOneDPadNorth;
      case 117:
        return EControllerActionOrigin.xBoxOneDPadSouth;
      case 118:
        return EControllerActionOrigin.xBoxOneDPadWest;
      case 119:
        return EControllerActionOrigin.xBoxOneDPadEast;
      case 120:
        return EControllerActionOrigin.xBox360A;
      case 121:
        return EControllerActionOrigin.xBox360B;
      case 122:
        return EControllerActionOrigin.xBox360X;
      case 123:
        return EControllerActionOrigin.xBox360Y;
      case 124:
        return EControllerActionOrigin.xBox360LeftBumper;
      case 125:
        return EControllerActionOrigin.xBox360RightBumper;
      case 126:
        return EControllerActionOrigin.xBox360Start;
      case 127:
        return EControllerActionOrigin.xBox360Back;
      case 128:
        return EControllerActionOrigin.xBox360LeftTriggerPull;
      case 129:
        return EControllerActionOrigin.xBox360LeftTriggerClick;
      case 130:
        return EControllerActionOrigin.xBox360RightTriggerPull;
      case 131:
        return EControllerActionOrigin.xBox360RightTriggerClick;
      case 132:
        return EControllerActionOrigin.xBox360LeftStickMove;
      case 133:
        return EControllerActionOrigin.xBox360LeftStickClick;
      case 134:
        return EControllerActionOrigin.xBox360LeftStickDPadNorth;
      case 135:
        return EControllerActionOrigin.xBox360LeftStickDPadSouth;
      case 136:
        return EControllerActionOrigin.xBox360LeftStickDPadWest;
      case 137:
        return EControllerActionOrigin.xBox360LeftStickDPadEast;
      case 138:
        return EControllerActionOrigin.xBox360RightStickMove;
      case 139:
        return EControllerActionOrigin.xBox360RightStickClick;
      case 140:
        return EControllerActionOrigin.xBox360RightStickDPadNorth;
      case 141:
        return EControllerActionOrigin.xBox360RightStickDPadSouth;
      case 142:
        return EControllerActionOrigin.xBox360RightStickDPadWest;
      case 143:
        return EControllerActionOrigin.xBox360RightStickDPadEast;
      case 144:
        return EControllerActionOrigin.xBox360DPadNorth;
      case 145:
        return EControllerActionOrigin.xBox360DPadSouth;
      case 146:
        return EControllerActionOrigin.xBox360DPadWest;
      case 147:
        return EControllerActionOrigin.xBox360DPadEast;
      case 148:
        return EControllerActionOrigin.steamV2A;
      case 149:
        return EControllerActionOrigin.steamV2B;
      case 150:
        return EControllerActionOrigin.steamV2X;
      case 151:
        return EControllerActionOrigin.steamV2Y;
      case 152:
        return EControllerActionOrigin.steamV2LeftBumper;
      case 153:
        return EControllerActionOrigin.steamV2RightBumper;
      case 154:
        return EControllerActionOrigin.steamV2LeftGripLower;
      case 155:
        return EControllerActionOrigin.steamV2LeftGripUpper;
      case 156:
        return EControllerActionOrigin.steamV2RightGripLower;
      case 157:
        return EControllerActionOrigin.steamV2RightGripUpper;
      case 158:
        return EControllerActionOrigin.steamV2LeftBumperPressure;
      case 159:
        return EControllerActionOrigin.steamV2RightBumperPressure;
      case 160:
        return EControllerActionOrigin.steamV2LeftGripPressure;
      case 161:
        return EControllerActionOrigin.steamV2RightGripPressure;
      case 162:
        return EControllerActionOrigin.steamV2LeftGripUpperPressure;
      case 163:
        return EControllerActionOrigin.steamV2RightGripUpperPressure;
      case 164:
        return EControllerActionOrigin.steamV2Start;
      case 165:
        return EControllerActionOrigin.steamV2Back;
      case 166:
        return EControllerActionOrigin.steamV2LeftPadTouch;
      case 167:
        return EControllerActionOrigin.steamV2LeftPadSwipe;
      case 168:
        return EControllerActionOrigin.steamV2LeftPadClick;
      case 169:
        return EControllerActionOrigin.steamV2LeftPadPressure;
      case 170:
        return EControllerActionOrigin.steamV2LeftPadDPadNorth;
      case 171:
        return EControllerActionOrigin.steamV2LeftPadDPadSouth;
      case 172:
        return EControllerActionOrigin.steamV2LeftPadDPadWest;
      case 173:
        return EControllerActionOrigin.steamV2LeftPadDPadEast;
      case 174:
        return EControllerActionOrigin.steamV2RightPadTouch;
      case 175:
        return EControllerActionOrigin.steamV2RightPadSwipe;
      case 176:
        return EControllerActionOrigin.steamV2RightPadClick;
      case 177:
        return EControllerActionOrigin.steamV2RightPadPressure;
      case 178:
        return EControllerActionOrigin.steamV2RightPadDPadNorth;
      case 179:
        return EControllerActionOrigin.steamV2RightPadDPadSouth;
      case 180:
        return EControllerActionOrigin.steamV2RightPadDPadWest;
      case 181:
        return EControllerActionOrigin.steamV2RightPadDPadEast;
      case 182:
        return EControllerActionOrigin.steamV2LeftTriggerPull;
      case 183:
        return EControllerActionOrigin.steamV2LeftTriggerClick;
      case 184:
        return EControllerActionOrigin.steamV2RightTriggerPull;
      case 185:
        return EControllerActionOrigin.steamV2RightTriggerClick;
      case 186:
        return EControllerActionOrigin.steamV2LeftStickMove;
      case 187:
        return EControllerActionOrigin.steamV2LeftStickClick;
      case 188:
        return EControllerActionOrigin.steamV2LeftStickDPadNorth;
      case 189:
        return EControllerActionOrigin.steamV2LeftStickDPadSouth;
      case 190:
        return EControllerActionOrigin.steamV2LeftStickDPadWest;
      case 191:
        return EControllerActionOrigin.steamV2LeftStickDPadEast;
      case 192:
        return EControllerActionOrigin.steamV2GyroMove;
      case 193:
        return EControllerActionOrigin.steamV2GyroPitch;
      case 194:
        return EControllerActionOrigin.steamV2GyroYaw;
      case 195:
        return EControllerActionOrigin.steamV2GyroRoll;
      case 196:
        return EControllerActionOrigin.switchA;
      case 197:
        return EControllerActionOrigin.switchB;
      case 198:
        return EControllerActionOrigin.switchX;
      case 199:
        return EControllerActionOrigin.switchY;
      case 200:
        return EControllerActionOrigin.switchLeftBumper;
      case 201:
        return EControllerActionOrigin.switchRightBumper;
      case 202:
        return EControllerActionOrigin.switchPlus;
      case 203:
        return EControllerActionOrigin.switchMinus;
      case 204:
        return EControllerActionOrigin.switchCapture;
      case 205:
        return EControllerActionOrigin.switchLeftTriggerPull;
      case 206:
        return EControllerActionOrigin.switchLeftTriggerClick;
      case 207:
        return EControllerActionOrigin.switchRightTriggerPull;
      case 208:
        return EControllerActionOrigin.switchRightTriggerClick;
      case 209:
        return EControllerActionOrigin.switchLeftStickMove;
      case 210:
        return EControllerActionOrigin.switchLeftStickClick;
      case 211:
        return EControllerActionOrigin.switchLeftStickDPadNorth;
      case 212:
        return EControllerActionOrigin.switchLeftStickDPadSouth;
      case 213:
        return EControllerActionOrigin.switchLeftStickDPadWest;
      case 214:
        return EControllerActionOrigin.switchLeftStickDPadEast;
      case 215:
        return EControllerActionOrigin.switchRightStickMove;
      case 216:
        return EControllerActionOrigin.switchRightStickClick;
      case 217:
        return EControllerActionOrigin.switchRightStickDPadNorth;
      case 218:
        return EControllerActionOrigin.switchRightStickDPadSouth;
      case 219:
        return EControllerActionOrigin.switchRightStickDPadWest;
      case 220:
        return EControllerActionOrigin.switchRightStickDPadEast;
      case 221:
        return EControllerActionOrigin.switchDPadNorth;
      case 222:
        return EControllerActionOrigin.switchDPadSouth;
      case 223:
        return EControllerActionOrigin.switchDPadWest;
      case 224:
        return EControllerActionOrigin.switchDPadEast;
      case 225:
        return EControllerActionOrigin.switchProGyroMove;
      case 226:
        return EControllerActionOrigin.switchProGyroPitch;
      case 227:
        return EControllerActionOrigin.switchProGyroYaw;
      case 228:
        return EControllerActionOrigin.switchProGyroRoll;
      case 229:
        return EControllerActionOrigin.switchRightGyroMove;
      case 230:
        return EControllerActionOrigin.switchRightGyroPitch;
      case 231:
        return EControllerActionOrigin.switchRightGyroYaw;
      case 232:
        return EControllerActionOrigin.switchRightGyroRoll;
      case 233:
        return EControllerActionOrigin.switchLeftGyroMove;
      case 234:
        return EControllerActionOrigin.switchLeftGyroPitch;
      case 235:
        return EControllerActionOrigin.switchLeftGyroYaw;
      case 236:
        return EControllerActionOrigin.switchLeftGyroRoll;
      case 237:
        return EControllerActionOrigin.switchLeftGripLower;
      case 238:
        return EControllerActionOrigin.switchLeftGripUpper;
      case 239:
        return EControllerActionOrigin.switchRightGripLower;
      case 240:
        return EControllerActionOrigin.switchRightGripUpper;
      case 241:
        return EControllerActionOrigin.ps4DPadMove;
      case 242:
        return EControllerActionOrigin.xBoxOneDPadMove;
      case 243:
        return EControllerActionOrigin.xBox360DPadMove;
      case 244:
        return EControllerActionOrigin.switchDPadMove;
      case 245:
        return EControllerActionOrigin.ps5X;
      case 246:
        return EControllerActionOrigin.ps5Circle;
      case 247:
        return EControllerActionOrigin.ps5Triangle;
      case 248:
        return EControllerActionOrigin.ps5Square;
      case 249:
        return EControllerActionOrigin.ps5LeftBumper;
      case 250:
        return EControllerActionOrigin.ps5RightBumper;
      case 251:
        return EControllerActionOrigin.ps5Option;
      case 252:
        return EControllerActionOrigin.ps5Create;
      case 253:
        return EControllerActionOrigin.ps5Mute;
      case 254:
        return EControllerActionOrigin.ps5LeftPadTouch;
      case 255:
        return EControllerActionOrigin.ps5LeftPadSwipe;
      case 256:
        return EControllerActionOrigin.ps5LeftPadClick;
      case 257:
        return EControllerActionOrigin.ps5LeftPadDPadNorth;
      case 258:
        return EControllerActionOrigin.ps5LeftPadDPadSouth;
      case 259:
        return EControllerActionOrigin.ps5LeftPadDPadWest;
      case 260:
        return EControllerActionOrigin.ps5LeftPadDPadEast;
      case 261:
        return EControllerActionOrigin.ps5RightPadTouch;
      case 262:
        return EControllerActionOrigin.ps5RightPadSwipe;
      case 263:
        return EControllerActionOrigin.ps5RightPadClick;
      case 264:
        return EControllerActionOrigin.ps5RightPadDPadNorth;
      case 265:
        return EControllerActionOrigin.ps5RightPadDPadSouth;
      case 266:
        return EControllerActionOrigin.ps5RightPadDPadWest;
      case 267:
        return EControllerActionOrigin.ps5RightPadDPadEast;
      case 268:
        return EControllerActionOrigin.ps5CenterPadTouch;
      case 269:
        return EControllerActionOrigin.ps5CenterPadSwipe;
      case 270:
        return EControllerActionOrigin.ps5CenterPadClick;
      case 271:
        return EControllerActionOrigin.ps5CenterPadDPadNorth;
      case 272:
        return EControllerActionOrigin.ps5CenterPadDPadSouth;
      case 273:
        return EControllerActionOrigin.ps5CenterPadDPadWest;
      case 274:
        return EControllerActionOrigin.ps5CenterPadDPadEast;
      case 275:
        return EControllerActionOrigin.ps5LeftTriggerPull;
      case 276:
        return EControllerActionOrigin.ps5LeftTriggerClick;
      case 277:
        return EControllerActionOrigin.ps5RightTriggerPull;
      case 278:
        return EControllerActionOrigin.ps5RightTriggerClick;
      case 279:
        return EControllerActionOrigin.ps5LeftStickMove;
      case 280:
        return EControllerActionOrigin.ps5LeftStickClick;
      case 281:
        return EControllerActionOrigin.ps5LeftStickDPadNorth;
      case 282:
        return EControllerActionOrigin.ps5LeftStickDPadSouth;
      case 283:
        return EControllerActionOrigin.ps5LeftStickDPadWest;
      case 284:
        return EControllerActionOrigin.ps5LeftStickDPadEast;
      case 285:
        return EControllerActionOrigin.ps5RightStickMove;
      case 286:
        return EControllerActionOrigin.ps5RightStickClick;
      case 287:
        return EControllerActionOrigin.ps5RightStickDPadNorth;
      case 288:
        return EControllerActionOrigin.ps5RightStickDPadSouth;
      case 289:
        return EControllerActionOrigin.ps5RightStickDPadWest;
      case 290:
        return EControllerActionOrigin.ps5RightStickDPadEast;
      case 291:
        return EControllerActionOrigin.ps5DPadMove;
      case 292:
        return EControllerActionOrigin.ps5DPadNorth;
      case 293:
        return EControllerActionOrigin.ps5DPadSouth;
      case 294:
        return EControllerActionOrigin.ps5DPadWest;
      case 295:
        return EControllerActionOrigin.ps5DPadEast;
      case 296:
        return EControllerActionOrigin.ps5GyroMove;
      case 297:
        return EControllerActionOrigin.ps5GyroPitch;
      case 298:
        return EControllerActionOrigin.ps5GyroYaw;
      case 299:
        return EControllerActionOrigin.ps5GyroRoll;
      case 300:
        return EControllerActionOrigin.xBoxOneLeftGripLower;
      case 301:
        return EControllerActionOrigin.xBoxOneLeftGripUpper;
      case 302:
        return EControllerActionOrigin.xBoxOneRightGripLower;
      case 303:
        return EControllerActionOrigin.xBoxOneRightGripUpper;
      case 304:
        return EControllerActionOrigin.xBoxOneShare;
      case 305:
        return EControllerActionOrigin.steamDeckA;
      case 306:
        return EControllerActionOrigin.steamDeckB;
      case 307:
        return EControllerActionOrigin.steamDeckX;
      case 308:
        return EControllerActionOrigin.steamDeckY;
      case 309:
        return EControllerActionOrigin.steamDeckL1;
      case 310:
        return EControllerActionOrigin.steamDeckR1;
      case 311:
        return EControllerActionOrigin.steamDeckMenu;
      case 312:
        return EControllerActionOrigin.steamDeckView;
      case 313:
        return EControllerActionOrigin.steamDeckLeftPadTouch;
      case 314:
        return EControllerActionOrigin.steamDeckLeftPadSwipe;
      case 315:
        return EControllerActionOrigin.steamDeckLeftPadClick;
      case 316:
        return EControllerActionOrigin.steamDeckLeftPadDPadNorth;
      case 317:
        return EControllerActionOrigin.steamDeckLeftPadDPadSouth;
      case 318:
        return EControllerActionOrigin.steamDeckLeftPadDPadWest;
      case 319:
        return EControllerActionOrigin.steamDeckLeftPadDPadEast;
      case 320:
        return EControllerActionOrigin.steamDeckRightPadTouch;
      case 321:
        return EControllerActionOrigin.steamDeckRightPadSwipe;
      case 322:
        return EControllerActionOrigin.steamDeckRightPadClick;
      case 323:
        return EControllerActionOrigin.steamDeckRightPadDPadNorth;
      case 324:
        return EControllerActionOrigin.steamDeckRightPadDPadSouth;
      case 325:
        return EControllerActionOrigin.steamDeckRightPadDPadWest;
      case 326:
        return EControllerActionOrigin.steamDeckRightPadDPadEast;
      case 327:
        return EControllerActionOrigin.steamDeckL2SoftPull;
      case 328:
        return EControllerActionOrigin.steamDeckL2;
      case 329:
        return EControllerActionOrigin.steamDeckR2SoftPull;
      case 330:
        return EControllerActionOrigin.steamDeckR2;
      case 331:
        return EControllerActionOrigin.steamDeckLeftStickMove;
      case 332:
        return EControllerActionOrigin.steamDeckL3;
      case 333:
        return EControllerActionOrigin.steamDeckLeftStickDPadNorth;
      case 334:
        return EControllerActionOrigin.steamDeckLeftStickDPadSouth;
      case 335:
        return EControllerActionOrigin.steamDeckLeftStickDPadWest;
      case 336:
        return EControllerActionOrigin.steamDeckLeftStickDPadEast;
      case 337:
        return EControllerActionOrigin.steamDeckLeftStickTouch;
      case 338:
        return EControllerActionOrigin.steamDeckRightStickMove;
      case 339:
        return EControllerActionOrigin.steamDeckR3;
      case 340:
        return EControllerActionOrigin.steamDeckRightStickDPadNorth;
      case 341:
        return EControllerActionOrigin.steamDeckRightStickDPadSouth;
      case 342:
        return EControllerActionOrigin.steamDeckRightStickDPadWest;
      case 343:
        return EControllerActionOrigin.steamDeckRightStickDPadEast;
      case 344:
        return EControllerActionOrigin.steamDeckRightStickTouch;
      case 345:
        return EControllerActionOrigin.steamDeckL4;
      case 346:
        return EControllerActionOrigin.steamDeckR4;
      case 347:
        return EControllerActionOrigin.steamDeckL5;
      case 348:
        return EControllerActionOrigin.steamDeckR5;
      case 349:
        return EControllerActionOrigin.steamDeckDPadMove;
      case 350:
        return EControllerActionOrigin.steamDeckDPadNorth;
      case 351:
        return EControllerActionOrigin.steamDeckDPadSouth;
      case 352:
        return EControllerActionOrigin.steamDeckDPadWest;
      case 353:
        return EControllerActionOrigin.steamDeckDPadEast;
      case 354:
        return EControllerActionOrigin.steamDeckGyroMove;
      case 355:
        return EControllerActionOrigin.steamDeckGyroPitch;
      case 356:
        return EControllerActionOrigin.steamDeckGyroYaw;
      case 357:
        return EControllerActionOrigin.steamDeckGyroRoll;
      case 358:
        return EControllerActionOrigin.steamDeckReserved1;
      case 359:
        return EControllerActionOrigin.steamDeckReserved2;
      case 360:
        return EControllerActionOrigin.steamDeckReserved3;
      case 361:
        return EControllerActionOrigin.steamDeckReserved4;
      case 362:
        return EControllerActionOrigin.steamDeckReserved5;
      case 363:
        return EControllerActionOrigin.steamDeckReserved6;
      case 364:
        return EControllerActionOrigin.steamDeckReserved7;
      case 365:
        return EControllerActionOrigin.steamDeckReserved8;
      case 366:
        return EControllerActionOrigin.steamDeckReserved9;
      case 367:
        return EControllerActionOrigin.steamDeckReserved10;
      case 368:
        return EControllerActionOrigin.steamDeckReserved11;
      case 369:
        return EControllerActionOrigin.steamDeckReserved12;
      case 370:
        return EControllerActionOrigin.steamDeckReserved13;
      case 371:
        return EControllerActionOrigin.steamDeckReserved14;
      case 372:
        return EControllerActionOrigin.steamDeckReserved15;
      case 373:
        return EControllerActionOrigin.steamDeckReserved16;
      case 374:
        return EControllerActionOrigin.steamDeckReserved17;
      case 375:
        return EControllerActionOrigin.steamDeckReserved18;
      case 376:
        return EControllerActionOrigin.steamDeckReserved19;
      case 377:
        return EControllerActionOrigin.steamDeckReserved20;
      case 378:
        return EControllerActionOrigin.count;
      case 32767:
        return EControllerActionOrigin.maximumPossibleValue;
      default:
        throw "Unknown value for 'EControllerActionOrigin'. The value was: '$value'";
    }
  }
}
