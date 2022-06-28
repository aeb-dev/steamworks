// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EBroadcastUploadResultAliasDart = int;
typedef EBroadcastUploadResultAliasC = Int32;

enum EBroadcastUploadResult {
  none(0),
  ok(1),
  initFailed(2),
  frameFailed(3),
  timeout(4),
  bandwidthExceeded(5),
  lowFps(6),
  missingKeyFrames(7),
  noConnection(8),
  relayFailed(9),
  settingsChanged(10),
  missingAudio(11),
  tooFarBehind(12),
  transcodeBehind(13),
  notAllowedToPlay(14),
  busy(15),
  banned(16),
  alreadyActive(17),
  forcedOff(18),
  audioBehind(19),
  shutdown(20),
  disconnect(21),
  videoInitFailed(22),
  audioInitFailed(23),
  ;

  final int value;

  const EBroadcastUploadResult(this.value);

  factory EBroadcastUploadResult.fromValue(int value) {
    switch (value) {
      case 0:
        return EBroadcastUploadResult.none;
      case 1:
        return EBroadcastUploadResult.ok;
      case 2:
        return EBroadcastUploadResult.initFailed;
      case 3:
        return EBroadcastUploadResult.frameFailed;
      case 4:
        return EBroadcastUploadResult.timeout;
      case 5:
        return EBroadcastUploadResult.bandwidthExceeded;
      case 6:
        return EBroadcastUploadResult.lowFps;
      case 7:
        return EBroadcastUploadResult.missingKeyFrames;
      case 8:
        return EBroadcastUploadResult.noConnection;
      case 9:
        return EBroadcastUploadResult.relayFailed;
      case 10:
        return EBroadcastUploadResult.settingsChanged;
      case 11:
        return EBroadcastUploadResult.missingAudio;
      case 12:
        return EBroadcastUploadResult.tooFarBehind;
      case 13:
        return EBroadcastUploadResult.transcodeBehind;
      case 14:
        return EBroadcastUploadResult.notAllowedToPlay;
      case 15:
        return EBroadcastUploadResult.busy;
      case 16:
        return EBroadcastUploadResult.banned;
      case 17:
        return EBroadcastUploadResult.alreadyActive;
      case 18:
        return EBroadcastUploadResult.forcedOff;
      case 19:
        return EBroadcastUploadResult.audioBehind;
      case 20:
        return EBroadcastUploadResult.shutdown;
      case 21:
        return EBroadcastUploadResult.disconnect;
      case 22:
        return EBroadcastUploadResult.videoInitFailed;
      case 23:
        return EBroadcastUploadResult.audioInitFailed;
      default:
        throw "Unknown value for 'EBroadcastUploadResult'. The value was: '$value'";
    }
  }
}
