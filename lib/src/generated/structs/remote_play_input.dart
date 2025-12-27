// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

import "../enums/eremote_play_input_type.dart";
import "../typedefs.dart";

@Packed(4)
final class RemotePlayInput extends Struct {
  @UnsignedInt()
  external RemotePlaySessionId sessionId;

  @Int32()
  external ERemotePlayInputTypeAliasDart type;

  @Array<Char>(56)
  external Array<Char> padding;
}

extension RemotePlayInputExtensions on Pointer<RemotePlayInput> {
  RemotePlaySessionId get sessionId => ref.sessionId;

  ERemotePlayInputType get type => ERemotePlayInputType.fromValue(ref.type);

  Array<Char> get padding => ref.padding;
}
