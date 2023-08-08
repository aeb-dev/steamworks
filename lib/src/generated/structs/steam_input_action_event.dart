// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_input_action_event_type.dart";
import "../structs/analog_action.dart";
import "../typedefs.dart";

@Packed(1)
final class SteamInputActionEvent extends Struct {
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
