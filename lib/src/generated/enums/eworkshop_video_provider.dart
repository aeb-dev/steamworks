// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EWorkshopVideoProviderAliasDart = int;
typedef EWorkshopVideoProviderAliasC = Int32;

enum EWorkshopVideoProvider {
  none(0),
  youtube(1),
  ;

  final int value;

  const EWorkshopVideoProvider(this.value);

  factory EWorkshopVideoProvider.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopVideoProvider.none;
      case 1:
        return EWorkshopVideoProvider.youtube;
      default:
        throw "Unknown value for 'EWorkshopVideoProvider'. The value was: '$value'";
    }
  }
}
