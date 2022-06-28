// ignore_for_file: public_member_api_docs
import "dart:ffi";

typedef EWorkshopFileActionAliasDart = int;
typedef EWorkshopFileActionAliasC = Int32;

enum EWorkshopFileAction {
  played(0),
  completed(1),
  ;

  final int value;

  const EWorkshopFileAction(this.value);

  factory EWorkshopFileAction.fromValue(int value) {
    switch (value) {
      case 0:
        return EWorkshopFileAction.played;
      case 1:
        return EWorkshopFileAction.completed;
      default:
        throw "Unknown value for 'EWorkshopFileAction'. The value was: '$value'";
    }
  }
}
