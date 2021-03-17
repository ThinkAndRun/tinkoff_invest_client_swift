# MarketAPI

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketBondsGet**](MarketAPI.md#marketbondsget) | **GET** /market/bonds | Получение списка облигаций
[**marketCandlesGet**](MarketAPI.md#marketcandlesget) | **GET** /market/candles | Получение исторических свечей по FIGI
[**marketCurrenciesGet**](MarketAPI.md#marketcurrenciesget) | **GET** /market/currencies | Получение списка валютных пар
[**marketEtfsGet**](MarketAPI.md#marketetfsget) | **GET** /market/etfs | Получение списка ETF
[**marketOrderbookGet**](MarketAPI.md#marketorderbookget) | **GET** /market/orderbook | Получение стакана по FIGI
[**marketSearchByFigiGet**](MarketAPI.md#marketsearchbyfigiget) | **GET** /market/search/by-figi | Получение инструмента по FIGI
[**marketSearchByTickerGet**](MarketAPI.md#marketsearchbytickerget) | **GET** /market/search/by-ticker | Получение инструмента по тикеру
[**marketStocksGet**](MarketAPI.md#marketstocksget) | **GET** /market/stocks | Получение списка акций


# **marketBondsGet**
```swift
    open class func marketBondsGet(completion: @escaping (_ data: MarketInstrumentListResponse?, _ error: Error?) -> Void)
```

Получение списка облигаций

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient


// Получение списка облигаций
MarketAPI.marketBondsGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketCandlesGet**
```swift
    open class func marketCandlesGet(figi: String, from: Date, to: Date, interval: CandleResolution, completion: @escaping (_ data: CandlesResponse?, _ error: Error?) -> Void)
```

Получение исторических свечей по FIGI

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let figi = "figi_example" // String | FIGI
let from = Date() // Date | Начало временного промежутка
let to = Date() // Date | Конец временного промежутка
let interval = CandleResolution() // CandleResolution | Интервал свечи

// Получение исторических свечей по FIGI
MarketAPI.marketCandlesGet(figi: figi, from: from, to: to, interval: interval) { (response, error) in
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
 **figi** | **String** | FIGI | 
 **from** | **Date** | Начало временного промежутка | 
 **to** | **Date** | Конец временного промежутка | 
 **interval** | [**CandleResolution**](.md) | Интервал свечи | 

### Return type

[**CandlesResponse**](CandlesResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketCurrenciesGet**
```swift
    open class func marketCurrenciesGet(completion: @escaping (_ data: MarketInstrumentListResponse?, _ error: Error?) -> Void)
```

Получение списка валютных пар

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient


// Получение списка валютных пар
MarketAPI.marketCurrenciesGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketEtfsGet**
```swift
    open class func marketEtfsGet(completion: @escaping (_ data: MarketInstrumentListResponse?, _ error: Error?) -> Void)
```

Получение списка ETF

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient


// Получение списка ETF
MarketAPI.marketEtfsGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketOrderbookGet**
```swift
    open class func marketOrderbookGet(figi: String, depth: Int, completion: @escaping (_ data: OrderbookResponse?, _ error: Error?) -> Void)
```

Получение стакана по FIGI

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let figi = "figi_example" // String | FIGI
let depth = 987 // Int | Глубина стакана [1..20]

// Получение стакана по FIGI
MarketAPI.marketOrderbookGet(figi: figi, depth: depth) { (response, error) in
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
 **figi** | **String** | FIGI | 
 **depth** | **Int** | Глубина стакана [1..20] | 

### Return type

[**OrderbookResponse**](OrderbookResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketSearchByFigiGet**
```swift
    open class func marketSearchByFigiGet(figi: String, completion: @escaping (_ data: SearchMarketInstrumentResponse?, _ error: Error?) -> Void)
```

Получение инструмента по FIGI

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let figi = "figi_example" // String | FIGI

// Получение инструмента по FIGI
MarketAPI.marketSearchByFigiGet(figi: figi) { (response, error) in
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
 **figi** | **String** | FIGI | 

### Return type

[**SearchMarketInstrumentResponse**](SearchMarketInstrumentResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketSearchByTickerGet**
```swift
    open class func marketSearchByTickerGet(ticker: String, completion: @escaping (_ data: MarketInstrumentListResponse?, _ error: Error?) -> Void)
```

Получение инструмента по тикеру

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient

let ticker = "ticker_example" // String | Тикер инструмента

// Получение инструмента по тикеру
MarketAPI.marketSearchByTickerGet(ticker: ticker) { (response, error) in
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
 **ticker** | **String** | Тикер инструмента | 

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketStocksGet**
```swift
    open class func marketStocksGet(completion: @escaping (_ data: MarketInstrumentListResponse?, _ error: Error?) -> Void)
```

Получение списка акций

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient


// Получение списка акций
MarketAPI.marketStocksGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

