// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EParentalFeatureAliasDart = int;
typedef EParentalFeatureAliasC = Int32;

enum EParentalFeature {
  invalid(0),
  store(1),
  community(2),
  profile(3),
  friends(4),
  news(5),
  trading(6),
  settings(7),
  console(8),
  browser(9),
  parentalSetup(10),
  library_(11),
  test(12),
  siteLicense(13),
  max(14),
  ;

  final int value;

  const EParentalFeature(this.value);

  factory EParentalFeature.fromValue(int value) {
    switch (value) {
      case 0:
        return EParentalFeature.invalid;
      case 1:
        return EParentalFeature.store;
      case 2:
        return EParentalFeature.community;
      case 3:
        return EParentalFeature.profile;
      case 4:
        return EParentalFeature.friends;
      case 5:
        return EParentalFeature.news;
      case 6:
        return EParentalFeature.trading;
      case 7:
        return EParentalFeature.settings;
      case 8:
        return EParentalFeature.console;
      case 9:
        return EParentalFeature.browser;
      case 10:
        return EParentalFeature.parentalSetup;
      case 11:
        return EParentalFeature.library_;
      case 12:
        return EParentalFeature.test;
      case 13:
        return EParentalFeature.siteLicense;
      case 14:
        return EParentalFeature.max;
      default:
        throw "Unknown value for 'EParentalFeature'. The value was: '$value'";
    }
  }
}
