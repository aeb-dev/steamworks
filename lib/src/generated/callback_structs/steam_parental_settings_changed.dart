// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";

@Packed(4)
final class SteamParentalSettingsChanged extends Opaque {
  static int get callbackId => 5001;
}
