# Operation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**status** | [**OperationStatus**](OperationStatus.md) |  | 
**trades** | [OperationTrade] |  | [optional] 
**commission** | [**MoneyAmount**](MoneyAmount.md) |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | 
**payment** | **Double** |  | 
**price** | **Double** |  | [optional] 
**quantity** | **Int** | Число инструментов в выставленной заявке | [optional] 
**quantityExecuted** | **Int** | Число инструментов, исполненных в заявке | [optional] 
**figi** | **String** |  | [optional] 
**instrumentType** | [**InstrumentType**](InstrumentType.md) |  | [optional] 
**isMarginCall** | **Bool** |  | 
**date** | **Date** | ISO8601 | 
**operationType** | [**OperationTypeWithCommission**](OperationTypeWithCommission.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


