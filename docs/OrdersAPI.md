# OrdersAPI

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersCancelPost**](OrdersAPI.md#orderscancelpost) | **POST** /orders/cancel | Отмена заявки
[**ordersGet**](OrdersAPI.md#ordersget) | **GET** /orders | Получение списка активных заявок
[**ordersLimitOrderPost**](OrdersAPI.md#orderslimitorderpost) | **POST** /orders/limit-order | Создание лимитной заявки
[**ordersMarketOrderPost**](OrdersAPI.md#ordersmarketorderpost) | **POST** /orders/market-order | Создание рыночной заявки


# **ordersCancelPost**
```swift
    open class func ordersCancelPost(orderId: String, brokerAccountId: String? = nil, completion: @escaping (_ data: Empty?, _ error: Error?) -> Void)
```

Отмена заявки

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let orderId = "orderId_example" // String | ID заявки
let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Отмена заявки
OrdersAPI.ordersCancelPost(orderId: orderId, brokerAccountId: brokerAccountId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String** | ID заявки | 
 **brokerAccountId** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGet**
```swift
    open class func ordersGet(brokerAccountId: String? = nil, completion: @escaping (_ data: OrdersResponse?, _ error: Error?) -> Void)
```

Получение списка активных заявок

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Получение списка активных заявок
OrdersAPI.ordersGet(brokerAccountId: brokerAccountId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brokerAccountId** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**OrdersResponse**](OrdersResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersLimitOrderPost**
```swift
    open class func ordersLimitOrderPost(figi: String, limitOrderRequest: LimitOrderRequest, brokerAccountId: String? = nil, completion: @escaping (_ data: LimitOrderResponse?, _ error: Error?) -> Void)
```

Создание лимитной заявки

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let figi = "figi_example" // String | FIGI инструмента
let limitOrderRequest = LimitOrderRequest(lots: 123, operation: OperationType(), price: 123) // LimitOrderRequest | 
let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Создание лимитной заявки
OrdersAPI.ordersLimitOrderPost(figi: figi, limitOrderRequest: limitOrderRequest, brokerAccountId: brokerAccountId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **figi** | **String** | FIGI инструмента | 
 **limitOrderRequest** | [**LimitOrderRequest**](LimitOrderRequest.md) |  | 
 **brokerAccountId** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**LimitOrderResponse**](LimitOrderResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersMarketOrderPost**
```swift
    open class func ordersMarketOrderPost(figi: String, marketOrderRequest: MarketOrderRequest, brokerAccountId: String? = nil, completion: @escaping (_ data: MarketOrderResponse?, _ error: Error?) -> Void)
```

Создание рыночной заявки

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let figi = "figi_example" // String | FIGI инструмента
let marketOrderRequest = MarketOrderRequest(lots: 123, operation: OperationType()) // MarketOrderRequest | 
let brokerAccountId = "brokerAccountId_example" // String | Уникальный идентификатор счета (по умолчанию - Тинькофф) (optional)

// Создание рыночной заявки
OrdersAPI.ordersMarketOrderPost(figi: figi, marketOrderRequest: marketOrderRequest, brokerAccountId: brokerAccountId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **figi** | **String** | FIGI инструмента | 
 **marketOrderRequest** | [**MarketOrderRequest**](MarketOrderRequest.md) |  | 
 **brokerAccountId** | **String** | Уникальный идентификатор счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**MarketOrderResponse**](MarketOrderResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

