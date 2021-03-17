# SandboxAPI

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sandboxClearPost**](SandboxAPI.md#sandboxclearpost) | **POST** /sandbox/clear | Удаление всех позиций
[**sandboxCurrenciesBalancePost**](SandboxAPI.md#sandboxcurrenciesbalancepost) | **POST** /sandbox/currencies/balance | Выставление баланса по валютным позициям
[**sandboxPositionsBalancePost**](SandboxAPI.md#sandboxpositionsbalancepost) | **POST** /sandbox/positions/balance | Выставление баланса по инструментным позициям
[**sandboxRegisterPost**](SandboxAPI.md#sandboxregisterpost) | **POST** /sandbox/register | Регистрация клиента в sandbox
[**sandboxRemovePost**](SandboxAPI.md#sandboxremovepost) | **POST** /sandbox/remove | Удаление счета


# **sandboxClearPost**
```swift
    open class func sandboxClearPost(brokerAccountId: String? = nil, completion: @escaping (_ data: Empty?, _ error: Error?) -> Void)
```

Удаление всех позиций

Удаление всех позиций клиента

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Удаление всех позиций
SandboxAPI.sandboxClearPost(brokerAccountId: brokerAccountId) { (response, error) in
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

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sandboxCurrenciesBalancePost**
```swift
    open class func sandboxCurrenciesBalancePost(sandboxSetCurrencyBalanceRequest: SandboxSetCurrencyBalanceRequest, brokerAccountId: String? = nil, completion: @escaping (_ data: Empty?, _ error: Error?) -> Void)
```

Выставление баланса по валютным позициям

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let sandboxSetCurrencyBalanceRequest = SandboxSetCurrencyBalanceRequest(currency: SandboxCurrency(), balance: 123) // SandboxSetCurrencyBalanceRequest | Запрос на выставление баланса по валютным позициям
let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Выставление баланса по валютным позициям
SandboxAPI.sandboxCurrenciesBalancePost(sandboxSetCurrencyBalanceRequest: sandboxSetCurrencyBalanceRequest, brokerAccountId: brokerAccountId) { (response, error) in
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
 **sandboxSetCurrencyBalanceRequest** | [**SandboxSetCurrencyBalanceRequest**](SandboxSetCurrencyBalanceRequest.md) | Запрос на выставление баланса по валютным позициям | 
 **brokerAccountId** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sandboxPositionsBalancePost**
```swift
    open class func sandboxPositionsBalancePost(sandboxSetPositionBalanceRequest: SandboxSetPositionBalanceRequest, brokerAccountId: String? = nil, completion: @escaping (_ data: Empty?, _ error: Error?) -> Void)
```

Выставление баланса по инструментным позициям

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let sandboxSetPositionBalanceRequest = SandboxSetPositionBalanceRequest(figi: "figi_example", balance: 123) // SandboxSetPositionBalanceRequest | Запрос на выставление баланса по инструментным позициям
let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Выставление баланса по инструментным позициям
SandboxAPI.sandboxPositionsBalancePost(sandboxSetPositionBalanceRequest: sandboxSetPositionBalanceRequest, brokerAccountId: brokerAccountId) { (response, error) in
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
 **sandboxSetPositionBalanceRequest** | [**SandboxSetPositionBalanceRequest**](SandboxSetPositionBalanceRequest.md) | Запрос на выставление баланса по инструментным позициям | 
 **brokerAccountId** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] 

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sandboxRegisterPost**
```swift
    open class func sandboxRegisterPost(sandboxRegisterRequest: SandboxRegisterRequest? = nil, completion: @escaping (_ data: SandboxRegisterResponse?, _ error: Error?) -> Void)
```

Регистрация клиента в sandbox

Создание счета и валютных позиций для клиента

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let sandboxRegisterRequest = SandboxRegisterRequest(brokerAccountType: BrokerAccountType()) // SandboxRegisterRequest | Запрос на создание счета и выставление баланса по валютным позициям (optional)

// Регистрация клиента в sandbox
SandboxAPI.sandboxRegisterPost(sandboxRegisterRequest: sandboxRegisterRequest) { (response, error) in
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
 **sandboxRegisterRequest** | [**SandboxRegisterRequest**](SandboxRegisterRequest.md) | Запрос на создание счета и выставление баланса по валютным позициям | [optional] 

### Return type

[**SandboxRegisterResponse**](SandboxRegisterResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sandboxRemovePost**
```swift
    open class func sandboxRemovePost(brokerAccountId: String? = nil, completion: @escaping (_ data: Empty?, _ error: Error?) -> Void)
```

Удаление счета

Удаление счета клиента

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let brokerAccountId = "brokerAccountId_example" // String | Номер счета (по умолчанию - Тинькофф) (optional)

// Удаление счета
SandboxAPI.sandboxRemovePost(brokerAccountId: brokerAccountId) { (response, error) in
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

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

