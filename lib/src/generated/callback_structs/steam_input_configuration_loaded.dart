import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInputConfigurationLoaded extends Struct {
  static int get callbackId => 2803;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external InputHandle deviceHandle;

  @UnsignedLongLong()
  external CSteamId mappingCreator;

  @UnsignedInt()
  external int majorRevision;

  @UnsignedInt()
  external int minorRevision;

  @Bool()
  external bool usesSteamInputApi;

  @Bool()
  external bool usesGamepadApi;
}

extension SteamInputConfigurationLoadedExtensions
    on Pointer<SteamInputConfigurationLoaded> {
  AppId get appId => ref.appId;

  InputHandle get deviceHandle => ref.deviceHandle;

  CSteamId get mappingCreator => ref.mappingCreator;

  int get majorRevision => ref.majorRevision;

  int get minorRevision => ref.minorRevision;

  bool get usesSteamInputApi => ref.usesSteamInputApi;

  bool get usesGamepadApi => ref.usesGamepadApi;
}
