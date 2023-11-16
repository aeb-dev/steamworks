// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "../typedefs.dart";

@Packed(8)
final class GameOverlayActivated extends Struct {
  static int get callbackId => 331;

  @UnsignedChar()
  external int active;

  @Bool()
  external bool userInitiated;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external int dwOverlayPId;
}

extension GameOverlayActivatedExtensions on Pointer<GameOverlayActivated> {
  int get active => ref.active;

  bool get userInitiated => ref.userInitiated;

  AppId get appId => ref.appId;

  int get dwOverlayPId => ref.dwOverlayPId;
}
