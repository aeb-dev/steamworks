import "dart:ffi";
import "typedefs.dart";

DynamicLibrary dl =
    DynamicLibrary.open("C:/Repos/aeb-dev/steamworks/bin/steam_api64.dll");
final _init =
    dl.lookupFunction<Bool Function(), bool Function()>("SteamAPI_Init");
bool init() => _init.call();
final _shutdown =
    dl.lookupFunction<Void Function(), void Function()>("SteamAPI_Shutdown");
void shutdown() => _shutdown.call();
final _getHSteamPipe =
    dl.lookupFunction<Int32 Function(), HSteamPipe Function()>(
        "SteamAPI_GetHSteamPipe");
HSteamPipe getHSteamPipe() => _getHSteamPipe.call();
final _restartAppIfNecessary =
    dl.lookupFunction<Bool Function(Int32), bool Function(int)>(
        "SteamAPI_RestartAppIfNecessary");
bool restartAppIfNecessary(int appId) => _restartAppIfNecessary.call(appId);
