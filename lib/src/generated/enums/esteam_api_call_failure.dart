// ignore_for_file: public_member_api_docs
typedef ESteamApiCallFailure = int;

class ESteamApiCallFailureEnum {
  static const int none = -1;
  static const int steamGone = 0;
  static const int networkFailure = 1;
  static const int invalidHandle = 2;
  static const int mismatchedCallback = 3;
}
