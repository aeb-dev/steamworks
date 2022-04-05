// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/esteam_input_action_event_type.dart";
import "../structs/analog_action.dart";
import "../typedefs.dart";

@Packed(1)
class SteamInputActionEvent extends Struct {
  @UnsignedLongLong()
  external InputHandle controllerHandle;

  @Int32()
  external ESteamInputActionEventType eventType;

  external AnalogAction analogAction;
}

extension SteamInputActionEventExtensions on Pointer<SteamInputActionEvent> {
  InputHandle get controllerHandle => ref.controllerHandle;

  ESteamInputActionEventType get eventType => ref.eventType;

  AnalogAction get analogAction => ref.analogAction;
}
