// ignore_for_file: public_member_api_docs
typedef EBroadcastUploadResult = int;

class EBroadcastUploadResultEnum {
  static const int none = 0;
  static const int ok = 1;
  static const int initFailed = 2;
  static const int frameFailed = 3;
  static const int timeout = 4;
  static const int bandwidthExceeded = 5;
  static const int lowFps = 6;
  static const int missingKeyFrames = 7;
  static const int noConnection = 8;
  static const int relayFailed = 9;
  static const int settingsChanged = 10;
  static const int missingAudio = 11;
  static const int tooFarBehind = 12;
  static const int transcodeBehind = 13;
  static const int notAllowedToPlay = 14;
  static const int busy = 15;
  static const int banned = 16;
  static const int alreadyActive = 17;
  static const int forcedOff = 18;
  static const int audioBehind = 19;
  static const int shutdown = 20;
  static const int disconnect = 21;
  static const int videoInitFailed = 22;
  static const int audioInitFailed = 23;
}
