// ignore_for_file: avoid_print, unused_local_variable
import "package:steamworks/steamworks.dart";

Future<Never> main() async {
  SteamClient.init();
  SteamClient steamClient = SteamClient.instance;

  CSteamId steamId = steamClient.steamUser.getSteamId();

  print("SteamId: $steamId");

  SteamApiCall callId = steamClient.steamUserStats.requestUserStats(steamId);
  print("SteamApiCall first: $callId");

  CallResult cr1 = steamClient.registerCallResult<UserStatsReceived>(
    asyncCallId: callId,
    cb: (ptrUserStatus, hasFailed) {
      print("User stats first");
      print("GameId: ${ptrUserStatus.gameId}");
      print("SteamIdUser: ${ptrUserStatus.steamIdUser}");
    },
  );

  callId = steamClient.steamUserStats.getNumberOfCurrentPlayers();
  print("SteamApiCall second: $callId");

  CallResult cr2 = steamClient.registerCallResult<UserStatsReceived>(
    asyncCallId: callId,
    cb: (ptrUserStatus, hasFailed) {
      print("User stats second");
      print("GameId: ${ptrUserStatus.gameId}");
      print("SteamIdUser: ${ptrUserStatus.steamIdUser}");
    },
  );

  Callback cb1 = steamClient.registerCallback<PersonaStateChange>(
    cb: (ptrPersona) {
      print("Persona state changed");
      print("GameId: ${ptrPersona.steamId}");
      print("ChangeFlags: ${ptrPersona.changeFlags}");
    },
  );

  while (true) {
    steamClient.runFrame();
    print("Running frames");
    await Future<void>.delayed(const Duration(milliseconds: 300));
  }
}
