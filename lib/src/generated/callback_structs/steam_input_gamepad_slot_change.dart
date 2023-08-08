// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/esteam_input_type.dart";
import "../typedefs.dart";

@Packed(4)
final class SteamInputGamepadSlotChange extends Struct {
  static int get callbackId => 2804;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external InputHandle deviceHandle;

  @Int32()
  external ESteamInputTypeAliasDart deviceType;

  @Int()
  external int oldGamepadSlot;

  @Int()
  external int newGamepadSlot;
}

extension SteamInputGamepadSlotChangeExtensions
    on Pointer<SteamInputGamepadSlotChange> {
  AppId get appId => ref.appId;

  InputHandle get deviceHandle => ref.deviceHandle;

  ESteamInputType get deviceType => ESteamInputType.fromValue(ref.deviceType);

  int get oldGamepadSlot => ref.oldGamepadSlot;

  int get newGamepadSlot => ref.newGamepadSlot;
}
