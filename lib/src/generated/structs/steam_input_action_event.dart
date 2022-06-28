// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

import "../enums/esteam_input_action_event_type.dart";
import "../structs/analog_action.dart";
import "../typedefs.dart";

@Packed(1)
class SteamInputActionEvent extends Struct {
  @UnsignedLongLong()
  external InputHandle controllerHandle;

  @Int32()
  external ESteamInputActionEventTypeAliasDart eventType;

  external AnalogAction analogAction;
}

extension SteamInputActionEventExtensions on Pointer<SteamInputActionEvent> {
  InputHandle get controllerHandle => ref.controllerHandle;

  ESteamInputActionEventType get eventType =>
      ESteamInputActionEventType.fromValue(ref.eventType);

  AnalogAction get analogAction => ref.analogAction;
}
