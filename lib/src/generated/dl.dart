// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "dart:io";

DynamicLibrary dl = Platform.isWindows
    ? DynamicLibrary.open("./steam_api64.dll")
    : Platform.isLinux
        ? DynamicLibrary.open("./libsteam_api.so")
        : DynamicLibrary.open("./libsteam_api.dylib");
