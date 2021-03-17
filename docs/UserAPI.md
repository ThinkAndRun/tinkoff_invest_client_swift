# UserAPI

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAccountsGet**](UserAPI.md#useraccountsget) | **GET** /user/accounts | Получение брокерских счетов клиента


# **userAccountsGet**
```swift
    open class func userAccountsGet(completion: @escaping (_ data: UserAccountsResponse?, _ error: Error?) -> Void)
```

Получение брокерских счетов клиента

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TinkoffInvestClient


// Получение брокерских счетов клиента
UserAPI.userAccountsGet() { (response, error) in
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

[**UserAccountsResponse**](UserAccountsResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

