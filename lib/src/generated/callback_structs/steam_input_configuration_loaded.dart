import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(8)
class SteamInputConfigurationLoaded extends Struct {
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
