// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EVoiceResultAliasDart = int;
typedef EVoiceResultAliasC = Int32;

enum EVoiceResult {
  ok(0),
  notInitialized(1),
  notRecording(2),
  noData(3),
  bufferTooSmall(4),
  dataCorrupted(5),
  restricted(6),
  unsupportedCodec(7),
  receiverOutOfDate(8),
  receiverDidNotAnswer(9),
  ;

  final int value;

  const EVoiceResult(this.value);

  factory EVoiceResult.fromValue(int value) {
    switch (value) {
      case 0:
        return EVoiceResult.ok;
      case 1:
        return EVoiceResult.notInitialized;
      case 2:
        return EVoiceResult.notRecording;
      case 3:
        return EVoiceResult.noData;
      case 4:
        return EVoiceResult.bufferTooSmall;
      case 5:
        return EVoiceResult.dataCorrupted;
      case 6:
        return EVoiceResult.restricted;
      case 7:
        return EVoiceResult.unsupportedCodec;
      case 8:
        return EVoiceResult.receiverOutOfDate;
      case 9:
        return EVoiceResult.receiverDidNotAnswer;
      default:
        throw "Unknown value for 'EVoiceResult'. The value was: '$value'";
    }
  }
}
