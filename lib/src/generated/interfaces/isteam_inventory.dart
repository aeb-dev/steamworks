// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../dl.dart";
import "../enums/eresult.dart";
import "../structs/steam_item_details.dart";
import "../typedefs.dart";

final _steamInventory = dl.lookupFunction<Pointer<ISteamInventory> Function(),
    Pointer<ISteamInventory> Function()>("SteamAPI_SteamInventory_v003");

final _steamGameServerInventory = dl.lookupFunction<
    Pointer<ISteamInventory> Function(),
    Pointer<ISteamInventory>
        Function()>("SteamAPI_SteamGameServerInventory_v003");

class ISteamInventory extends Opaque {
  static Pointer<ISteamInventory> get userInstance => _steamInventory();

  static Pointer<ISteamInventory> get serverInstance =>
      _steamGameServerInventory();
}

final _getResultStatus = dl.lookupFunction<
    EResultAliasC Function(
  Pointer<ISteamInventory>,
  Int,
),
    EResultAliasDart Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
)>("SteamAPI_ISteamInventory_GetResultStatus");

final _getResultItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Int,
  Pointer<SteamItemDetails>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
  Pointer<SteamItemDetails>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetResultItems");

final _getResultItemProperty = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Int,
  UnsignedInt,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetResultItemProperty");

final _getResultTimestamp = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamInventory>,
  Int,
),
    int Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
)>("SteamAPI_ISteamInventory_GetResultTimestamp");

final _checkResultSteamId = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Int,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
  CSteamId,
)>("SteamAPI_ISteamInventory_CheckResultSteamID");

final _destroyResult = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInventory>,
  Int,
),
    void Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
)>("SteamAPI_ISteamInventory_DestroyResult");

final _getAllItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
)>("SteamAPI_ISteamInventory_GetAllItems");

final _getItemsById = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamInventory_GetItemsByID");

final _serializeResult = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Int,
  Pointer<Void>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryResult,
  Pointer<Void>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_SerializeResult");

final _deserializeResult = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Void>,
  UnsignedInt,
  Bool,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Void>,
  int,
  bool,
)>("SteamAPI_ISteamInventory_DeserializeResult");

final _generateItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_GenerateItems");

final _grantPromoItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
)>("SteamAPI_ISteamInventory_GrantPromoItems");

final _addPromoItem = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Int,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  SteamItemDef,
)>("SteamAPI_ISteamInventory_AddPromoItem");

final _addPromoItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Int>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Int>,
  int,
)>("SteamAPI_ISteamInventory_AddPromoItems");

final _consumeItem = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  UnsignedLongLong,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  SteamItemInstanceId,
  int,
)>("SteamAPI_ISteamInventory_ConsumeItem");

final _exchangeItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
  int,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_ExchangeItems");

final _transferItemQuantity = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  UnsignedLongLong,
  UnsignedInt,
  UnsignedLongLong,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  SteamItemInstanceId,
  int,
  SteamItemInstanceId,
)>("SteamAPI_ISteamInventory_TransferItemQuantity");

final _sendItemDropHeartbeat = dl.lookupFunction<
    Void Function(
  Pointer<ISteamInventory>,
),
    void Function(
  Pointer<ISteamInventory>,
)>("SteamAPI_ISteamInventory_SendItemDropHeartbeat");

final _triggerItemDrop = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Int,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  SteamItemDef,
)>("SteamAPI_ISteamInventory_TriggerItemDrop");

final _tradeItems = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  UnsignedLongLong,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  UnsignedInt,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
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
  Pointer<ISteamInventory>,
),
    bool Function(
  Pointer<ISteamInventory>,
)>("SteamAPI_ISteamInventory_LoadItemDefinitions");

final _getItemDefinitionIds = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetItemDefinitionIDs");

final _getItemDefinitionProperty = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamItemDef,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetItemDefinitionProperty");

final _requestEligiblePromoItemDefinitionsIds = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
),
    SteamApiCall Function(
  Pointer<ISteamInventory>,
  CSteamId,
)>("SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs");

final _getEligiblePromoItemDefinitionIds = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  Pointer<Int>,
  Pointer<UnsignedInt>,
),
    bool Function(
  Pointer<ISteamInventory>,
  CSteamId,
  Pointer<Int>,
  Pointer<UnsignedInt>,
)>("SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs");

final _startPurchase = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
  UnsignedInt,
),
    SteamApiCall Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedInt>,
  int,
)>("SteamAPI_ISteamInventory_StartPurchase");

final _requestPrices = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInventory>,
),
    SteamApiCall Function(
  Pointer<ISteamInventory>,
)>("SteamAPI_ISteamInventory_RequestPrices");

final _getNumItemsWithPrices = dl.lookupFunction<
    UnsignedInt Function(
  Pointer<ISteamInventory>,
),
    int Function(
  Pointer<ISteamInventory>,
)>("SteamAPI_ISteamInventory_GetNumItemsWithPrices");

final _getItemsWithPrices = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
  UnsignedInt,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
  int,
)>("SteamAPI_ISteamInventory_GetItemsWithPrices");

final _getItemPrice = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Int,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamItemDef,
  Pointer<UnsignedLongLong>,
  Pointer<UnsignedLongLong>,
)>("SteamAPI_ISteamInventory_GetItemPrice");

final _startUpdateProperties = dl.lookupFunction<
    UnsignedLongLong Function(
  Pointer<ISteamInventory>,
),
    SteamInventoryUpdateHandle Function(
  Pointer<ISteamInventory>,
)>("SteamAPI_ISteamInventory_StartUpdateProperties");

final _removeProperty = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInventory_RemoveProperty");

final _setPropertyString = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInventory_SetPropertyString");

final _setPropertyBool = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  Bool,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  bool,
)>("SteamAPI_ISteamInventory_SetPropertyBool");

final _setPropertyInt64 = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  LongLong,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  int,
)>("SteamAPI_ISteamInventory_SetPropertyInt64");

final _setPropertyFloat = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  UnsignedLongLong,
  Pointer<Utf8>,
  Float,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryUpdateHandle,
  SteamItemInstanceId,
  Pointer<Utf8>,
  double,
)>("SteamAPI_ISteamInventory_SetPropertyFloat");

final _submitUpdateProperties = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  UnsignedLongLong,
  Pointer<Int>,
),
    bool Function(
  Pointer<ISteamInventory>,
  SteamInventoryUpdateHandle,
  Pointer<Int>,
)>("SteamAPI_ISteamInventory_SubmitUpdateProperties");

final _inspectItem = dl.lookupFunction<
    Bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Utf8>,
),
    bool Function(
  Pointer<ISteamInventory>,
  Pointer<Int>,
  Pointer<Utf8>,
)>("SteamAPI_ISteamInventory_InspectItem");

extension ISteamInventoryExtensions on Pointer<ISteamInventory> {
  EResult getResultStatus(
    SteamInventoryResult resultHandle,
  ) =>
      EResult.fromValue(
        _getResultStatus.call(
          this,
          resultHandle,
        ),
      );

  bool getResultItems(
    SteamInventoryResult resultHandle,
    Pointer<SteamItemDetails> pOutItemsArray,
    Pointer<UnsignedInt> outItemsArraySize,
  ) =>
      _getResultItems.call(
        this,
        resultHandle,
        pOutItemsArray,
        outItemsArraySize,
      );

  bool getResultItemProperty(
    SteamInventoryResult resultHandle,
    int itemIndex,
    Pointer<Utf8> propertyName,
    Pointer<Utf8> valueBuffer,
    Pointer<UnsignedInt> valueBufferSizeOut,
  ) =>
      _getResultItemProperty.call(
        this,
        resultHandle,
        itemIndex,
        propertyName,
        valueBuffer,
        valueBufferSizeOut,
      );

  int getResultTimestamp(
    SteamInventoryResult resultHandle,
  ) =>
      _getResultTimestamp.call(
        this,
        resultHandle,
      );

  bool checkResultSteamId(
    SteamInventoryResult resultHandle,
    CSteamId steamIdExpected,
  ) =>
      _checkResultSteamId.call(
        this,
        resultHandle,
        steamIdExpected,
      );

  void destroyResult(
    SteamInventoryResult resultHandle,
  ) =>
      _destroyResult.call(
        this,
        resultHandle,
      );

  bool getAllItems(
    Pointer<Int> pResultHandle,
  ) =>
      _getAllItems.call(
        this,
        pResultHandle,
      );

  bool getItemsById(
    Pointer<Int> pResultHandle,
    Pointer<UnsignedLongLong> pInstanceIds,
    int countInstanceIds,
  ) =>
      _getItemsById.call(
        this,
        pResultHandle,
        pInstanceIds,
        countInstanceIds,
      );

  bool serializeResult(
    SteamInventoryResult resultHandle,
    Pointer<Void> pOutBuffer,
    Pointer<UnsignedInt> outBufferSize,
  ) =>
      _serializeResult.call(
        this,
        resultHandle,
        pOutBuffer,
        outBufferSize,
      );

  bool deserializeResult(
    Pointer<Int> pOutResultHandle,
    Pointer<Void> pBuffer,
    int bufferSize,
    bool reservedmustbefalse,
  ) =>
      _deserializeResult.call(
        this,
        pOutResultHandle,
        pBuffer,
        bufferSize,
        reservedmustbefalse,
      );

  bool generateItems(
    Pointer<Int> pResultHandle,
    Pointer<Int> pArrayItemDefs,
    Pointer<UnsignedInt> arrayQuantity,
    int arrayLength,
  ) =>
      _generateItems.call(
        this,
        pResultHandle,
        pArrayItemDefs,
        arrayQuantity,
        arrayLength,
      );

  bool grantPromoItems(
    Pointer<Int> pResultHandle,
  ) =>
      _grantPromoItems.call(
        this,
        pResultHandle,
      );

  bool addPromoItem(
    Pointer<Int> pResultHandle,
    SteamItemDef itemDef,
  ) =>
      _addPromoItem.call(
        this,
        pResultHandle,
        itemDef,
      );

  bool addPromoItems(
    Pointer<Int> pResultHandle,
    Pointer<Int> pArrayItemDefs,
    int arrayLength,
  ) =>
      _addPromoItems.call(
        this,
        pResultHandle,
        pArrayItemDefs,
        arrayLength,
      );

  bool consumeItem(
    Pointer<Int> pResultHandle,
    SteamItemInstanceId itemConsume,
    int quantity,
  ) =>
      _consumeItem.call(
        this,
        pResultHandle,
        itemConsume,
        quantity,
      );

  bool exchangeItems(
    Pointer<Int> pResultHandle,
    Pointer<Int> pArrayGenerate,
    Pointer<UnsignedInt> arrayGenerateQuantity,
    int arrayGenerateLength,
    Pointer<UnsignedLongLong> pArrayDestroy,
    Pointer<UnsignedInt> arrayDestroyQuantity,
    int arrayDestroyLength,
  ) =>
      _exchangeItems.call(
        this,
        pResultHandle,
        pArrayGenerate,
        arrayGenerateQuantity,
        arrayGenerateLength,
        pArrayDestroy,
        arrayDestroyQuantity,
        arrayDestroyLength,
      );

  bool transferItemQuantity(
    Pointer<Int> pResultHandle,
    SteamItemInstanceId itemIdSource,
    int quantity,
    SteamItemInstanceId itemIdDest,
  ) =>
      _transferItemQuantity.call(
        this,
        pResultHandle,
        itemIdSource,
        quantity,
        itemIdDest,
      );

  void sendItemDropHeartbeat() => _sendItemDropHeartbeat.call(
        this,
      );

  bool triggerItemDrop(
    Pointer<Int> pResultHandle,
    SteamItemDef dropListDefinition,
  ) =>
      _triggerItemDrop.call(
        this,
        pResultHandle,
        dropListDefinition,
      );

  bool tradeItems(
    Pointer<Int> pResultHandle,
    CSteamId steamIdTradePartner,
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
        steamIdTradePartner,
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

  bool getItemDefinitionIds(
    Pointer<Int> pItemDefIds,
    Pointer<UnsignedInt> itemDefIdsArraySize,
  ) =>
      _getItemDefinitionIds.call(
        this,
        pItemDefIds,
        itemDefIdsArraySize,
      );

  bool getItemDefinitionProperty(
    SteamItemDef iDefinition,
    Pointer<Utf8> propertyName,
    Pointer<Utf8> valueBuffer,
    Pointer<UnsignedInt> valueBufferSizeOut,
  ) =>
      _getItemDefinitionProperty.call(
        this,
        iDefinition,
        propertyName,
        valueBuffer,
        valueBufferSizeOut,
      );

  SteamApiCall requestEligiblePromoItemDefinitionsIds(
    CSteamId steamId,
  ) =>
      _requestEligiblePromoItemDefinitionsIds.call(
        this,
        steamId,
      );

  bool getEligiblePromoItemDefinitionIds(
    CSteamId steamId,
    Pointer<Int> pItemDefIds,
    Pointer<UnsignedInt> itemDefIdsArraySize,
  ) =>
      _getEligiblePromoItemDefinitionIds.call(
        this,
        steamId,
        pItemDefIds,
        itemDefIdsArraySize,
      );

  SteamApiCall startPurchase(
    Pointer<Int> pArrayItemDefs,
    Pointer<UnsignedInt> arrayQuantity,
    int arrayLength,
  ) =>
      _startPurchase.call(
        this,
        pArrayItemDefs,
        arrayQuantity,
        arrayLength,
      );

  SteamApiCall requestPrices() => _requestPrices.call(
        this,
      );

  int getNumItemsWithPrices() => _getNumItemsWithPrices.call(
        this,
      );

  bool getItemsWithPrices(
    Pointer<Int> pArrayItemDefs,
    Pointer<UnsignedLongLong> pCurrentPrices,
    Pointer<UnsignedLongLong> pBasePrices,
    int arrayLength,
  ) =>
      _getItemsWithPrices.call(
        this,
        pArrayItemDefs,
        pCurrentPrices,
        pBasePrices,
        arrayLength,
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
    SteamItemInstanceId nItemId,
    Pointer<Utf8> propertyName,
  ) =>
      _removeProperty.call(
        this,
        handle,
        nItemId,
        propertyName,
      );

  bool setPropertyString(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemId,
    Pointer<Utf8> propertyName,
    Pointer<Utf8> propertyValue,
  ) =>
      _setPropertyString.call(
        this,
        handle,
        nItemId,
        propertyName,
        propertyValue,
      );

  bool setPropertyBool(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemId,
    Pointer<Utf8> propertyName,
    bool value,
  ) =>
      _setPropertyBool.call(
        this,
        handle,
        nItemId,
        propertyName,
        value,
      );

  bool setPropertyInt64(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemId,
    Pointer<Utf8> propertyName,
    int nValue,
  ) =>
      _setPropertyInt64.call(
        this,
        handle,
        nItemId,
        propertyName,
        nValue,
      );

  bool setPropertyFloat(
    SteamInventoryUpdateHandle handle,
    SteamItemInstanceId nItemId,
    Pointer<Utf8> propertyName,
    double value,
  ) =>
      _setPropertyFloat.call(
        this,
        handle,
        nItemId,
        propertyName,
        value,
      );

  bool submitUpdateProperties(
    SteamInventoryUpdateHandle handle,
    Pointer<Int> pResultHandle,
  ) =>
      _submitUpdateProperties.call(
        this,
        handle,
        pResultHandle,
      );

  bool inspectItem(
    Pointer<Int> pResultHandle,
    Pointer<Utf8> itemToken,
  ) =>
      _inspectItem.call(
        this,
        pResultHandle,
        itemToken,
      );
}
