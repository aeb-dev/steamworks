/// Thrown when steam initialization fails
class SteamInitializationError extends Error {
  /// Content of the error message
  String message;

  /// Initializes [SteamInitializationError] with
  /// the given message
  SteamInitializationError({
    this.message = "",
  });
}
