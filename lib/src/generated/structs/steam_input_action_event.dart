import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/e_steam_input_action_event_type.dart";
import "../structs/analog_action.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInputActionEvent extends Struct {
  @UnsignedLongLong()
  external InputHandle controllerHandle;

  @Int32()
  external ESteamInputActionEventType eEventType;

  external AnalogAction analogAction;
}
