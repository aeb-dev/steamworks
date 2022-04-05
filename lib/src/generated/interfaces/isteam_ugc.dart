// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eitem_preview_type.dart";
import "../enums/eitem_statistic.dart";
import "../enums/eitem_update_status.dart";
import "../enums/eremote_storage_published_file_visibility.dart";
import "../enums/eugc_matching_ugc_type.dart";
import "../enums/eugc_query.dart";
import "../enums/euser_ugc_list.dart";
import "../enums/euser_ugc_list_sort_order.dart";
import "../enums/eworkshop_file_type.dart";
import "../structs/steam_param_string_array.dart";
import "../structs/steam_ugc_details.dart";
import "../typedefs.dart";

final _steamUgc = dl.lookupFunction<Pointer<ISteamUgc> Function(),
    Pointer<ISteamUgc> Function()>("SteamAPI_SteamUGC_v016");

final _steamGameServerUgc = dl.lookupFunction<Pointer<ISteamUgc> Function(),
    Pointer<ISteamUgc> Function()>("SteamAPI_SteamGameServerUGC_v016");

class ISteamUgc extends Opaque {
  static Pointer<ISteamUgc> get userInstance => _steamUgc();

  static Pointer<ISteamUgc> get serverInstance => _steamGameServerUgc();
}

final _createQueryUserUgcRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedInt,
  Int32,
  Int32,
  Int32,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
),
    UgcQueryHandle Function(
  Pointer<ISteamUgc>,
  AccountId,
  EUserUgcList,
  EUgcMatchingUgcType,
  EUserUgcListSortOrder,
  AppId,
  AppId,
  int,
)>("SteamAPI_ISteamUGC_CreateQueryUserUGCRequest");

final _createQueryAllUgcRequestPage = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  Int32,
  Int32,
  UnsignedInt,
  UnsignedInt,
  UnsignedInt,
),
    UgcQueryHandle Function(
  Pointer<ISteamUgc>,
  EUgcQuery,
  EUgcMatchingUgcType,
  AppId,
  AppId,
  int,
)>("SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage");

final _createQueryAllUgcRequestCursor = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  Int32,
  Int32,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
),
    UgcQueryHandle Function(
  Pointer<ISteamUgc>,
  EUgcQuery,
  EUgcMatchingUgcType,
  AppId,
  AppId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor");

final _createQueryUgcDetailsRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    UgcQueryHandle Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest");

final _sendQueryUgcRequest = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
)>("SteamAPI_ISteamUGC_SendQueryUGCRequest");

final _getQueryUgcResult = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<SteamUgcDetails>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<SteamUgcDetails>,
)>("SteamAPI_ISteamUGC_GetQueryUGCResult");

final _getQueryUgcNumTags = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCNumTags");

final _getQueryUgcTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCTag");

final _getQueryUgcTagDisplayName = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName");

final _getQueryUgcPreviewUrl = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCPreviewURL");

final _getQueryUgcMetadata = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCMetadata");

final _getQueryUgcChildren = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCChildren");

final _getQueryUgcStatistic = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Int32,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  EItemStatistic,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamUGC_GetQueryUGCStatistic");

final _getQueryUgcNumAdditionalPreviews = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews");

final _getQueryUgcAdditionalPreview = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
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
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Int32>,
)>("SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview");

final _getQueryUgcNumKeyValueTags = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags");

final _getQueryUgcKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  int,
  Pointer<Utf8>,
  int,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag");

final _getQueryFirstUgcKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag");

final _releaseQueryUgcRequest = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
)>("SteamAPI_ISteamUGC_ReleaseQueryUGCRequest");

final _addRequiredTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddRequiredTag");

final _addRequiredTagGroup = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<SteamParamStringArray>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamUGC_AddRequiredTagGroup");

final _addExcludedTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddExcludedTag");

final _setReturnOnlyIds = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnOnlyIDs");

final _setReturnKeyValueTags = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnKeyValueTags");

final _setReturnLongDescription = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnLongDescription");

final _setReturnMetadata = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnMetadata");

final _setReturnChildren = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnChildren");

final _setReturnAdditionalPreviews = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnAdditionalPreviews");

final _setReturnTotalOnly = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetReturnTotalOnly");

final _setReturnPlaytimeStats = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_SetReturnPlaytimeStats");

final _setLanguage = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetLanguage");

final _setAllowCachedResponse = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_SetAllowCachedResponse");

final _setCloudFileNameFilter = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetCloudFileNameFilter");

final _setMatchAnyTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetMatchAnyTag");

final _setSearchText = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetSearchText");

final _setRankedByTrendDays = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  int,
)>("SteamAPI_ISteamUGC_SetRankedByTrendDays");

final _setTimeCreatedDateRange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  RTime32,
  RTime32,
)>("SteamAPI_ISteamUGC_SetTimeCreatedDateRange");

final _setTimeUpdatedDateRange = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  RTime32,
  RTime32,
)>("SteamAPI_ISteamUGC_SetTimeUpdatedDateRange");

final _addRequiredKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcQueryHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddRequiredKeyValueTag");

final _requestUgcDetails = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  int,
)>("SteamAPI_ISteamUGC_RequestUGCDetails");

final _createItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedInt,
  Int32,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  AppId,
  EWorkshopFileType,
)>("SteamAPI_ISteamUGC_CreateItem");

final _startItemUpdate = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedInt,
  UnsignedLongLong,
),
    UgcUpdateHandle Function(
  Pointer<ISteamUgc>,
  AppId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_StartItemUpdate");

final _setItemTitle = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemTitle");

final _setItemDescription = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemDescription");

final _setItemUpdateLanguage = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemUpdateLanguage");

final _setItemMetadata = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemMetadata");

final _setItemVisibility = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Int32,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  ERemoteStoragePublishedFileVisibility,
)>("SteamAPI_ISteamUGC_SetItemVisibility");

final _setItemTags = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<SteamParamStringArray>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<SteamParamStringArray>,
)>("SteamAPI_ISteamUGC_SetItemTags");

final _setItemContent = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemContent");

final _setItemPreview = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SetItemPreview");

final _setAllowLegacyUpload = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  bool,
)>("SteamAPI_ISteamUGC_SetAllowLegacyUpload");

final _removeAllItemKeyValueTags = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
)>("SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags");

final _removeItemKeyValueTags = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_RemoveItemKeyValueTags");

final _addItemKeyValueTag = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddItemKeyValueTag");

final _addItemPreviewFile = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
  Int32,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
  EItemPreviewType,
)>("SteamAPI_ISteamUGC_AddItemPreviewFile");

final _addItemPreviewVideo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_AddItemPreviewVideo");

final _updateItemPreviewFile = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_UpdateItemPreviewFile");

final _updateItemPreviewVideo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  int,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_UpdateItemPreviewVideo");

final _removeItemPreview = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  int,
)>("SteamAPI_ISteamUGC_RemoveItemPreview");

final _submitItemUpdate = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_SubmitItemUpdate");

final _getItemUpdateProgress = dl.lookupFunction<
    Int32 Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    EItemUpdateStatus Function(
  Pointer<ISteamUgc>,
  UgcUpdateHandle,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamUGC_GetItemUpdateProgress");

final _setUserItemVote = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  bool,
)>("SteamAPI_ISteamUGC_SetUserItemVote");

final _getUserItemVote = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_GetUserItemVote");

final _addItemToFavorites = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedInt,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  AppId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_AddItemToFavorites");

final _removeItemFromFavorites = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedInt,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  AppId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_RemoveItemFromFavorites");

final _subscribeItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_SubscribeItem");

final _unsubscribeItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_UnsubscribeItem");

final _getNumSubscribedItems = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUgc>,
),
    int Function(
  Pointer<ISteamUgc>,
)>("SteamAPI_ISteamUGC_GetNumSubscribedItems");

final _getSubscribedItems = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    int Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_GetSubscribedItems");

final _getItemState = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    int Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_GetItemState");

final _getItemInstallInfo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<Utf8>,
  UnsignedInt,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  Pointer<UnsignedLongLong>,
  Pointer<Utf8>,
  int,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamUGC_GetItemInstallInfo");

final _getItemDownloadInfo = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamUGC_GetItemDownloadInfo");

final _downloadItem = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  Bool,
),
    bool Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  bool,
)>("SteamAPI_ISteamUGC_DownloadItem");

final _bInitWorkshopForGameServer = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
  UnsignedInt,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamUgc>,
  DepotId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamUGC_BInitWorkshopForGameServer");

final _suspendDownloads = dl.lookupFunction<
    Void Function(
  Pointer<ISteamUgc>,
  Bool,
),
    void Function(
  Pointer<ISteamUgc>,
  bool,
)>("SteamAPI_ISteamUGC_SuspendDownloads");

final _startPlaytimeTracking = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_StartPlaytimeTracking");

final _stopPlaytimeTracking = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamUGC_StopPlaytimeTracking");

final _stopPlaytimeTrackingForAllItems = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
)>("SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems");

final _addDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_AddDependency");

final _removeDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_RemoveDependency");

final _addAppDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  AppId,
)>("SteamAPI_ISteamUGC_AddAppDependency");

final _removeAppDependency = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
  AppId,
)>("SteamAPI_ISteamUGC_RemoveAppDependency");

final _getAppDependencies = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_GetAppDependencies");

final _deleteItem = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
  PublishedFileId,
)>("SteamAPI_ISteamUGC_DeleteItem");

final _showWorkshopEula = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamUgc>,
),
    bool Function(
  Pointer<ISteamUgc>,
)>("SteamAPI_ISteamUGC_ShowWorkshopEULA");

final _getWorkshopEulaStatus = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamUgc>,
),
    SteamApiCall Function(
  Pointer<ISteamUgc>,
)>("SteamAPI_ISteamUGC_GetWorkshopEULAStatus");

extension ISteamUgcExtensions on Pointer<ISteamUgc> {
  UgcQueryHandle createQueryUserUgcRequest(
    AccountId accountId,
    EUserUgcList listType,
    EUgcMatchingUgcType matchingUgcType,
    EUserUgcListSortOrder sortOrder,
    AppId nCreatorAppId,
    AppId nConsumerAppId,
    int page,
  ) =>
      _createQueryUserUgcRequest.call(
        this,
        accountId,
        listType,
        matchingUgcType,
        sortOrder,
        nCreatorAppId,
        nConsumerAppId,
        page,
      );

  UgcQueryHandle createQueryAllUgcRequestPage(
    EUgcQuery queryType,
    EUgcMatchingUgcType matchingeMatchingUgcTypeFileType,
    AppId nCreatorAppId,
    AppId nConsumerAppId,
    int page,
  ) =>
      _createQueryAllUgcRequestPage.call(
        this,
        queryType,
        matchingeMatchingUgcTypeFileType,
        nCreatorAppId,
        nConsumerAppId,
        page,
      );

  UgcQueryHandle createQueryAllUgcRequestCursor(
    EUgcQuery queryType,
    EUgcMatchingUgcType matchingeMatchingUgcTypeFileType,
    AppId nCreatorAppId,
    AppId nConsumerAppId,
    Pointer<Utf8> cursor,
  ) =>
      _createQueryAllUgcRequestCursor.call(
        this,
        queryType,
        matchingeMatchingUgcTypeFileType,
        nCreatorAppId,
        nConsumerAppId,
        cursor,
      );

  UgcQueryHandle createQueryUgcDetailsRequest(
    Pointer<UnsignedLongLong> pvecPublishedFileId,
    int numPublishedFileIds,
  ) =>
      _createQueryUgcDetailsRequest.call(
        this,
        pvecPublishedFileId,
        numPublishedFileIds,
      );

  SteamApiCall sendQueryUgcRequest(
    UgcQueryHandle handle,
  ) =>
      _sendQueryUgcRequest.call(
        this,
        handle,
      );

  bool getQueryUgcResult(
    UgcQueryHandle handle,
    int index,
    Pointer<SteamUgcDetails> pDetails,
  ) =>
      _getQueryUgcResult.call(
        this,
        handle,
        index,
        pDetails,
      );

  int getQueryUgcNumTags(
    UgcQueryHandle handle,
    int index,
  ) =>
      _getQueryUgcNumTags.call(
        this,
        handle,
        index,
      );

  bool getQueryUgcTag(
    UgcQueryHandle handle,
    int index,
    int indexTag,
    Pointer<Utf8> value,
    int cchValueSize,
  ) =>
      _getQueryUgcTag.call(
        this,
        handle,
        index,
        indexTag,
        value,
        cchValueSize,
      );

  bool getQueryUgcTagDisplayName(
    UgcQueryHandle handle,
    int index,
    int indexTag,
    Pointer<Utf8> value,
    int cchValueSize,
  ) =>
      _getQueryUgcTagDisplayName.call(
        this,
        handle,
        index,
        indexTag,
        value,
        cchValueSize,
      );

  bool getQueryUgcPreviewUrl(
    UgcQueryHandle handle,
    int index,
    Pointer<Utf8> url,
    int cchUrlSize,
  ) =>
      _getQueryUgcPreviewUrl.call(
        this,
        handle,
        index,
        url,
        cchUrlSize,
      );

  bool getQueryUgcMetadata(
    UgcQueryHandle handle,
    int index,
    Pointer<Utf8> metadata,
    int cchMetadatasize,
  ) =>
      _getQueryUgcMetadata.call(
        this,
        handle,
        index,
        metadata,
        cchMetadatasize,
      );

  bool getQueryUgcChildren(
    UgcQueryHandle handle,
    int index,
    Pointer<UnsignedLongLong> pvecPublishedFileId,
    int cMaxEntries,
  ) =>
      _getQueryUgcChildren.call(
        this,
        handle,
        index,
        pvecPublishedFileId,
        cMaxEntries,
      );

  bool getQueryUgcStatistic(
    UgcQueryHandle handle,
    int index,
    EItemStatistic statType,
    Pointer<UnsignedLongLong> pStatValue,
  ) =>
      _getQueryUgcStatistic.call(
        this,
        handle,
        index,
        statType,
        pStatValue,
      );

  int getQueryUgcNumAdditionalPreviews(
    UgcQueryHandle handle,
    int index,
  ) =>
      _getQueryUgcNumAdditionalPreviews.call(
        this,
        handle,
        index,
      );

  bool getQueryUgcAdditionalPreview(
    UgcQueryHandle handle,
    int index,
    int previewIndex,
    Pointer<Utf8> urlOrVideoId,
    int cchUrlSize,
    Pointer<Utf8> originalFileName,
    int cchOriginalFileNameSize,
    Pointer<Int32> pPreviewType,
  ) =>
      _getQueryUgcAdditionalPreview.call(
        this,
        handle,
        index,
        previewIndex,
        urlOrVideoId,
        cchUrlSize,
        originalFileName,
        cchOriginalFileNameSize,
        pPreviewType,
      );

  int getQueryUgcNumKeyValueTags(
    UgcQueryHandle handle,
    int index,
  ) =>
      _getQueryUgcNumKeyValueTags.call(
        this,
        handle,
        index,
      );

  bool getQueryUgcKeyValueTag(
    UgcQueryHandle handle,
    int index,
    int keyValueTagIndex,
    Pointer<Utf8> key,
    int cchKeySize,
    Pointer<Utf8> value,
    int cchValueSize,
  ) =>
      _getQueryUgcKeyValueTag.call(
        this,
        handle,
        index,
        keyValueTagIndex,
        key,
        cchKeySize,
        value,
        cchValueSize,
      );

  bool getQueryFirstUgcKeyValueTag(
    UgcQueryHandle handle,
    int index,
    Pointer<Utf8> key,
    Pointer<Utf8> value,
    int cchValueSize,
  ) =>
      _getQueryFirstUgcKeyValueTag.call(
        this,
        handle,
        index,
        key,
        value,
        cchValueSize,
      );

  bool releaseQueryUgcRequest(
    UgcQueryHandle handle,
  ) =>
      _releaseQueryUgcRequest.call(
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

  bool setReturnOnlyIds(
    UgcQueryHandle handle,
    bool returnOnlyIds,
  ) =>
      _setReturnOnlyIds.call(
        this,
        handle,
        returnOnlyIds,
      );

  bool setReturnKeyValueTags(
    UgcQueryHandle handle,
    bool returnKeyValueTags,
  ) =>
      _setReturnKeyValueTags.call(
        this,
        handle,
        returnKeyValueTags,
      );

  bool setReturnLongDescription(
    UgcQueryHandle handle,
    bool returnLongDescription,
  ) =>
      _setReturnLongDescription.call(
        this,
        handle,
        returnLongDescription,
      );

  bool setReturnMetadata(
    UgcQueryHandle handle,
    bool returnMetadata,
  ) =>
      _setReturnMetadata.call(
        this,
        handle,
        returnMetadata,
      );

  bool setReturnChildren(
    UgcQueryHandle handle,
    bool returnChildren,
  ) =>
      _setReturnChildren.call(
        this,
        handle,
        returnChildren,
      );

  bool setReturnAdditionalPreviews(
    UgcQueryHandle handle,
    bool returnAdditionalPreviews,
  ) =>
      _setReturnAdditionalPreviews.call(
        this,
        handle,
        returnAdditionalPreviews,
      );

  bool setReturnTotalOnly(
    UgcQueryHandle handle,
    bool returnTotalOnly,
  ) =>
      _setReturnTotalOnly.call(
        this,
        handle,
        returnTotalOnly,
      );

  bool setReturnPlaytimeStats(
    UgcQueryHandle handle,
    int days,
  ) =>
      _setReturnPlaytimeStats.call(
        this,
        handle,
        days,
      );

  bool setLanguage(
    UgcQueryHandle handle,
    Pointer<Utf8> language,
  ) =>
      _setLanguage.call(
        this,
        handle,
        language,
      );

  bool setAllowCachedResponse(
    UgcQueryHandle handle,
    int maxAgeSeconds,
  ) =>
      _setAllowCachedResponse.call(
        this,
        handle,
        maxAgeSeconds,
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
    bool matchAnyTag,
  ) =>
      _setMatchAnyTag.call(
        this,
        handle,
        matchAnyTag,
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
    int days,
  ) =>
      _setRankedByTrendDays.call(
        this,
        handle,
        days,
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

  SteamApiCall requestUgcDetails(
    PublishedFileId nPublishedFileId,
    int maxAgeSeconds,
  ) =>
      _requestUgcDetails.call(
        this,
        nPublishedFileId,
        maxAgeSeconds,
      );

  SteamApiCall createItem(
    AppId nConsumerAppId,
    EWorkshopFileType fileType,
  ) =>
      _createItem.call(
        this,
        nConsumerAppId,
        fileType,
      );

  UgcUpdateHandle startItemUpdate(
    AppId nConsumerAppId,
    PublishedFileId nPublishedFileId,
  ) =>
      _startItemUpdate.call(
        this,
        nConsumerAppId,
        nPublishedFileId,
      );

  bool setItemTitle(
    UgcUpdateHandle handle,
    Pointer<Utf8> title,
  ) =>
      _setItemTitle.call(
        this,
        handle,
        title,
      );

  bool setItemDescription(
    UgcUpdateHandle handle,
    Pointer<Utf8> description,
  ) =>
      _setItemDescription.call(
        this,
        handle,
        description,
      );

  bool setItemUpdateLanguage(
    UgcUpdateHandle handle,
    Pointer<Utf8> language,
  ) =>
      _setItemUpdateLanguage.call(
        this,
        handle,
        language,
      );

  bool setItemMetadata(
    UgcUpdateHandle handle,
    Pointer<Utf8> metaData,
  ) =>
      _setItemMetadata.call(
        this,
        handle,
        metaData,
      );

  bool setItemVisibility(
    UgcUpdateHandle handle,
    ERemoteStoragePublishedFileVisibility visibility,
  ) =>
      _setItemVisibility.call(
        this,
        handle,
        visibility,
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
    bool allowLegacyUpload,
  ) =>
      _setAllowLegacyUpload.call(
        this,
        handle,
        allowLegacyUpload,
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
    Pointer<Utf8> key,
  ) =>
      _removeItemKeyValueTags.call(
        this,
        handle,
        key,
      );

  bool addItemKeyValueTag(
    UgcUpdateHandle handle,
    Pointer<Utf8> key,
    Pointer<Utf8> value,
  ) =>
      _addItemKeyValueTag.call(
        this,
        handle,
        key,
        value,
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
    Pointer<Utf8> pszVideoId,
  ) =>
      _addItemPreviewVideo.call(
        this,
        handle,
        pszVideoId,
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
    Pointer<Utf8> pszVideoId,
  ) =>
      _updateItemPreviewVideo.call(
        this,
        handle,
        index,
        pszVideoId,
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
    Pointer<Utf8> changeNote,
  ) =>
      _submitItemUpdate.call(
        this,
        handle,
        changeNote,
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
    PublishedFileId nPublishedFileId,
    bool voteUp,
  ) =>
      _setUserItemVote.call(
        this,
        nPublishedFileId,
        voteUp,
      );

  SteamApiCall getUserItemVote(
    PublishedFileId nPublishedFileId,
  ) =>
      _getUserItemVote.call(
        this,
        nPublishedFileId,
      );

  SteamApiCall addItemToFavorites(
    AppId nAppId,
    PublishedFileId nPublishedFileId,
  ) =>
      _addItemToFavorites.call(
        this,
        nAppId,
        nPublishedFileId,
      );

  SteamApiCall removeItemFromFavorites(
    AppId nAppId,
    PublishedFileId nPublishedFileId,
  ) =>
      _removeItemFromFavorites.call(
        this,
        nAppId,
        nPublishedFileId,
      );

  SteamApiCall subscribeItem(
    PublishedFileId nPublishedFileId,
  ) =>
      _subscribeItem.call(
        this,
        nPublishedFileId,
      );

  SteamApiCall unsubscribeItem(
    PublishedFileId nPublishedFileId,
  ) =>
      _unsubscribeItem.call(
        this,
        nPublishedFileId,
      );

  int getNumSubscribedItems() => _getNumSubscribedItems.call(
        this,
      );

  int getSubscribedItems(
    Pointer<UnsignedLongLong> pvecPublishedFileId,
    int cMaxEntries,
  ) =>
      _getSubscribedItems.call(
        this,
        pvecPublishedFileId,
        cMaxEntries,
      );

  int getItemState(
    PublishedFileId nPublishedFileId,
  ) =>
      _getItemState.call(
        this,
        nPublishedFileId,
      );

  bool getItemInstallInfo(
    PublishedFileId nPublishedFileId,
    Pointer<UnsignedLongLong> punSizeOnDisk,
    Pointer<Utf8> folder,
    int cchFolderSize,
    Pointer<UnsignedInt> punTimeStamp,
  ) =>
      _getItemInstallInfo.call(
        this,
        nPublishedFileId,
        punSizeOnDisk,
        folder,
        cchFolderSize,
        punTimeStamp,
      );

  bool getItemDownloadInfo(
    PublishedFileId nPublishedFileId,
    Pointer<UnsignedLongLong> punBytesDownloaded,
    Pointer<UnsignedLongLong> punBytesTotal,
  ) =>
      _getItemDownloadInfo.call(
        this,
        nPublishedFileId,
        punBytesDownloaded,
        punBytesTotal,
      );

  bool downloadItem(
    PublishedFileId nPublishedFileId,
    bool highPriority,
  ) =>
      _downloadItem.call(
        this,
        nPublishedFileId,
        highPriority,
      );

  bool bInitWorkshopForGameServer(
    DepotId workshopDepotId,
    Pointer<Utf8> pszFolder,
  ) =>
      _bInitWorkshopForGameServer.call(
        this,
        workshopDepotId,
        pszFolder,
      );

  void suspendDownloads(
    bool suspend,
  ) =>
      _suspendDownloads.call(
        this,
        suspend,
      );

  SteamApiCall startPlaytimeTracking(
    Pointer<UnsignedLongLong> pvecPublishedFileId,
    int numPublishedFileIds,
  ) =>
      _startPlaytimeTracking.call(
        this,
        pvecPublishedFileId,
        numPublishedFileIds,
      );

  SteamApiCall stopPlaytimeTracking(
    Pointer<UnsignedLongLong> pvecPublishedFileId,
    int numPublishedFileIds,
  ) =>
      _stopPlaytimeTracking.call(
        this,
        pvecPublishedFileId,
        numPublishedFileIds,
      );

  SteamApiCall stopPlaytimeTrackingForAllItems() =>
      _stopPlaytimeTrackingForAllItems.call(
        this,
      );

  SteamApiCall addDependency(
    PublishedFileId nParentPublishedFileId,
    PublishedFileId nChildPublishedFileId,
  ) =>
      _addDependency.call(
        this,
        nParentPublishedFileId,
        nChildPublishedFileId,
      );

  SteamApiCall removeDependency(
    PublishedFileId nParentPublishedFileId,
    PublishedFileId nChildPublishedFileId,
  ) =>
      _removeDependency.call(
        this,
        nParentPublishedFileId,
        nChildPublishedFileId,
      );

  SteamApiCall addAppDependency(
    PublishedFileId nPublishedFileId,
    AppId nAppId,
  ) =>
      _addAppDependency.call(
        this,
        nPublishedFileId,
        nAppId,
      );

  SteamApiCall removeAppDependency(
    PublishedFileId nPublishedFileId,
    AppId nAppId,
  ) =>
      _removeAppDependency.call(
        this,
        nPublishedFileId,
        nAppId,
      );

  SteamApiCall getAppDependencies(
    PublishedFileId nPublishedFileId,
  ) =>
      _getAppDependencies.call(
        this,
        nPublishedFileId,
      );

  SteamApiCall deleteItem(
    PublishedFileId nPublishedFileId,
  ) =>
      _deleteItem.call(
        this,
        nPublishedFileId,
      );

  bool showWorkshopEula() => _showWorkshopEula.call(
        this,
      );

  SteamApiCall getWorkshopEulaStatus() => _getWorkshopEulaStatus.call(
        this,
      );
}
