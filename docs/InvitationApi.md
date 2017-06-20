# Iatec.Apis.Accounts.v1.Client.Api.InvitationApi

All URIs are relative to *https://ws-accounts-dev.sdasystems.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetLinkedUsers**](InvitationApi.md#getlinkedusers) | **GET** /applications/{appKey}/linked-users | Get many linked users
[**GetUserById**](InvitationApi.md#getuserbyid) | **GET** /users/{userId} | Get an user
[**GetUsers**](InvitationApi.md#getusers) | **GET** /users | Get many users
[**LinkUser**](InvitationApi.md#linkuser) | **POST** /applications/{appKey}/linked-users | Link user
[**UnlinkUser**](InvitationApi.md#unlinkuser) | **DELETE** /applications/{appKey}/linked-users/{userId} | Unlink user


<a name="getlinkedusers"></a>
# **GetLinkedUsers**
> PagedLinkedUserModel GetLinkedUsers (Guid? appKey, string filter = null, int? count = null, int? start = null)

Get many linked users

Get many linke users by an optional filter

### Example
```csharp
using System;
using System.Diagnostics;
using Iatec.Apis.Accounts.v1.Client.Api;
using Iatec.Apis.Accounts.v1.Client.Client;
using Iatec.Apis.Accounts.v1.Client.Model;

namespace Example
{
    public class GetLinkedUsersExample
    {
        public void main()
        {
            
            // Configure OAuth2 access token for authorization: client_credentials
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new InvitationApi();
            var appKey = appKey_example;  // Guid? | The AppKey of the application
            var filter = filter_example;  // string | A filter for matching the users (optional) 
            var count = 56;  // int? | The maximum number of records to bring. (optional) 
            var start = 56;  // int? | The number of records to skip. Used for pagination. (optional) 

            try
            {
                // Get many linked users
                PagedLinkedUserModel result = apiInstance.GetLinkedUsers(appKey, filter, count, start);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling InvitationApi.GetLinkedUsers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **Guid?**| The AppKey of the application | 
 **filter** | **string**| A filter for matching the users | [optional] 
 **count** | **int?**| The maximum number of records to bring. | [optional] 
 **start** | **int?**| The number of records to skip. Used for pagination. | [optional] 

### Return type

[**PagedLinkedUserModel**](PagedLinkedUserModel.md)

### Authorization

[client_credentials](../README.md#client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserbyid"></a>
# **GetUserById**
> UserModel GetUserById (Guid? userId)

Get an user

Get an user by Id

### Example
```csharp
using System;
using System.Diagnostics;
using Iatec.Apis.Accounts.v1.Client.Api;
using Iatec.Apis.Accounts.v1.Client.Client;
using Iatec.Apis.Accounts.v1.Client.Model;

namespace Example
{
    public class GetUserByIdExample
    {
        public void main()
        {
            
            // Configure OAuth2 access token for authorization: client_credentials
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new InvitationApi();
            var userId = userId_example;  // Guid? | The Id of the user

            try
            {
                // Get an user
                UserModel result = apiInstance.GetUserById(userId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling InvitationApi.GetUserById: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Guid?**| The Id of the user | 

### Return type

[**UserModel**](UserModel.md)

### Authorization

[client_credentials](../README.md#client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getusers"></a>
# **GetUsers**
> PagedUserModel GetUsers (string filter = null, int? count = null, int? start = null)

Get many users

Get many users by an optional filter

### Example
```csharp
using System;
using System.Diagnostics;
using Iatec.Apis.Accounts.v1.Client.Api;
using Iatec.Apis.Accounts.v1.Client.Client;
using Iatec.Apis.Accounts.v1.Client.Model;

namespace Example
{
    public class GetUsersExample
    {
        public void main()
        {
            
            // Configure OAuth2 access token for authorization: client_credentials
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new InvitationApi();
            var filter = filter_example;  // string | A filter for matching the users (optional) 
            var count = 56;  // int? | The maximum number of records to bring. (optional) 
            var start = 56;  // int? | The number of records to skip. Used for pagination. (optional) 

            try
            {
                // Get many users
                PagedUserModel result = apiInstance.GetUsers(filter, count, start);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling InvitationApi.GetUsers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **string**| A filter for matching the users | [optional] 
 **count** | **int?**| The maximum number of records to bring. | [optional] 
 **start** | **int?**| The number of records to skip. Used for pagination. | [optional] 

### Return type

[**PagedUserModel**](PagedUserModel.md)

### Authorization

[client_credentials](../README.md#client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="linkuser"></a>
# **LinkUser**
> UserModel LinkUser (Guid? appKey, LinkedUserModel body = null)

Link user

Link an user to an application. If the user does not exist, an invitation is sent to the user to fill in their remaining info.

### Example
```csharp
using System;
using System.Diagnostics;
using Iatec.Apis.Accounts.v1.Client.Api;
using Iatec.Apis.Accounts.v1.Client.Client;
using Iatec.Apis.Accounts.v1.Client.Model;

namespace Example
{
    public class LinkUserExample
    {
        public void main()
        {
            
            // Configure OAuth2 access token for authorization: client_credentials
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new InvitationApi();
            var appKey = appKey_example;  // Guid? | The AppKey of the application
            var body = new LinkedUserModel(); // LinkedUserModel | Data of the user to link to the application (optional) 

            try
            {
                // Link user
                UserModel result = apiInstance.LinkUser(appKey, body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling InvitationApi.LinkUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **Guid?**| The AppKey of the application | 
 **body** | [**LinkedUserModel**](LinkedUserModel.md)| Data of the user to link to the application | [optional] 

### Return type

[**UserModel**](UserModel.md)

### Authorization

[client_credentials](../README.md#client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="unlinkuser"></a>
# **UnlinkUser**
> void UnlinkUser (Guid? appKey, string userId)

Unlink user

Unlink an user from an application.

### Example
```csharp
using System;
using System.Diagnostics;
using Iatec.Apis.Accounts.v1.Client.Api;
using Iatec.Apis.Accounts.v1.Client.Client;
using Iatec.Apis.Accounts.v1.Client.Model;

namespace Example
{
    public class UnlinkUserExample
    {
        public void main()
        {
            
            // Configure OAuth2 access token for authorization: client_credentials
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new InvitationApi();
            var appKey = appKey_example;  // Guid? | The AppKey of the application
            var userId = userId_example;  // string | The Id of the user

            try
            {
                // Unlink user
                apiInstance.UnlinkUser(appKey, userId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling InvitationApi.UnlinkUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **Guid?**| The AppKey of the application | 
 **userId** | **string**| The Id of the user | 

### Return type

void (empty response body)

### Authorization

[client_credentials](../README.md#client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

