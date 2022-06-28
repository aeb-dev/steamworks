// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EChatMemberStateChangeAliasDart = int;
typedef EChatMemberStateChangeAliasC = Int32;

enum EChatMemberStateChange {
  entered(1),
  left(2),
  disconnected(4),
  kicked(8),
  banned(16),
  ;

  final int value;

  const EChatMemberStateChange(this.value);

  factory EChatMemberStateChange.fromValue(int value) {
    switch (value) {
      case 1:
        return EChatMemberStateChange.entered;
      case 2:
        return EChatMemberStateChange.left;
      case 4:
        return EChatMemberStateChange.disconnected;
      case 8:
        return EChatMemberStateChange.kicked;
      case 16:
        return EChatMemberStateChange.banned;
      default:
        throw "Unknown value for 'EChatMemberStateChange'. The value was: '$value'";
    }
  }
}
