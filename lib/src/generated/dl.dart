// ignore_for_file: public_member_api_docs, always_specify_types, avoid_positional_boolean_parameters, avoid_classes_with_only_static_members
import "dart:ffi";
import "dart:io";

DynamicLibrary dl = Platform.isWindows
    ? DynamicLibrary.open("./steam_api64.dll")
    : Platform.isLinux
        ? DynamicLibrary.open("./libsteam_api.so")
        : DynamicLibrary.open("./libsteam_api.dylib");
