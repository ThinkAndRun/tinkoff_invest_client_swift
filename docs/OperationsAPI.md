# OperationsAPI

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operationsGet**](OperationsAPI.md#operationsget) | **GET** /operations | Получение списка операций


# **operationsGet**
```swift
    open class func operationsGet(from: Date, to: Date, figi: String? = nil, brokerAccountId: String? = nil, completion: @escaping (_ data: OperationsResponse?, _ error: Error?) -> Void)
```

Получение списка операций

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let from = Date() // Date | Начало временного промежутка
let to = Date() // Date | Конец временного промежутка
let figi = "figi_example" // String | Figi инструмента для фильтрации (optional)
let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Получение списка операций
OperationsAPI.operationsGet(from: from, to: to, figi: figi, brokerAccountId: brokerAccountId) { (response, error) in
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
 **from** | **Date** | Начало временного промежутка | 
 **to** | **Date** | Конец временного промежутка | 
 **figi** | **String** | Figi инструмента для фильтрации | [optional] 
 **brokerAccountId** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**OperationsResponse**](OperationsResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

