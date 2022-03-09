import "dart:ffi";
import "package:ffi/ffi.dart";
import "../steam_api.dart";
import "../typedefs.dart";
import "../enums/e_remote_storage_platform.dart";
import "../enums/e_ugc_read_action.dart";
import "../enums/e_remote_storage_published_file_visibility.dart";
import "../structs/steam_param_string_array.dart";
import "../enums/e_workshop_file_type.dart";
import "../enums/e_workshop_video_provider.dart";
import "../enums/e_workshop_file_action.dart";
import "../enums/e_workshop_enumeration_type.dart";

class SteamRemoteStorage extends Opaque {
  static Pointer<SteamRemoteStorage> steamRemoteStorage() => nullptr;
}

final _fileWrite = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  Int,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileWrite");

final _fileRead = dl.lookupFunction<
    Int Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  Int,
),
    int Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileRead");

final _fileWriteAsync = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileWriteAsync");

final _fileReadAsync = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  UnsignedInt,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  int,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileReadAsync");

final _fileReadAsyncComplete = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  SteamApiCall,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete");

final _fileForget = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileForget");

final _fileDelete = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileDelete");

final _fileShare = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileShare");

final _setSyncPlatforms = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Int32,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  ERemoteStoragePlatform,
)>("SteamAPI_ISteamRemoteStorage_SetSyncPlatforms");

final _fileWriteStreamOpen = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    UgcFileWriteStreamHandle Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen");

final _fileWriteStreamWriteChunk = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  UgcFileWriteStreamHandle,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk");

final _fileWriteStreamClose = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  UgcFileWriteStreamHandle,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamClose");

final _fileWriteStreamCancel = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  UgcFileWriteStreamHandle,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel");

final _fileExists = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileExists");

final _filePersisted = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FilePersisted");

final _getFileSize = dl.lookupFunction<
    Int Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    int Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_GetFileSize");

final _getFileTimestamp = dl.lookupFunction<
    LongLong Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    int Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_GetFileTimestamp");

final _getSyncPlatforms = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
),
    ERemoteStoragePlatform Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_GetSyncPlatforms");

final _getFileCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamRemoteStorage>,
),
    int Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_GetFileCount");

final _getFileNameAndSize = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamRemoteStorage>,
  Int,
  Pointer<Int>,
),
    Pointer<Utf8> Function(
  Pointer<SteamRemoteStorage>,
  int,
  Pointer<Int>,
)>("SteamAPI_ISteamRemoteStorage_GetFileNameAndSize");

final _getQuota = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamRemoteStorage_GetQuota");

final _isCloudEnabledForAccount = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount");

final _isCloudEnabledForApp = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp");

final _setCloudEnabledForApp = dl.lookupFunction<
    Void Function(
  Pointer<SteamRemoteStorage>,
  Bool,
),
    void Function(
  Pointer<SteamRemoteStorage>,
  bool,
)>("SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp");

final _uGCDownload = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  UgcHandle,
  int,
)>("SteamAPI_ISteamRemoteStorage_UGCDownload");

final _getUGCDownloadProgress = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  UgcHandle,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress");

final _getUGCDetails = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<UnsignedInt>,
  Pointer<Pointer<Utf8>>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  UgcHandle,
  Pointer<UnsignedInt>,
  Pointer<Pointer<Utf8>>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamRemoteStorage_GetUGCDetails");

final _uGCRead = dl.lookupFunction<
    Int Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
  UnsignedInt,
  Int32,
),
    int Function(
  Pointer<SteamRemoteStorage>,
  UgcHandle,
  Pointer<Void>,
  int,
  int,
  EUgcReadAction,
)>("SteamAPI_ISteamRemoteStorage_UGCRead");

final _getCachedUGCCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamRemoteStorage>,
),
    int Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_GetCachedUGCCount");

final _getCachedUGCHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Int,
),
    UgcHandle Function(
  Pointer<SteamRemoteStorage>,
  int,
)>("SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle");

final _publishWorkshopFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Int32,
  Pointer<SteamParamStringArray>,
  Int32,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  AppId,
  Pointer<Utf8>,
  Pointer<Utf8>,
  ERemoteStoragePublishedFileVisibility,
  Pointer<SteamParamStringArray>,
  EWorkshopFileType,
)>("SteamAPI_ISteamRemoteStorage_PublishWorkshopFile");

final _createPublishedFileUpdateRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    PublishedFileUpdateHandle Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest");

final _updatePublishedFileFile = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile");

final _updatePublishedFilePreviewFile = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile");

final _updatePublishedFileTitle = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle");

final _updatePublishedFileDescription = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription");

final _updatePublishedFileVisibility = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Int32,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  ERemoteStoragePublishedFileVisibility,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility");

final _updatePublishedFileTags = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<SteamParamStringArray>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags");

final _commitPublishedFileUpdate = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
)>("SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate");

final _getPublishedFileDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
  int,
)>("SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails");

final _deletePublishedFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_DeletePublishedFile");

final _enumerateUserPublishedFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  int,
)>("SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles");

final _subscribePublishedFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_SubscribePublishedFile");

final _enumerateUserSubscribedFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  int,
)>("SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles");

final _unsubscribePublishedFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile");

final _updatePublishedFileSetChangeDescription = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription");

final _getPublishedItemVoteDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails");

final _updateUserPublishedItemVote = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Bool,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
  bool,
)>("SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote");

final _getUserPublishedItemVoteDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails");

final _enumerateUserSharedWorkshopFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  CSteamId,
  int,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles");

final _publishVideo = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Int32,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Int32,
  Pointer<SteamParamStringArray>,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  EWorkshopVideoProvider,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  AppId,
  Pointer<Utf8>,
  Pointer<Utf8>,
  ERemoteStoragePublishedFileVisibility,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_PublishVideo");

final _setUserPublishedFileAction = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Int32,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  PublishedFileId,
  EWorkshopFileAction,
)>("SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction");

final _enumeratePublishedFilesByUserAction = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Int32,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  EWorkshopFileAction,
  int,
)>("SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction");

final _enumeratePublishedWorkshopFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  Int32,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  EWorkshopEnumerationType,
  int,
  int,
  int,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles");

final _uGCDownloadToLocation = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamRemoteStorage>,
  UgcHandle,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation");

final _getLocalFileChangeCount = dl.lookupFunction<
    Int Function(
  Pointer<SteamRemoteStorage>,
),
    int Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount");

final _getLocalFileChange = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<SteamRemoteStorage>,
  Int,
  Pointer<Int32>,
  Pointer<Int32>,
),
    Pointer<Utf8> Function(
  Pointer<SteamRemoteStorage>,
  int,
  Pointer<Int32>,
  Pointer<Int32>,
)>("SteamAPI_ISteamRemoteStorage_GetLocalFileChange");

final _beginFileWriteBatch = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch");

final _endFileWriteBatch = dl.lookupFunction<
    Bool Function(
  Pointer<SteamRemoteStorage>,
),
    bool Function(
  Pointer<SteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_EndFileWriteBatch");

extension SteamRemoteStorageExtensions on Pointer<SteamRemoteStorage> {
  bool fileWrite(
    Pointer<Utf8> pchFile,
    Pointer<Void> pvData,
    int cubData,
  ) =>
      _fileWrite.call(
        this,
        pchFile,
        pvData,
        cubData,
      );

  int fileRead(
    Pointer<Utf8> pchFile,
    Pointer<Void> pvData,
    int cubDataToRead,
  ) =>
      _fileRead.call(
        this,
        pchFile,
        pvData,
        cubDataToRead,
      );

  SteamApiCall fileWriteAsync(
    Pointer<Utf8> pchFile,
    Pointer<Void> pvData,
    int cubData,
  ) =>
      _fileWriteAsync.call(
        this,
        pchFile,
        pvData,
        cubData,
      );

  SteamApiCall fileReadAsync(
    Pointer<Utf8> pchFile,
    int nOffset,
    int cubToRead,
  ) =>
      _fileReadAsync.call(
        this,
        pchFile,
        nOffset,
        cubToRead,
      );

  bool fileReadAsyncComplete(
    SteamApiCall hReadCall,
    Pointer<Void> pvBuffer,
    int cubToRead,
  ) =>
      _fileReadAsyncComplete.call(
        this,
        hReadCall,
        pvBuffer,
        cubToRead,
      );

  bool fileForget(
    Pointer<Utf8> pchFile,
  ) =>
      _fileForget.call(
        this,
        pchFile,
      );

  bool fileDelete(
    Pointer<Utf8> pchFile,
  ) =>
      _fileDelete.call(
        this,
        pchFile,
      );

  SteamApiCall fileShare(
    Pointer<Utf8> pchFile,
  ) =>
      _fileShare.call(
        this,
        pchFile,
      );

  bool setSyncPlatforms(
    Pointer<Utf8> pchFile,
    ERemoteStoragePlatform eRemoteStoragePlatform,
  ) =>
      _setSyncPlatforms.call(
        this,
        pchFile,
        eRemoteStoragePlatform,
      );

  UgcFileWriteStreamHandle fileWriteStreamOpen(
    Pointer<Utf8> pchFile,
  ) =>
      _fileWriteStreamOpen.call(
        this,
        pchFile,
      );

  bool fileWriteStreamWriteChunk(
    UgcFileWriteStreamHandle writeHandle,
    Pointer<Void> pvData,
    int cubData,
  ) =>
      _fileWriteStreamWriteChunk.call(
        this,
        writeHandle,
        pvData,
        cubData,
      );

  bool fileWriteStreamClose(
    UgcFileWriteStreamHandle writeHandle,
  ) =>
      _fileWriteStreamClose.call(
        this,
        writeHandle,
      );

  bool fileWriteStreamCancel(
    UgcFileWriteStreamHandle writeHandle,
  ) =>
      _fileWriteStreamCancel.call(
        this,
        writeHandle,
      );

  bool fileExists(
    Pointer<Utf8> pchFile,
  ) =>
      _fileExists.call(
        this,
        pchFile,
      );

  bool filePersisted(
    Pointer<Utf8> pchFile,
  ) =>
      _filePersisted.call(
        this,
        pchFile,
      );

  int getFileSize(
    Pointer<Utf8> pchFile,
  ) =>
      _getFileSize.call(
        this,
        pchFile,
      );

  int getFileTimestamp(
    Pointer<Utf8> pchFile,
  ) =>
      _getFileTimestamp.call(
        this,
        pchFile,
      );

  ERemoteStoragePlatform getSyncPlatforms(
    Pointer<Utf8> pchFile,
  ) =>
      _getSyncPlatforms.call(
        this,
        pchFile,
      );

  int getFileCount() => _getFileCount.call(
        this,
      );

  Pointer<Utf8> getFileNameAndSize(
    int iFile,
    Pointer<Int> pnFileSizeInBytes,
  ) =>
      _getFileNameAndSize.call(
        this,
        iFile,
        pnFileSizeInBytes,
      );

  bool getQuota(
    Pointer<UnsignedLongLong> pnTotalBytes,
    Pointer<UnsignedLongLong> puAvailableBytes,
  ) =>
      _getQuota.call(
        this,
        pnTotalBytes,
        puAvailableBytes,
      );

  bool isCloudEnabledForAccount() => _isCloudEnabledForAccount.call(
        this,
      );

  bool isCloudEnabledForApp() => _isCloudEnabledForApp.call(
        this,
      );

  void setCloudEnabledForApp(
    bool bEnabled,
  ) =>
      _setCloudEnabledForApp.call(
        this,
        bEnabled,
      );

  SteamApiCall uGCDownload(
    UgcHandle hContent,
    int unPriority,
  ) =>
      _uGCDownload.call(
        this,
        hContent,
        unPriority,
      );

  bool getUGCDownloadProgress(
    UgcHandle hContent,
    Pointer<Int> pnBytesDownloaded,
    Pointer<Int> pnBytesExpected,
  ) =>
      _getUGCDownloadProgress.call(
        this,
        hContent,
        pnBytesDownloaded,
        pnBytesExpected,
      );

  bool getUGCDetails(
    UgcHandle hContent,
    Pointer<UnsignedInt> pnAppID,
    Pointer<Pointer<Utf8>> ppchName,
    Pointer<Int> pnFileSizeInBytes,
    Pointer<UnsignedLongLong> pSteamIDOwner,
  ) =>
      _getUGCDetails.call(
        this,
        hContent,
        pnAppID,
        ppchName,
        pnFileSizeInBytes,
        pSteamIDOwner,
      );

  int uGCRead(
    UgcHandle hContent,
    Pointer<Void> pvData,
    int cubDataToRead,
    int cOffset,
    EUgcReadAction eAction,
  ) =>
      _uGCRead.call(
        this,
        hContent,
        pvData,
        cubDataToRead,
        cOffset,
        eAction,
      );

  int getCachedUGCCount() => _getCachedUGCCount.call(
        this,
      );

  UgcHandle getCachedUGCHandle(
    int iCachedContent,
  ) =>
      _getCachedUGCHandle.call(
        this,
        iCachedContent,
      );

  SteamApiCall publishWorkshopFile(
    Pointer<Utf8> pchFile,
    Pointer<Utf8> pchPreviewFile,
    AppId nConsumerAppId,
    Pointer<Utf8> pchTitle,
    Pointer<Utf8> pchDescription,
    ERemoteStoragePublishedFileVisibility eVisibility,
    Pointer<SteamParamStringArray> pTags,
    EWorkshopFileType eWorkshopFileType,
  ) =>
      _publishWorkshopFile.call(
        this,
        pchFile,
        pchPreviewFile,
        nConsumerAppId,
        pchTitle,
        pchDescription,
        eVisibility,
        pTags,
        eWorkshopFileType,
      );

  PublishedFileUpdateHandle createPublishedFileUpdateRequest(
    PublishedFileId unPublishedFileId,
  ) =>
      _createPublishedFileUpdateRequest.call(
        this,
        unPublishedFileId,
      );

  bool updatePublishedFileFile(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> pchFile,
  ) =>
      _updatePublishedFileFile.call(
        this,
        updateHandle,
        pchFile,
      );

  bool updatePublishedFilePreviewFile(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> pchPreviewFile,
  ) =>
      _updatePublishedFilePreviewFile.call(
        this,
        updateHandle,
        pchPreviewFile,
      );

  bool updatePublishedFileTitle(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> pchTitle,
  ) =>
      _updatePublishedFileTitle.call(
        this,
        updateHandle,
        pchTitle,
      );

  bool updatePublishedFileDescription(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> pchDescription,
  ) =>
      _updatePublishedFileDescription.call(
        this,
        updateHandle,
        pchDescription,
      );

  bool updatePublishedFileVisibility(
    PublishedFileUpdateHandle updateHandle,
    ERemoteStoragePublishedFileVisibility eVisibility,
  ) =>
      _updatePublishedFileVisibility.call(
        this,
        updateHandle,
        eVisibility,
      );

  bool updatePublishedFileTags(
    PublishedFileUpdateHandle updateHandle,
    Pointer<SteamParamStringArray> pTags,
  ) =>
      _updatePublishedFileTags.call(
        this,
        updateHandle,
        pTags,
      );

  SteamApiCall commitPublishedFileUpdate(
    PublishedFileUpdateHandle updateHandle,
  ) =>
      _commitPublishedFileUpdate.call(
        this,
        updateHandle,
      );

  SteamApiCall getPublishedFileDetails(
    PublishedFileId unPublishedFileId,
    int unMaxSecondsOld,
  ) =>
      _getPublishedFileDetails.call(
        this,
        unPublishedFileId,
        unMaxSecondsOld,
      );

  SteamApiCall deletePublishedFile(
    PublishedFileId unPublishedFileId,
  ) =>
      _deletePublishedFile.call(
        this,
        unPublishedFileId,
      );

  SteamApiCall enumerateUserPublishedFiles(
    int unStartIndex,
  ) =>
      _enumerateUserPublishedFiles.call(
        this,
        unStartIndex,
      );

  SteamApiCall subscribePublishedFile(
    PublishedFileId unPublishedFileId,
  ) =>
      _subscribePublishedFile.call(
        this,
        unPublishedFileId,
      );

  SteamApiCall enumerateUserSubscribedFiles(
    int unStartIndex,
  ) =>
      _enumerateUserSubscribedFiles.call(
        this,
        unStartIndex,
      );

  SteamApiCall unsubscribePublishedFile(
    PublishedFileId unPublishedFileId,
  ) =>
      _unsubscribePublishedFile.call(
        this,
        unPublishedFileId,
      );

  bool updatePublishedFileSetChangeDescription(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> pchChangeDescription,
  ) =>
      _updatePublishedFileSetChangeDescription.call(
        this,
        updateHandle,
        pchChangeDescription,
      );

  SteamApiCall getPublishedItemVoteDetails(
    PublishedFileId unPublishedFileId,
  ) =>
      _getPublishedItemVoteDetails.call(
        this,
        unPublishedFileId,
      );

  SteamApiCall updateUserPublishedItemVote(
    PublishedFileId unPublishedFileId,
    bool bVoteUp,
  ) =>
      _updateUserPublishedItemVote.call(
        this,
        unPublishedFileId,
        bVoteUp,
      );

  SteamApiCall getUserPublishedItemVoteDetails(
    PublishedFileId unPublishedFileId,
  ) =>
      _getUserPublishedItemVoteDetails.call(
        this,
        unPublishedFileId,
      );

  SteamApiCall enumerateUserSharedWorkshopFiles(
    CSteamId steamId,
    int unStartIndex,
    Pointer<SteamParamStringArray> pRequiredTags,
    Pointer<SteamParamStringArray> pExcludedTags,
  ) =>
      _enumerateUserSharedWorkshopFiles.call(
        this,
        steamId,
        unStartIndex,
        pRequiredTags,
        pExcludedTags,
      );

  SteamApiCall publishVideo(
    EWorkshopVideoProvider eVideoProvider,
    Pointer<Utf8> pchVideoAccount,
    Pointer<Utf8> pchVideoIdentifier,
    Pointer<Utf8> pchPreviewFile,
    AppId nConsumerAppId,
    Pointer<Utf8> pchTitle,
    Pointer<Utf8> pchDescription,
    ERemoteStoragePublishedFileVisibility eVisibility,
    Pointer<SteamParamStringArray> pTags,
  ) =>
      _publishVideo.call(
        this,
        eVideoProvider,
        pchVideoAccount,
        pchVideoIdentifier,
        pchPreviewFile,
        nConsumerAppId,
        pchTitle,
        pchDescription,
        eVisibility,
        pTags,
      );

  SteamApiCall setUserPublishedFileAction(
    PublishedFileId unPublishedFileId,
    EWorkshopFileAction eAction,
  ) =>
      _setUserPublishedFileAction.call(
        this,
        unPublishedFileId,
        eAction,
      );

  SteamApiCall enumeratePublishedFilesByUserAction(
    EWorkshopFileAction eAction,
    int unStartIndex,
  ) =>
      _enumeratePublishedFilesByUserAction.call(
        this,
        eAction,
        unStartIndex,
      );

  SteamApiCall enumeratePublishedWorkshopFiles(
    EWorkshopEnumerationType eEnumerationType,
    int unStartIndex,
    int unCount,
    int unDays,
    Pointer<SteamParamStringArray> pTags,
    Pointer<SteamParamStringArray> pUserTags,
  ) =>
      _enumeratePublishedWorkshopFiles.call(
        this,
        eEnumerationType,
        unStartIndex,
        unCount,
        unDays,
        pTags,
        pUserTags,
      );

  SteamApiCall uGCDownloadToLocation(
    UgcHandle hContent,
    Pointer<Utf8> pchLocation,
    int unPriority,
  ) =>
      _uGCDownloadToLocation.call(
        this,
        hContent,
        pchLocation,
        unPriority,
      );

  int getLocalFileChangeCount() => _getLocalFileChangeCount.call(
        this,
      );

  Pointer<Utf8> getLocalFileChange(
    int iFile,
    Pointer<Int32> pEChangeType,
    Pointer<Int32> pEFilePathType,
  ) =>
      _getLocalFileChange.call(
        this,
        iFile,
        pEChangeType,
        pEFilePathType,
      );

  bool beginFileWriteBatch() => _beginFileWriteBatch.call(
        this,
      );

  bool endFileWriteBatch() => _endFileWriteBatch.call(
        this,
      );
}
