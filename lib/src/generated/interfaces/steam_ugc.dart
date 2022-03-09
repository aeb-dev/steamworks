import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_item_preview_type.dart";
import "../enums/e_item_statistic.dart";
import "../enums/e_item_update_status.dart";
import "../enums/e_remote_storage_published_file_visibility.dart";
import "../enums/e_ugc_matching_ugc_type.dart";
import "../enums/e_ugc_query.dart";
import "../enums/e_user_ugc_list.dart";
import "../enums/e_user_ugc_list_sort_order.dart";
import "../enums/e_workshop_file_type.dart";
import "../steam_api.dart";
import "../structs/steam_param_string_array.dart";
import "../structs/steam_ugc_details.dart";
import "../typedefs.dart";

class SteamUgc extends Opaque {
  static Pointer<SteamUgc> steamUgc() => nullptr;
  static Pointer<SteamUgc> steamGameServerUgc() => nullptr;
}

final _createQueryUserUGCRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedInt,
  Int32,
  Int32,
  Int32,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
),
    UgcQueryHandle Function(
  Pointer<SteamUgc>,
  AccountId,
  EUserUgcList,
  EUgcMatchingUgcType,
  EUserUgcListSortOrder,
  AppId,
  AppId,
  int,
)>("SteamAPI_ISteamUGC_CreateQueryUserUGCRequest");

final _createQueryAllUGCRequestPage = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  Int32,
  Int32,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
),
    UgcQueryHandle Function(
  Pointer<SteamUgc>,
  EUgcQuery,
  EUgcMatchingUgcType,
  AppId,
  AppId,
  int,
)>("SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage");

final _createQueryAllUGCRequestCursor = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  Int32,
  Int32,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
),
    UgcQueryHandle Function(
  Pointer<SteamUgc>,
  EUgcQuery,
  EUgcMatchingUgcType,
  AppId,
  AppId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor");

final _createQueryUGCDetailsRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    UgcQueryHandle Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest");

final _sendQueryUGCRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
)>("SteamAPI_ISteamUGC_SendQueryUGCRequest");

final _getQueryUGCResult = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<SteamUgcDetails>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<SteamUgcDetails>,
)>("SteamAPI_ISteamUGC_GetQueryUGCResult");

final _getQueryUGCNumTags = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCNumTags");

final _getQueryUGCTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCTag");

final _getQueryUGCTagDisplayName = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName");

final _getQueryUGCPreviewURL = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCPreviewURL");

final _getQueryUGCMetadata = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCMetadata");

final _getQueryUGCChildren = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCChildren");

final _getQueryUGCStatistic = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Int32,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  EItemStatistic,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamUGC_GetQueryUGCStatistic");

final _getQueryUGCNumAdditionalPreviews = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews");

final _getQueryUGCAdditionalPreview = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Int32>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Int32>,
)>("SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview");

final _getQueryUGCNumKeyValueTags = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags");

final _getQueryUGCKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag");

final _getQueryFirstUGCKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag");

final _releaseQueryUGCRequest = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
)>("SteamAPI_ISteamUGC_ReleaseQueryUGCRequest");

final _addRequiredTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddRequiredTag");

final _addRequiredTagGroup = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<SteamParamStringArray>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamUGC_AddRequiredTagGroup");

final _addExcludedTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddExcludedTag");

final _setReturnOnlyIDs = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnOnlyIDs");

final _setReturnKeyValueTags = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnKeyValueTags");

final _setReturnLongDescription = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnLongDescription");

final _setReturnMetadata = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnMetadata");

final _setReturnChildren = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnChildren");

final _setReturnAdditionalPreviews = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnAdditionalPreviews");

final _setReturnTotalOnly = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnTotalOnly");

final _setReturnPlaytimeStats = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_SetReturnPlaytimeStats");

final _setLanguage = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetLanguage");

final _setAllowCachedResponse = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_SetAllowCachedResponse");

final _setCloudFileNameFilter = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetCloudFileNameFilter");

final _setMatchAnyTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetMatchAnyTag");

final _setSearchText = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetSearchText");

final _setRankedByTrendDays = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_SetRankedByTrendDays");

final _setTimeCreatedDateRange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  RTime32,
  RTime32,
)>("SteamAPI_ISteamUGC_SetTimeCreatedDateRange");

final _setTimeUpdatedDateRange = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  RTime32,
  RTime32,
)>("SteamAPI_ISteamUGC_SetTimeUpdatedDateRange");

final _addRequiredKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddRequiredKeyValueTag");

final _requestUGCDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  int,
)>("SteamAPI_ISteamUGC_RequestUGCDetails");

final _createItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedInt,
  Int32,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  AppId,
  EWorkshopFileType,
)>("SteamAPI_ISteamUGC_CreateItem");

final _startItemUpdate = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedInt,
  UnsignedLongLong,
),
    UgcUpdateHandle Function(
  Pointer<SteamUgc>,
  AppId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_StartItemUpdate");

final _setItemTitle = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemTitle");

final _setItemDescription = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemDescription");

final _setItemUpdateLanguage = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemUpdateLanguage");

final _setItemMetadata = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemMetadata");

final _setItemVisibility = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Int32,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  ERemoteStoragePublishedFileVisibility,
)>("SteamAPI_ISteamUGC_SetItemVisibility");

final _setItemTags = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<SteamParamStringArray>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamUGC_SetItemTags");

final _setItemContent = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemContent");

final _setItemPreview = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemPreview");

final _setAllowLegacyUpload = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetAllowLegacyUpload");

final _removeAllItemKeyValueTags = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
)>("SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags");

final _removeItemKeyValueTags = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_RemoveItemKeyValueTags");

final _addItemKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddItemKeyValueTag");

final _addItemPreviewFile = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Int32,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
  EItemPreviewType,
)>("SteamAPI_ISteamUGC_AddItemPreviewFile");

final _addItemPreviewVideo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddItemPreviewVideo");

final _updateItemPreviewFile = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_UpdateItemPreviewFile");

final _updateItemPreviewVideo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_UpdateItemPreviewVideo");

final _removeItemPreview = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  int,
)>("SteamAPI_ISteamUGC_RemoveItemPreview");

final _submitItemUpdate = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SubmitItemUpdate");

final _getItemUpdateProgress = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    EItemUpdateStatus Function(
  Pointer<SteamUgc>,
  UgcUpdateHandle,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamUGC_GetItemUpdateProgress");

final _setUserItemVote = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  bool,
)>("SteamAPI_ISteamUGC_SetUserItemVote");

final _getUserItemVote = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_GetUserItemVote");

final _addItemToFavorites = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedInt,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  AppId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_AddItemToFavorites");

final _removeItemFromFavorites = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedInt,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  AppId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_RemoveItemFromFavorites");

final _subscribeItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_SubscribeItem");

final _unsubscribeItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_UnsubscribeItem");

final _getNumSubscribedItems = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUgc>,
),
    int Function(
  Pointer<SteamUgc>,
)>("SteamAPI_ISteamUGC_GetNumSubscribedItems");

final _getSubscribedItems = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    int Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_GetSubscribedItems");

final _getItemState = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    int Function(
  Pointer<SteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_GetItemState");

final _getItemInstallInfo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  Pointer<UnsignedLongLong>,
  Pointer<Utf8>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUGC_GetItemInstallInfo");

final _getItemDownloadInfo = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamUGC_GetItemDownloadInfo");

final _downloadItem = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  bool,
)>("SteamAPI_ISteamUGC_DownloadItem");

final _bInitWorkshopForGameServer = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamUgc>,
  DepotId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_BInitWorkshopForGameServer");

final _suspendDownloads = dl.lookupFunction<
    Void Function(
  Pointer<SteamUgc>,
  Bool,
),
    void Function(
  Pointer<SteamUgc>,
  bool,
)>("SteamAPI_ISteamUGC_SuspendDownloads");

final _startPlaytimeTracking = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_StartPlaytimeTracking");

final _stopPlaytimeTracking = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_StopPlaytimeTracking");

final _stopPlaytimeTrackingForAllItems = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
)>("SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems");

final _addDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_AddDependency");

final _removeDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_RemoveDependency");

final _addAppDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  AppId,
)>("SteamAPI_ISteamUGC_AddAppDependency");

final _removeAppDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
  AppId,
)>("SteamAPI_ISteamUGC_RemoveAppDependency");

final _getAppDependencies = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_GetAppDependencies");

final _deleteItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_DeleteItem");

final _showWorkshopEULA = dl.lookupFunction<
    Bool Function(
  Pointer<SteamUgc>,
),
    bool Function(
  Pointer<SteamUgc>,
)>("SteamAPI_ISteamUGC_ShowWorkshopEULA");

final _getWorkshopEULAStatus = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamUgc>,
),
    SteamApiCall Function(
  Pointer<SteamUgc>,
)>("SteamAPI_ISteamUGC_GetWorkshopEULAStatus");

extension SteamUgcExtensions on Pointer<SteamUgc> {
  UgcQueryHandle createQueryUserUGCRequest(
    AccountId unAccountID,
    EUserUgcList eListType,
    EUgcMatchingUgcType eMatchingUGCType,
    EUserUgcListSortOrder eSortOrder,
    AppId nCreatorAppID,
    AppId nConsumerAppID,
    int unPage,
  ) =>
      _createQueryUserUGCRequest.call(
        this,
        unAccountID,
        eListType,
        eMatchingUGCType,
        eSortOrder,
        nCreatorAppID,
        nConsumerAppID,
        unPage,
      );

  UgcQueryHandle createQueryAllUGCRequestPage(
    EUgcQuery eQueryType,
    EUgcMatchingUgcType eMatchingeMatchingUGCTypeFileType,
    AppId nCreatorAppID,
    AppId nConsumerAppID,
    int unPage,
  ) =>
      _createQueryAllUGCRequestPage.call(
        this,
        eQueryType,
        eMatchingeMatchingUGCTypeFileType,
        nCreatorAppID,
        nConsumerAppID,
        unPage,
      );

  UgcQueryHandle createQueryAllUGCRequestCursor(
    EUgcQuery eQueryType,
    EUgcMatchingUgcType eMatchingeMatchingUGCTypeFileType,
    AppId nCreatorAppID,
    AppId nConsumerAppID,
    Pointer<Utf8> pchCursor,
  ) =>
      _createQueryAllUGCRequestCursor.call(
        this,
        eQueryType,
        eMatchingeMatchingUGCTypeFileType,
        nCreatorAppID,
        nConsumerAppID,
        pchCursor,
      );

  UgcQueryHandle createQueryUGCDetailsRequest(
    Pointer<UnsignedLongLong> pvecPublishedFileID,
    int unNumPublishedFileIDs,
  ) =>
      _createQueryUGCDetailsRequest.call(
        this,
        pvecPublishedFileID,
        unNumPublishedFileIDs,
      );

  SteamApiCall sendQueryUGCRequest(
    UgcQueryHandle handle,
  ) =>
      _sendQueryUGCRequest.call(
        this,
        handle,
      );

  bool getQueryUGCResult(
    UgcQueryHandle handle,
    int index,
    Pointer<SteamUgcDetails> pDetails,
  ) =>
      _getQueryUGCResult.call(
        this,
        handle,
        index,
        pDetails,
      );

  int getQueryUGCNumTags(
    UgcQueryHandle handle,
    int index,
  ) =>
      _getQueryUGCNumTags.call(
        this,
        handle,
        index,
      );

  bool getQueryUGCTag(
    UgcQueryHandle handle,
    int index,
    int indexTag,
    Pointer<Utf8> pchValue,
    int cchValueSize,
  ) =>
      _getQueryUGCTag.call(
        this,
        handle,
        index,
        indexTag,
        pchValue,
        cchValueSize,
      );

  bool getQueryUGCTagDisplayName(
    UgcQueryHandle handle,
    int index,
    int indexTag,
    Pointer<Utf8> pchValue,
    int cchValueSize,
  ) =>
      _getQueryUGCTagDisplayName.call(
        this,
        handle,
        index,
        indexTag,
        pchValue,
        cchValueSize,
      );

  bool getQueryUGCPreviewURL(
    UgcQueryHandle handle,
    int index,
    Pointer<Utf8> pchURL,
    int cchURLSize,
  ) =>
      _getQueryUGCPreviewURL.call(
        this,
        handle,
        index,
        pchURL,
        cchURLSize,
      );

  bool getQueryUGCMetadata(
    UgcQueryHandle handle,
    int index,
    Pointer<Utf8> pchMetadata,
    int cchMetadatasize,
  ) =>
      _getQueryUGCMetadata.call(
        this,
        handle,
        index,
        pchMetadata,
        cchMetadatasize,
      );

  bool getQueryUGCChildren(
    UgcQueryHandle handle,
    int index,
    Pointer<UnsignedLongLong> pvecPublishedFileID,
    int cMaxEntries,
  ) =>
      _getQueryUGCChildren.call(
        this,
        handle,
        index,
        pvecPublishedFileID,
        cMaxEntries,
      );

  bool getQueryUGCStatistic(
    UgcQueryHandle handle,
    int index,
    EItemStatistic eStatType,
    Pointer<UnsignedLongLong> pStatValue,
  ) =>
      _getQueryUGCStatistic.call(
        this,
        handle,
        index,
        eStatType,
        pStatValue,
      );

  int getQueryUGCNumAdditionalPreviews(
    UgcQueryHandle handle,
    int index,
  ) =>
      _getQueryUGCNumAdditionalPreviews.call(
        this,
        handle,
        index,
      );

  bool getQueryUGCAdditionalPreview(
    UgcQueryHandle handle,
    int index,
    int previewIndex,
    Pointer<Utf8> pchURLOrVideoID,
    int cchURLSize,
    Pointer<Utf8> pchOriginalFileName,
    int cchOriginalFileNameSize,
    Pointer<Int32> pPreviewType,
  ) =>
      _getQueryUGCAdditionalPreview.call(
        this,
        handle,
        index,
        previewIndex,
        pchURLOrVideoID,
        cchURLSize,
        pchOriginalFileName,
        cchOriginalFileNameSize,
        pPreviewType,
      );

  int getQueryUGCNumKeyValueTags(
    UgcQueryHandle handle,
    int index,
  ) =>
      _getQueryUGCNumKeyValueTags.call(
        this,
        handle,
        index,
      );

  bool getQueryUGCKeyValueTag(
    UgcQueryHandle handle,
    int index,
    int keyValueTagIndex,
    Pointer<Utf8> pchKey,
    int cchKeySize,
    Pointer<Utf8> pchValue,
    int cchValueSize,
  ) =>
      _getQueryUGCKeyValueTag.call(
        this,
        handle,
        index,
        keyValueTagIndex,
        pchKey,
        cchKeySize,
        pchValue,
        cchValueSize,
      );

  bool getQueryFirstUGCKeyValueTag(
    UgcQueryHandle handle,
    int index,
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
    int cchValueSize,
  ) =>
      _getQueryFirstUGCKeyValueTag.call(
        this,
        handle,
        index,
        pchKey,
        pchValue,
        cchValueSize,
      );

  bool releaseQueryUGCRequest(
    UgcQueryHandle handle,
  ) =>
      _releaseQueryUGCRequest.call(
        this,
        handle,
      );

  bool addRequiredTag(
    UgcQueryHandle handle,
    Pointer<Utf8> pTagName,
  ) =>
      _addRequiredTag.call(
        this,
        handle,
        pTagName,
      );

  bool addRequiredTagGroup(
    UgcQueryHandle handle,
    Pointer<SteamParamStringArray> pTagGroups,
  ) =>
      _addRequiredTagGroup.call(
        this,
        handle,
        pTagGroups,
      );

  bool addExcludedTag(
    UgcQueryHandle handle,
    Pointer<Utf8> pTagName,
  ) =>
      _addExcludedTag.call(
        this,
        handle,
        pTagName,
      );

  bool setReturnOnlyIDs(
    UgcQueryHandle handle,
    bool bReturnOnlyIDs,
  ) =>
      _setReturnOnlyIDs.call(
        this,
        handle,
        bReturnOnlyIDs,
      );

  bool setReturnKeyValueTags(
    UgcQueryHandle handle,
    bool bReturnKeyValueTags,
  ) =>
      _setReturnKeyValueTags.call(
        this,
        handle,
        bReturnKeyValueTags,
      );

  bool setReturnLongDescription(
    UgcQueryHandle handle,
    bool bReturnLongDescription,
  ) =>
      _setReturnLongDescription.call(
        this,
        handle,
        bReturnLongDescription,
      );

  bool setReturnMetadata(
    UgcQueryHandle handle,
    bool bReturnMetadata,
  ) =>
      _setReturnMetadata.call(
        this,
        handle,
        bReturnMetadata,
      );

  bool setReturnChildren(
    UgcQueryHandle handle,
    bool bReturnChildren,
  ) =>
      _setReturnChildren.call(
        this,
        handle,
        bReturnChildren,
      );

  bool setReturnAdditionalPreviews(
    UgcQueryHandle handle,
    bool bReturnAdditionalPreviews,
  ) =>
      _setReturnAdditionalPreviews.call(
        this,
        handle,
        bReturnAdditionalPreviews,
      );

  bool setReturnTotalOnly(
    UgcQueryHandle handle,
    bool bReturnTotalOnly,
  ) =>
      _setReturnTotalOnly.call(
        this,
        handle,
        bReturnTotalOnly,
      );

  bool setReturnPlaytimeStats(
    UgcQueryHandle handle,
    int unDays,
  ) =>
      _setReturnPlaytimeStats.call(
        this,
        handle,
        unDays,
      );

  bool setLanguage(
    UgcQueryHandle handle,
    Pointer<Utf8> pchLanguage,
  ) =>
      _setLanguage.call(
        this,
        handle,
        pchLanguage,
      );

  bool setAllowCachedResponse(
    UgcQueryHandle handle,
    int unMaxAgeSeconds,
  ) =>
      _setAllowCachedResponse.call(
        this,
        handle,
        unMaxAgeSeconds,
      );

  bool setCloudFileNameFilter(
    UgcQueryHandle handle,
    Pointer<Utf8> pMatchCloudFileName,
  ) =>
      _setCloudFileNameFilter.call(
        this,
        handle,
        pMatchCloudFileName,
      );

  bool setMatchAnyTag(
    UgcQueryHandle handle,
    bool bMatchAnyTag,
  ) =>
      _setMatchAnyTag.call(
        this,
        handle,
        bMatchAnyTag,
      );

  bool setSearchText(
    UgcQueryHandle handle,
    Pointer<Utf8> pSearchText,
  ) =>
      _setSearchText.call(
        this,
        handle,
        pSearchText,
      );

  bool setRankedByTrendDays(
    UgcQueryHandle handle,
    int unDays,
  ) =>
      _setRankedByTrendDays.call(
        this,
        handle,
        unDays,
      );

  bool setTimeCreatedDateRange(
    UgcQueryHandle handle,
    RTime32 rtStart,
    RTime32 rtEnd,
  ) =>
      _setTimeCreatedDateRange.call(
        this,
        handle,
        rtStart,
        rtEnd,
      );

  bool setTimeUpdatedDateRange(
    UgcQueryHandle handle,
    RTime32 rtStart,
    RTime32 rtEnd,
  ) =>
      _setTimeUpdatedDateRange.call(
        this,
        handle,
        rtStart,
        rtEnd,
      );

  bool addRequiredKeyValueTag(
    UgcQueryHandle handle,
    Pointer<Utf8> pKey,
    Pointer<Utf8> pValue,
  ) =>
      _addRequiredKeyValueTag.call(
        this,
        handle,
        pKey,
        pValue,
      );

  SteamApiCall requestUGCDetails(
    PublishedFileId nPublishedFileID,
    int unMaxAgeSeconds,
  ) =>
      _requestUGCDetails.call(
        this,
        nPublishedFileID,
        unMaxAgeSeconds,
      );

  SteamApiCall createItem(
    AppId nConsumerAppId,
    EWorkshopFileType eFileType,
  ) =>
      _createItem.call(
        this,
        nConsumerAppId,
        eFileType,
      );

  UgcUpdateHandle startItemUpdate(
    AppId nConsumerAppId,
    PublishedFileId nPublishedFileID,
  ) =>
      _startItemUpdate.call(
        this,
        nConsumerAppId,
        nPublishedFileID,
      );

  bool setItemTitle(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchTitle,
  ) =>
      _setItemTitle.call(
        this,
        handle,
        pchTitle,
      );

  bool setItemDescription(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchDescription,
  ) =>
      _setItemDescription.call(
        this,
        handle,
        pchDescription,
      );

  bool setItemUpdateLanguage(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchLanguage,
  ) =>
      _setItemUpdateLanguage.call(
        this,
        handle,
        pchLanguage,
      );

  bool setItemMetadata(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchMetaData,
  ) =>
      _setItemMetadata.call(
        this,
        handle,
        pchMetaData,
      );

  bool setItemVisibility(
    UgcUpdateHandle handle,
    ERemoteStoragePublishedFileVisibility eVisibility,
  ) =>
      _setItemVisibility.call(
        this,
        handle,
        eVisibility,
      );

  bool setItemTags(
    UgcUpdateHandle updateHandle,
    Pointer<SteamParamStringArray> pTags,
  ) =>
      _setItemTags.call(
        this,
        updateHandle,
        pTags,
      );

  bool setItemContent(
    UgcUpdateHandle handle,
    Pointer<Utf8> pszContentFolder,
  ) =>
      _setItemContent.call(
        this,
        handle,
        pszContentFolder,
      );

  bool setItemPreview(
    UgcUpdateHandle handle,
    Pointer<Utf8> pszPreviewFile,
  ) =>
      _setItemPreview.call(
        this,
        handle,
        pszPreviewFile,
      );

  bool setAllowLegacyUpload(
    UgcUpdateHandle handle,
    bool bAllowLegacyUpload,
  ) =>
      _setAllowLegacyUpload.call(
        this,
        handle,
        bAllowLegacyUpload,
      );

  bool removeAllItemKeyValueTags(
    UgcUpdateHandle handle,
  ) =>
      _removeAllItemKeyValueTags.call(
        this,
        handle,
      );

  bool removeItemKeyValueTags(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchKey,
  ) =>
      _removeItemKeyValueTags.call(
        this,
        handle,
        pchKey,
      );

  bool addItemKeyValueTag(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchKey,
    Pointer<Utf8> pchValue,
  ) =>
      _addItemKeyValueTag.call(
        this,
        handle,
        pchKey,
        pchValue,
      );

  bool addItemPreviewFile(
    UgcUpdateHandle handle,
    Pointer<Utf8> pszPreviewFile,
    EItemPreviewType type,
  ) =>
      _addItemPreviewFile.call(
        this,
        handle,
        pszPreviewFile,
        type,
      );

  bool addItemPreviewVideo(
    UgcUpdateHandle handle,
    Pointer<Utf8> pszVideoID,
  ) =>
      _addItemPreviewVideo.call(
        this,
        handle,
        pszVideoID,
      );

  bool updateItemPreviewFile(
    UgcUpdateHandle handle,
    int index,
    Pointer<Utf8> pszPreviewFile,
  ) =>
      _updateItemPreviewFile.call(
        this,
        handle,
        index,
        pszPreviewFile,
      );

  bool updateItemPreviewVideo(
    UgcUpdateHandle handle,
    int index,
    Pointer<Utf8> pszVideoID,
  ) =>
      _updateItemPreviewVideo.call(
        this,
        handle,
        index,
        pszVideoID,
      );

  bool removeItemPreview(
    UgcUpdateHandle handle,
    int index,
  ) =>
      _removeItemPreview.call(
        this,
        handle,
        index,
      );

  SteamApiCall submitItemUpdate(
    UgcUpdateHandle handle,
    Pointer<Utf8> pchChangeNote,
  ) =>
      _submitItemUpdate.call(
        this,
        handle,
        pchChangeNote,
      );

  EItemUpdateStatus getItemUpdateProgress(
    UgcUpdateHandle handle,
    Pointer<UnsignedLongLong> punBytesProcessed,
    Pointer<UnsignedLongLong> punBytesTotal,
  ) =>
      _getItemUpdateProgress.call(
        this,
        handle,
        punBytesProcessed,
        punBytesTotal,
      );

  SteamApiCall setUserItemVote(
    PublishedFileId nPublishedFileID,
    bool bVoteUp,
  ) =>
      _setUserItemVote.call(
        this,
        nPublishedFileID,
        bVoteUp,
      );

  SteamApiCall getUserItemVote(
    PublishedFileId nPublishedFileID,
  ) =>
      _getUserItemVote.call(
        this,
        nPublishedFileID,
      );

  SteamApiCall addItemToFavorites(
    AppId nAppId,
    PublishedFileId nPublishedFileID,
  ) =>
      _addItemToFavorites.call(
        this,
        nAppId,
        nPublishedFileID,
      );

  SteamApiCall removeItemFromFavorites(
    AppId nAppId,
    PublishedFileId nPublishedFileID,
  ) =>
      _removeItemFromFavorites.call(
        this,
        nAppId,
        nPublishedFileID,
      );

  SteamApiCall subscribeItem(
    PublishedFileId nPublishedFileID,
  ) =>
      _subscribeItem.call(
        this,
        nPublishedFileID,
      );

  SteamApiCall unsubscribeItem(
    PublishedFileId nPublishedFileID,
  ) =>
      _unsubscribeItem.call(
        this,
        nPublishedFileID,
      );

  int getNumSubscribedItems() => _getNumSubscribedItems.call(
        this,
      );

  int getSubscribedItems(
    Pointer<UnsignedLongLong> pvecPublishedFileID,
    int cMaxEntries,
  ) =>
      _getSubscribedItems.call(
        this,
        pvecPublishedFileID,
        cMaxEntries,
      );

  int getItemState(
    PublishedFileId nPublishedFileID,
  ) =>
      _getItemState.call(
        this,
        nPublishedFileID,
      );

  bool getItemInstallInfo(
    PublishedFileId nPublishedFileID,
    Pointer<UnsignedLongLong> punSizeOnDisk,
    Pointer<Utf8> pchFolder,
    int cchFolderSize,
    Pointer<UnsignedInt> punTimeStamp,
  ) =>
      _getItemInstallInfo.call(
        this,
        nPublishedFileID,
        punSizeOnDisk,
        pchFolder,
        cchFolderSize,
        punTimeStamp,
      );

  bool getItemDownloadInfo(
    PublishedFileId nPublishedFileID,
    Pointer<UnsignedLongLong> punBytesDownloaded,
    Pointer<UnsignedLongLong> punBytesTotal,
  ) =>
      _getItemDownloadInfo.call(
        this,
        nPublishedFileID,
        punBytesDownloaded,
        punBytesTotal,
      );

  bool downloadItem(
    PublishedFileId nPublishedFileID,
    bool bHighPriority,
  ) =>
      _downloadItem.call(
        this,
        nPublishedFileID,
        bHighPriority,
      );

  bool bInitWorkshopForGameServer(
    DepotId unWorkshopDepotID,
    Pointer<Utf8> pszFolder,
  ) =>
      _bInitWorkshopForGameServer.call(
        this,
        unWorkshopDepotID,
        pszFolder,
      );

  void suspendDownloads(
    bool bSuspend,
  ) =>
      _suspendDownloads.call(
        this,
        bSuspend,
      );

  SteamApiCall startPlaytimeTracking(
    Pointer<UnsignedLongLong> pvecPublishedFileID,
    int unNumPublishedFileIDs,
  ) =>
      _startPlaytimeTracking.call(
        this,
        pvecPublishedFileID,
        unNumPublishedFileIDs,
      );

  SteamApiCall stopPlaytimeTracking(
    Pointer<UnsignedLongLong> pvecPublishedFileID,
    int unNumPublishedFileIDs,
  ) =>
      _stopPlaytimeTracking.call(
        this,
        pvecPublishedFileID,
        unNumPublishedFileIDs,
      );

  SteamApiCall stopPlaytimeTrackingForAllItems() =>
      _stopPlaytimeTrackingForAllItems.call(
        this,
      );

  SteamApiCall addDependency(
    PublishedFileId nParentPublishedFileID,
    PublishedFileId nChildPublishedFileID,
  ) =>
      _addDependency.call(
        this,
        nParentPublishedFileID,
        nChildPublishedFileID,
      );

  SteamApiCall removeDependency(
    PublishedFileId nParentPublishedFileID,
    PublishedFileId nChildPublishedFileID,
  ) =>
      _removeDependency.call(
        this,
        nParentPublishedFileID,
        nChildPublishedFileID,
      );

  SteamApiCall addAppDependency(
    PublishedFileId nPublishedFileID,
    AppId nAppID,
  ) =>
      _addAppDependency.call(
        this,
        nPublishedFileID,
        nAppID,
      );

  SteamApiCall removeAppDependency(
    PublishedFileId nPublishedFileID,
    AppId nAppID,
  ) =>
      _removeAppDependency.call(
        this,
        nPublishedFileID,
        nAppID,
      );

  SteamApiCall getAppDependencies(
    PublishedFileId nPublishedFileID,
  ) =>
      _getAppDependencies.call(
        this,
        nPublishedFileID,
      );

  SteamApiCall deleteItem(
    PublishedFileId nPublishedFileID,
  ) =>
      _deleteItem.call(
        this,
        nPublishedFileID,
      );

  bool showWorkshopEULA() => _showWorkshopEULA.call(
        this,
      );

  SteamApiCall getWorkshopEULAStatus() => _getWorkshopEULAStatus.call(
        this,
      );
}
