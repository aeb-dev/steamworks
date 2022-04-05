// ignore_for_file: public_member_api_docs
typedef EVoiceResult = int;

class EVoiceResultEnum {
  static const int ok = 0;
  static const int notInitialized = 1;
  static const int notRecording = 2;
  static const int noData = 3;
  static const int bufferTooSmall = 4;
  static const int dataCorrupted = 5;
  static const int restricted = 6;
  static const int unsupportedCodec = 7;
  static const int receiverOutOfDate = 8;
  static const int receiverDidNotAnswer = 9;
}
