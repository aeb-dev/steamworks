// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eremote_storage_platform.dart";
import "../enums/eremote_storage_published_file_visibility.dart";
import "../enums/eugc_read_action.dart";
import "../enums/eworkshop_enumeration_type.dart";
import "../enums/eworkshop_file_action.dart";
import "../enums/eworkshop_file_type.dart";
import "../enums/eworkshop_video_provider.dart";
import "../structs/steam_param_string_array.dart";
import "../typedefs.dart";

final _steamRemoteStorage = dl.lookupFunction<
    Pointer<ISteamRemoteStorage> Function(),
    Pointer<ISteamRemoteStorage>
        Function()>("SteamAPI_SteamRemoteStorage_v016");

class ISteamRemoteStorage extends Opaque {
  static Pointer<ISteamRemoteStorage> get userInstance => _steamRemoteStorage();
}

final _fileWrite = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  Int,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileWrite");

final _fileRead = dl.lookupFunction<
    Int Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  Int,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileRead");

final _fileWriteAsync = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileWriteAsync");

final _fileReadAsync = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  UnsignedInt,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  int,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileReadAsync");

final _fileReadAsyncComplete = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Void>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  SteamApiCall,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete");

final _fileForget = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileForget");

final _fileDelete = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileDelete");

final _fileShare = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileShare");

final _setSyncPlatforms = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  Int32,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
  ERemoteStoragePlatform,
)>("SteamAPI_ISteamRemoteStorage_SetSyncPlatforms");

final _fileWriteStreamOpen = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    UgcFileWriteStreamHandle Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen");

final _fileWriteStreamWriteChunk = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  UgcFileWriteStreamHandle,
  Pointer<Void>,
  int,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk");

final _fileWriteStreamClose = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  UgcFileWriteStreamHandle,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamClose");

final _fileWriteStreamCancel = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  UgcFileWriteStreamHandle,
)>("SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel");

final _fileExists = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FileExists");

final _filePersisted = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_FilePersisted");

final _getFileSize = dl.lookupFunction<
    Int Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_GetFileSize");

final _getFileTimestamp = dl.lookupFunction<
    LongLong Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_GetFileTimestamp");

final _getSyncPlatforms = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
),
    ERemoteStoragePlatform Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_GetSyncPlatforms");

final _getFileCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamRemoteStorage>,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_GetFileCount");

final _getFileNameAndSize = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamRemoteStorage>,
  Int,
  Pointer<Int>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamRemoteStorage>,
  int,
  Pointer<Int>,
)>("SteamAPI_ISteamRemoteStorage_GetFileNameAndSize");

final _getQuota = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamRemoteStorage_GetQuota");

final _isCloudEnabledForAccount = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount");

final _isCloudEnabledForApp = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp");

final _setCloudEnabledForApp = dl.lookupFunction<
    Void Function(
  Pointer<ISteamRemoteStorage>,
  Bool,
),
    void Function(
  Pointer<ISteamRemoteStorage>,
  bool,
)>("SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp");

final _ugcDownload = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  UgcHandle,
  int,
)>("SteamAPI_ISteamRemoteStorage_UGCDownload");

final _getUgcDownloadProgress = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  UgcHandle,
  Pointer<Int>,
  Pointer<Int>,
)>("SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress");

final _getUgcDetails = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<UnsignedInt>,
  Pointer<Pointer<Utf8>>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  UgcHandle,
  Pointer<UnsignedInt>,
  Pointer<Pointer<Utf8>>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamRemoteStorage_GetUGCDetails");

final _ugcRead = dl.lookupFunction<
    Int Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Void>,
  Int,
  UnsignedInt,
  Int32,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
  UgcHandle,
  Pointer<Void>,
  int,
  int,
  EUgcReadAction,
)>("SteamAPI_ISteamRemoteStorage_UGCRead");

final _getCachedUgcCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamRemoteStorage>,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_GetCachedUGCCount");

final _getCachedUgcHandle = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Int,
),
    UgcHandle Function(
  Pointer<ISteamRemoteStorage>,
  int,
)>("SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle");

final _publishWorkshopFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
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
  Pointer<ISteamRemoteStorage>,
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
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    PublishedFileUpdateHandle Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest");

final _updatePublishedFileFile = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile");

final _updatePublishedFilePreviewFile = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile");

final _updatePublishedFileTitle = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle");

final _updatePublishedFileDescription = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription");

final _updatePublishedFileVisibility = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Int32,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  ERemoteStoragePublishedFileVisibility,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility");

final _updatePublishedFileTags = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<SteamParamStringArray>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags");

final _commitPublishedFileUpdate = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
)>("SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate");

final _getPublishedFileDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
  int,
)>("SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails");

final _deletePublishedFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_DeletePublishedFile");

final _enumerateUserPublishedFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  int,
)>("SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles");

final _subscribePublishedFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_SubscribePublishedFile");

final _enumerateUserSubscribedFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  int,
)>("SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles");

final _unsubscribePublishedFile = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile");

final _updatePublishedFileSetChangeDescription = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription");

final _getPublishedItemVoteDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails");

final _updateUserPublishedItemVote = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Bool,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
  bool,
)>("SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote");

final _getUserPublishedItemVoteDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
)>("SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails");

final _enumerateUserSharedWorkshopFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  CSteamId,
  int,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles");

final _publishVideo = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
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
  Pointer<ISteamRemoteStorage>,
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
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Int32,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  PublishedFileId,
  EWorkshopFileAction,
)>("SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction");

final _enumeratePublishedFilesByUserAction = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Int32,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  EWorkshopFileAction,
  int,
)>("SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction");

final _enumeratePublishedWorkshopFiles = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  Int32,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  EWorkshopEnumerationType,
  int,
  int,
  int,
  Pointer<SteamParamStringArray>,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles");

final _ugcDownloadToLocation = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamRemoteStorage>,
  UnsignedLongLong,
  Pointer<Utf8>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamRemoteStorage>,
  UgcHandle,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation");

final _getLocalFileChangeCount = dl.lookupFunction<
    Int Function(
  Pointer<ISteamRemoteStorage>,
),
    int Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount");

final _getLocalFileChange = dl.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ISteamRemoteStorage>,
  Int,
  Pointer<Int32>,
  Pointer<Int32>,
),
    Pointer<Utf8> Function(
  Pointer<ISteamRemoteStorage>,
  int,
  Pointer<Int32>,
  Pointer<Int32>,
)>("SteamAPI_ISteamRemoteStorage_GetLocalFileChange");

final _beginFileWriteBatch = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch");

final _endFileWriteBatch = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamRemoteStorage>,
),
    bool Function(
  Pointer<ISteamRemoteStorage>,
)>("SteamAPI_ISteamRemoteStorage_EndFileWriteBatch");

extension ISteamRemoteStorageExtensions on Pointer<ISteamRemoteStorage> {
  bool fileWrite(
    Pointer<Utf8> file,
    Pointer<Void> pvData,
    int cubData,
  ) =>
      _fileWrite.call(
        this,
        file,
        pvData,
        cubData,
      );

  int fileRead(
    Pointer<Utf8> file,
    Pointer<Void> pvData,
    int cubDataToRead,
  ) =>
      _fileRead.call(
        this,
        file,
        pvData,
        cubDataToRead,
      );

  SteamApiCall fileWriteAsync(
    Pointer<Utf8> file,
    Pointer<Void> pvData,
    int cubData,
  ) =>
      _fileWriteAsync.call(
        this,
        file,
        pvData,
        cubData,
      );

  SteamApiCall fileReadAsync(
    Pointer<Utf8> file,
    int nOffset,
    int cubToRead,
  ) =>
      _fileReadAsync.call(
        this,
        file,
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
    Pointer<Utf8> file,
  ) =>
      _fileForget.call(
        this,
        file,
      );

  bool fileDelete(
    Pointer<Utf8> file,
  ) =>
      _fileDelete.call(
        this,
        file,
      );

  SteamApiCall fileShare(
    Pointer<Utf8> file,
  ) =>
      _fileShare.call(
        this,
        file,
      );

  bool setSyncPlatforms(
    Pointer<Utf8> file,
    ERemoteStoragePlatform remoteStoragePlatform,
  ) =>
      _setSyncPlatforms.call(
        this,
        file,
        remoteStoragePlatform,
      );

  UgcFileWriteStreamHandle fileWriteStreamOpen(
    Pointer<Utf8> file,
  ) =>
      _fileWriteStreamOpen.call(
        this,
        file,
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
    Pointer<Utf8> file,
  ) =>
      _fileExists.call(
        this,
        file,
      );

  bool filePersisted(
    Pointer<Utf8> file,
  ) =>
      _filePersisted.call(
        this,
        file,
      );

  int getFileSize(
    Pointer<Utf8> file,
  ) =>
      _getFileSize.call(
        this,
        file,
      );

  int getFileTimestamp(
    Pointer<Utf8> file,
  ) =>
      _getFileTimestamp.call(
        this,
        file,
      );

  ERemoteStoragePlatform getSyncPlatforms(
    Pointer<Utf8> file,
  ) =>
      _getSyncPlatforms.call(
        this,
        file,
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
    bool enabled,
  ) =>
      _setCloudEnabledForApp.call(
        this,
        enabled,
      );

  SteamApiCall ugcDownload(
    UgcHandle hContent,
    int priority,
  ) =>
      _ugcDownload.call(
        this,
        hContent,
        priority,
      );

  bool getUgcDownloadProgress(
    UgcHandle hContent,
    Pointer<Int> pnBytesDownloaded,
    Pointer<Int> pnBytesExpected,
  ) =>
      _getUgcDownloadProgress.call(
        this,
        hContent,
        pnBytesDownloaded,
        pnBytesExpected,
      );

  bool getUgcDetails(
    UgcHandle hContent,
    Pointer<UnsignedInt> pnAppId,
    Pointer<Pointer<Utf8>> ppchName,
    Pointer<Int> pnFileSizeInBytes,
    Pointer<UnsignedLongLong> pSteamIdOwner,
  ) =>
      _getUgcDetails.call(
        this,
        hContent,
        pnAppId,
        ppchName,
        pnFileSizeInBytes,
        pSteamIdOwner,
      );

  int ugcRead(
    UgcHandle hContent,
    Pointer<Void> pvData,
    int cubDataToRead,
    int cOffset,
    EUgcReadAction action,
  ) =>
      _ugcRead.call(
        this,
        hContent,
        pvData,
        cubDataToRead,
        cOffset,
        action,
      );

  int getCachedUgcCount() => _getCachedUgcCount.call(
        this,
      );

  UgcHandle getCachedUgcHandle(
    int iCachedContent,
  ) =>
      _getCachedUgcHandle.call(
        this,
        iCachedContent,
      );

  SteamApiCall publishWorkshopFile(
    Pointer<Utf8> file,
    Pointer<Utf8> previewFile,
    AppId nConsumerAppId,
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    ERemoteStoragePublishedFileVisibility visibility,
    Pointer<SteamParamStringArray> pTags,
    EWorkshopFileType workshopFileType,
  ) =>
      _publishWorkshopFile.call(
        this,
        file,
        previewFile,
        nConsumerAppId,
        title,
        description,
        visibility,
        pTags,
        workshopFileType,
      );

  PublishedFileUpdateHandle createPublishedFileUpdateRequest(
    PublishedFileId publishedFileId,
  ) =>
      _createPublishedFileUpdateRequest.call(
        this,
        publishedFileId,
      );

  bool updatePublishedFileFile(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> file,
  ) =>
      _updatePublishedFileFile.call(
        this,
        updateHandle,
        file,
      );

  bool updatePublishedFilePreviewFile(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> previewFile,
  ) =>
      _updatePublishedFilePreviewFile.call(
        this,
        updateHandle,
        previewFile,
      );

  bool updatePublishedFileTitle(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> title,
  ) =>
      _updatePublishedFileTitle.call(
        this,
        updateHandle,
        title,
      );

  bool updatePublishedFileDescription(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> description,
  ) =>
      _updatePublishedFileDescription.call(
        this,
        updateHandle,
        description,
      );

  bool updatePublishedFileVisibility(
    PublishedFileUpdateHandle updateHandle,
    ERemoteStoragePublishedFileVisibility visibility,
  ) =>
      _updatePublishedFileVisibility.call(
        this,
        updateHandle,
        visibility,
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
    PublishedFileId publishedFileId,
    int maxSecondsOld,
  ) =>
      _getPublishedFileDetails.call(
        this,
        publishedFileId,
        maxSecondsOld,
      );

  SteamApiCall deletePublishedFile(
    PublishedFileId publishedFileId,
  ) =>
      _deletePublishedFile.call(
        this,
        publishedFileId,
      );

  SteamApiCall enumerateUserPublishedFiles(
    int startIndex,
  ) =>
      _enumerateUserPublishedFiles.call(
        this,
        startIndex,
      );

  SteamApiCall subscribePublishedFile(
    PublishedFileId publishedFileId,
  ) =>
      _subscribePublishedFile.call(
        this,
        publishedFileId,
      );

  SteamApiCall enumerateUserSubscribedFiles(
    int startIndex,
  ) =>
      _enumerateUserSubscribedFiles.call(
        this,
        startIndex,
      );

  SteamApiCall unsubscribePublishedFile(
    PublishedFileId publishedFileId,
  ) =>
      _unsubscribePublishedFile.call(
        this,
        publishedFileId,
      );

  bool updatePublishedFileSetChangeDescription(
    PublishedFileUpdateHandle updateHandle,
    Pointer<Utf8> changeDescription,
  ) =>
      _updatePublishedFileSetChangeDescription.call(
        this,
        updateHandle,
        changeDescription,
      );

  SteamApiCall getPublishedItemVoteDetails(
    PublishedFileId publishedFileId,
  ) =>
      _getPublishedItemVoteDetails.call(
        this,
        publishedFileId,
      );

  SteamApiCall updateUserPublishedItemVote(
    PublishedFileId publishedFileId,
    bool voteUp,
  ) =>
      _updateUserPublishedItemVote.call(
        this,
        publishedFileId,
        voteUp,
      );

  SteamApiCall getUserPublishedItemVoteDetails(
    PublishedFileId publishedFileId,
  ) =>
      _getUserPublishedItemVoteDetails.call(
        this,
        publishedFileId,
      );

  SteamApiCall enumerateUserSharedWorkshopFiles(
    CSteamId steamId,
    int startIndex,
    Pointer<SteamParamStringArray> pRequiredTags,
    Pointer<SteamParamStringArray> pExcludedTags,
  ) =>
      _enumerateUserSharedWorkshopFiles.call(
        this,
        steamId,
        startIndex,
        pRequiredTags,
        pExcludedTags,
      );

  SteamApiCall publishVideo(
    EWorkshopVideoProvider videoProvider,
    Pointer<Utf8> videoAccount,
    Pointer<Utf8> videoIdentifier,
    Pointer<Utf8> previewFile,
    AppId nConsumerAppId,
    Pointer<Utf8> title,
    Pointer<Utf8> description,
    ERemoteStoragePublishedFileVisibility visibility,
    Pointer<SteamParamStringArray> pTags,
  ) =>
      _publishVideo.call(
        this,
        videoProvider,
        videoAccount,
        videoIdentifier,
        previewFile,
        nConsumerAppId,
        title,
        description,
        visibility,
        pTags,
      );

  SteamApiCall setUserPublishedFileAction(
    PublishedFileId publishedFileId,
    EWorkshopFileAction action,
  ) =>
      _setUserPublishedFileAction.call(
        this,
        publishedFileId,
        action,
      );

  SteamApiCall enumeratePublishedFilesByUserAction(
    EWorkshopFileAction action,
    int startIndex,
  ) =>
      _enumeratePublishedFilesByUserAction.call(
        this,
        action,
        startIndex,
      );

  SteamApiCall enumeratePublishedWorkshopFiles(
    EWorkshopEnumerationType enumerationType,
    int startIndex,
    int count,
    int days,
    Pointer<SteamParamStringArray> pTags,
    Pointer<SteamParamStringArray> pUserTags,
  ) =>
      _enumeratePublishedWorkshopFiles.call(
        this,
        enumerationType,
        startIndex,
        count,
        days,
        pTags,
        pUserTags,
      );

  SteamApiCall ugcDownloadToLocation(
    UgcHandle hContent,
    Pointer<Utf8> location,
    int priority,
  ) =>
      _ugcDownloadToLocation.call(
        this,
        hContent,
        location,
        priority,
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
