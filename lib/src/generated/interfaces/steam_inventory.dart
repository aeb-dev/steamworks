import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/e_result.dart";
import "../steam_api.dart";
import "../structs/steam_item_details.dart";
import "../typedefs.dart";

class SteamInventory extends Opaque {
  static Pointer<SteamInventory> steamInventory() => nullptr;
  static Pointer<SteamInventory> steamGameServerInventory() => nullptr;
}

final _getResultStatus = dl.lookupFunction<
    Int32 Function(
  Pointer<SteamInventory>,
  Int,
),
    EResult Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
)>("SteamAPI_ISteamInventory_GetResultStatus");

final _getResultItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Int,
  Pointer<SteamItemDetails>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
  Pointer<SteamItemDetails>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetResultItems");

final _getResultItemProperty = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Int,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetResultItemProperty");

final _getResultTimestamp = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamInventory>,
  Int,
),
    int Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
)>("SteamAPI_ISteamInventory_GetResultTimestamp");

final _checkResultSteamID = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Int,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
  CSteamId,
)>("SteamAPI_ISteamInventory_CheckResultSteamID");

final _destroyResult = dl.lookupFunction<
    Void Function(
  Pointer<SteamInventory>,
  Int,
),
    void Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
)>("SteamAPI_ISteamInventory_DestroyResult");

final _getAllItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
)>("SteamAPI_ISteamInventory_GetAllItems");

final _getItemsByID = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamInventory_GetItemsByID");

final _serializeResult = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Int,
  Pointer<Void>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryResult,
  Pointer<Void>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_SerializeResult");

final _deserializeResult = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Void>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Void>,
  int,
  bool,
)>("SteamAPI_ISteamInventory_DeserializeResult");

final _generateItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_GenerateItems");

final _grantPromoItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
)>("SteamAPI_ISteamInventory_GrantPromoItems");

final _addPromoItem = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Int,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  SteamItemDef,
)>("SteamAPI_ISteamInventory_AddPromoItem");

final _addPromoItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Int32>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Int32>,
  int,
)>("SteamAPI_ISteamInventory_AddPromoItems");

final _consumeItem = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  SteamItemInstanceId,
  int,
)>("SteamAPI_ISteamInventory_ConsumeItem");

final _exchangeItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
  int,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_ExchangeItems");

final _transferItemQuantity = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  SteamItemInstanceId,
  int,
  SteamItemInstanceId,
)>("SteamAPI_ISteamInventory_TransferItemQuantity");

final _sendItemDropHeartbeat = dl.lookupFunction<
    Void Function(
  Pointer<SteamInventory>,
),
    void Function(
  Pointer<SteamInventory>,
)>("SteamAPI_ISteamInventory_SendItemDropHeartbeat");

final _triggerItemDrop = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Int,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  SteamItemDef,
)>("SteamAPI_ISteamInventory_TriggerItemDrop");

final _tradeItems = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  CSteamId,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  int,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_TradeItems");

final _loadItemDefinitions = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
),
    bool Function(
  Pointer<SteamInventory>,
)>("SteamAPI_ISteamInventory_LoadItemDefinitions");

final _getItemDefinitionIDs = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetItemDefinitionIDs");

final _getItemDefinitionProperty = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamItemDef,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetItemDefinitionProperty");

final _requestEligiblePromoItemDefinitionsIDs = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<SteamInventory>,
  CSteamId,
)>("SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs");

final _getEligiblePromoItemDefinitionIDs = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<SteamInventory>,
  CSteamId,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs");

final _startPurchase = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_StartPurchase");

final _requestPrices = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInventory>,
),
    SteamApiCall Function(
  Pointer<SteamInventory>,
)>("SteamAPI_ISteamInventory_RequestPrices");

final _getNumItemsWithPrices = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<SteamInventory>,
),
    int Function(
  Pointer<SteamInventory>,
)>("SteamAPI_ISteamInventory_GetNumItemsWithPrices");

final _getItemsWithPrices = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamInventory_GetItemsWithPrices");

final _getItemPrice = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Int,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamItemDef,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamInventory_GetItemPrice");

final _startUpdateProperties = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<SteamInventory>,
),
    SteamInventoryUpdateHandle Function(
  Pointer<SteamInventory>,
)>("SteamAPI_ISteamInventory_StartUpdateProperties");

final _removeProperty = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInventory_RemoveProperty");

final _setPropertyString = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInventory_SetPropertyString");

final _setPropertyBool = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  Bool,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  bool,
)>("SteamAPI_ISteamInventory_SetPropertyBool");

final _setPropertyInt64 = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  LongLong,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamInventory_SetPropertyInt64");

final _setPropertyFloat = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  Float,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  double,
)>("SteamAPI_ISteamInventory_SetPropertyFloat");

final _submitUpdateProperties = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  UnsignedLongLong,
  Pointer<Int32>,
),
    bool Function(
  Pointer<SteamInventory>,
  SteamInventoryUpdateHandle,
  Pointer<Int32>,
)>("SteamAPI_ISteamInventory_SubmitUpdateProperties");

final _inspectItem = dl.lookupFunction<
    Bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<SteamInventory>,
  Pointer<Int32>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInventory_InspectItem");

extension SteamInventoryExtensions on Pointer<SteamInventory> {
  EResult getResultStatus(
    SteamInventoryResult resultHandle,
  ) =>
      _getResultStatus.call(
        this,
        resultHandle,
      );

  bool getResultItems(
    SteamInventoryResult resultHandle,
    Pointer<SteamItemDetails> pOutItemsArray,
    Pointer<UnsignedInt> punOutItemsArraySize,
  ) =>
      _getResultItems.call(
        this,
        resultHandle,
        pOutItemsArray,
        punOutItemsArraySize,
      );

  bool getResultItemProperty(
    SteamInventoryResult resultHandle,
    int unItemIndex,
    Pointer<Utf8> pchPropertyName,
    Pointer<Utf8> pchValueBuffer,
    Pointer<UnsignedInt> punValueBufferSizeOut,
  ) =>
      _getResultItemProperty.call(
        this,
        resultHandle,
        unItemIndex,
        pchPropertyName,
        pchValueBuffer,
        punValueBufferSizeOut,
      );

  int getResultTimestamp(
    SteamInventoryResult resultHandle,
  ) =>
      _getResultTimestamp.call(
        this,
        resultHandle,
      );

  bool checkResultSteamID(
    SteamInventoryResult resultHandle,
    CSteamId steamIDExpected,
  ) =>
      _checkResultSteamID.call(
        this,
        resultHandle,
        steamIDExpected,
      );

  void destroyResult(
    SteamInventoryResult resultHandle,
  ) =>
      _destroyResult.call(
        this,
        resultHandle,
      );

  bool getAllItems(
    Pointer<Int32> pResultHandle,
  ) =>
      _getAllItems.call(
        this,
        pResultHandle,
      );

  bool getItemsByID(
    Pointer<Int32> pResultHandle,
    Pointer<UnsignedLongLong> pInstanceIDs,
    int unCountInstanceIDs,
  ) =>
      _getItemsByID.call(
        this,
        pResultHandle,
        pInstanceIDs,
        unCountInstanceIDs,
      );

  bool serializeResult(
    SteamInventoryResult resultHandle,
    Pointer<Void> pOutBuffer,
    Pointer<UnsignedInt> punOutBufferSize,
  ) =>
      _serializeResult.call(
        this,
        resultHandle,
        pOutBuffer,
        punOutBufferSize,
      );

  bool deserializeResult(
    Pointer<Int32> pOutResultHandle,
    Pointer<Void> pBuffer,
    int unBufferSize,
    bool bRESERVEDMUSTBEFALSE,
  ) =>
      _deserializeResult.call(
        this,
        pOutResultHandle,
        pBuffer,
        unBufferSize,
        bRESERVEDMUSTBEFALSE,
      );

  bool generateItems(
    Pointer<Int32> pResultHandle,
    Pointer<Int32> pArrayItemDefs,
    Pointer<UnsignedInt> punArrayQuantity,
    int unArrayLength,
  ) =>
      _generateItems.call(
        this,
        pResultHandle,
        pArrayItemDefs,
        punArrayQuantity,
        unArrayLength,
      );

  bool grantPromoItems(
    Pointer<Int32> pResultHandle,
  ) =>
      _grantPromoItems.call(
        this,
        pResultHandle,
      );

  bool addPromoItem(
    Pointer<Int32> pResultHandle,
    SteamItemDef itemDef,
  ) =>
      _addPromoItem.call(
        this,
        pResultHandle,
        itemDef,
      );

  bool addPromoItems(
    Pointer<Int32> pResultHandle,
    Pointer<Int32> pArrayItemDefs,
    int unArrayLength,
  ) =>
      _addPromoItems.call(
        this,
        pResultHandle,
        pArrayItemDefs,
        unArrayLength,
      );

  bool consumeItem(
    Pointer<Int32> pResultHandle,
    SteamItemInstanceId itemConsume,
    int unQuantity,
  ) =>
      _consumeItem.call(
        this,
        pResultHandle,
        itemConsume,
        unQuantity,
      );

  bool exchangeItems(
    Pointer<Int32> pResultHandle,
    Pointer<Int32> pArrayGenerate,
    Pointer<UnsignedInt> punArrayGenerateQuantity,
    int unArrayGenerateLength,
    Pointer<UnsignedLongLong> pArrayDestroy,
    Pointer<UnsignedInt> punArrayDestroyQuantity,
    int unArrayDestroyLength,
  ) =>
      _exchangeItems.call(
        this,
        pResultHandle,
        pArrayGenerate,
        punArrayGenerateQuantity,
        unArrayGenerateLength,
        pArrayDestroy,
        punArrayDestroyQuantity,
        unArrayDestroyLength,
      );

  bool transferItemQuantity(
    Pointer<Int32> pResultHandle,
    SteamItemInstanceId itemIdSource,
    int unQuantity,
    SteamItemInstanceId itemIdDest,
  ) =>
      _transferItemQuantity.call(
        this,
        pResultHandle,
        itemIdSource,
        unQuantity,
        itemIdDest,
      );

  void sendItemDropHeartbeat() => _sendItemDropHeartbeat.call(
        this,
      );

  bool triggerItemDrop(
    Pointer<Int32> pResultHandle,
    SteamItemDef dropListDefinition,
  ) =>
      _triggerItemDrop.call(
        this,
        pResultHandle,
        dropListDefinition,
      );

  bool tradeItems(
    Pointer<Int32> pResultHandle,
    CSteamId steamIDTradePartner,
    Pointer<UnsignedLongLong> pArrayGive,
    Pointer<UnsignedInt> pArrayGiveQuantity,
    int nArrayGiveLength,
    Pointer<UnsignedLongLong> pArrayGet,
    Pointer<UnsignedInt> pArrayGetQuantity,
    int nArrayGetLength,
  ) =>
      _tradeItems.call(
        this,
        pResultHandle,
        steamIDTradePartner,
        pArrayGive,
        pArrayGiveQuantity,
        nArrayGiveLength,
        pArrayGet,
        pArrayGetQuantity,
        nArrayGetLength,
      );

  bool loadItemDefinitions() => _loadItemDefinitions.call(
        this,
      );

  bool getItemDefinitionIDs(
    Pointer<Int32> pItemDefIDs,
    Pointer<UnsignedInt> punItemDefIDsArraySize,
  ) =>
      _getItemDefinitionIDs.call(
        this,
        pItemDefIDs,
        punItemDefIDsArraySize,
      );

  bool getItemDefinitionProperty(
    SteamItemDef iDefinition,
    Pointer<Utf8> pchPropertyName,
    Pointer<Utf8> pchValueBuffer,
    Pointer<UnsignedInt> punValueBufferSizeOut,
  ) =>
      _getItemDefinitionProperty.call(
        this,
        iDefinition,
        pchPropertyName,
        pchValueBuffer,
        punValueBufferSizeOut,
      );

  SteamApiCall requestEligiblePromoItemDefinitionsIDs(
    CSteamId steamID,
  ) =>
      _requestEligiblePromoItemDefinitionsIDs.call(
        this,
        steamID,
      );

  bool getEligiblePromoItemDefinitionIDs(
    CSteamId steamID,
    Pointer<Int32> pItemDefIDs,
    Pointer<UnsignedInt> punItemDefIDsArraySize,
  ) =>
      _getEligiblePromoItemDefinitionIDs.call(
        this,
        steamID,
        pItemDefIDs,
        punItemDefIDsArraySize,
      );

  SteamApiCall startPurchase(
    Pointer<Int32> pArrayItemDefs,
    Pointer<UnsignedInt> punArrayQuantity,
    int unArrayLength,
  ) =>
      _startPurchase.call(
        this,
        pArrayItemDefs,
        punArrayQuantity,
        unArrayLength,
      );

  SteamApiCall requestPrices() => _requestPrices.call(
        this,
      );

  int getNumItemsWithPrices() => _getNumItemsWithPrices.call(
        this,
      );

  bool getItemsWithPrices(
    Pointer<Int32> pArrayItemDefs,
    Pointer<UnsignedLongLong> pCurrentPrices,
    Pointer<UnsignedLongLong> pBasePrices,
    int unArrayLength,
  ) =>
      _getItemsWithPrices.call(
        this,
        pArrayItemDefs,
        pCurrentPrices,
        pBasePrices,
        unArrayLength,
      );

  bool getItemPrice(
    SteamItemDef iDefinition,
    Pointer<UnsignedLongLong> pCurrentPrice,
    Pointer<UnsignedLongLong> pBasePrice,
  ) =>
      _getItemPrice.call(
        this,
        iDefinition,
        pCurrentPrice,
        pBasePrice,
      );

  SteamInventoryUpdateHandle startUpdateProperties() =>
      _startUpdateProperties.call(
        this,
      );

  bool removeProperty(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemID,
    Pointer<Utf8> pchPropertyName,
  ) =>
      _removeProperty.call(
        this,
        handle,
        nItemID,
        pchPropertyName,
      );

  bool setPropertyString(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemID,
    Pointer<Utf8> pchPropertyName,
    Pointer<Utf8> pchPropertyValue,
  ) =>
      _setPropertyString.call(
        this,
        handle,
        nItemID,
        pchPropertyName,
        pchPropertyValue,
      );

  bool setPropertyBool(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemID,
    Pointer<Utf8> pchPropertyName,
    bool bValue,
  ) =>
      _setPropertyBool.call(
        this,
        handle,
        nItemID,
        pchPropertyName,
        bValue,
      );

  bool setPropertyInt64(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemID,
    Pointer<Utf8> pchPropertyName,
    int nValue,
  ) =>
      _setPropertyInt64.call(
        this,
        handle,
        nItemID,
        pchPropertyName,
        nValue,
      );

  bool setPropertyFloat(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemID,
    Pointer<Utf8> pchPropertyName,
    double flValue,
  ) =>
      _setPropertyFloat.call(
        this,
        handle,
        nItemID,
        pchPropertyName,
        flValue,
      );

  bool submitUpdateProperties(
    SteamInventoryUpdateHandle handle,
    Pointer<Int32> pResultHandle,
  ) =>
      _submitUpdateProperties.call(
        this,
        handle,
        pResultHandle,
      );

  bool inspectItem(
    Pointer<Int32> pResultHandle,
    Pointer<Utf8> pchItemToken,
  ) =>
      _inspectItem.call(
        this,
        pResultHandle,
        pchItemToken,
      );
}
