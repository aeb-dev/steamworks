// ignore_for_file: avoid_print, unused_local_variable
import "package:steamworks/steamworks.dart";

Future<Never> main() async {
  SteamClient.init();

  CSteamId steamId = ISteamUser.userInstance.getSteamId();

  print("SteamId: $steamId");

  SteamApiCall callId = ISteamUserStats.userInstance.requestUserStats(steamId);
  print("SteamApiCall first: $callId");
  CallResult cr1 = CallResult<UserStatsReceived>(
    callId: callId,
    cb: (ptrUserStatus, hasFailed) {
      print("User stats first");
      print("GameId: ${ptrUserStatus.gameId}");
      print("SteamIdUser: ${ptrUserStatus.steamIdUser}");
    },
  )..register();

  callId = ISteamUserStats.userInstance.getNumberOfCurrentPlayers();
  print("SteamApiCall second: $callId");

  CallResult cr2 = CallResult<UserStatsReceived>(
    callId: callId,
    cb: (ptrUserStatus, hasFailed) {
      print("User stats second");
      print("GameId: ${ptrUserStatus.gameId}");
      print("SteamIdUser: ${ptrUserStatus.steamIdUser}");
    },
  )..register();

  Callback cb = Callback<PersonaStateChange>(
    cb: (a) {
      print("Persona state changed");
      print("GameId: ${a.steamId}");
      print("ChangeFlags: ${a.changeFlags}");
    },
  )..register();

  while (true) {
    SteamClient.runFrame();
    print("Running frames");
    await Future<void>.delayed(const Duration(milliseconds: 300));
  }
}
