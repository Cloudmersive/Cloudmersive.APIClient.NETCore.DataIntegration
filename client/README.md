# Cloudmersive.APIClient.NETCore.DataIntegration - the C# library for the dataintegrationapi

Easily and directly query database backup files, convert into other file formats.

This C# SDK is for the [Cloudmersive Data Integration API](https://cloudmersive.com/data-integration-api):

- API version: v1
- SDK version: 2.0.3
- Build package: io.swagger.codegen.languages.CSharpClientCodegen

<a name="frameworks-supported"></a>
## Frameworks supported
- .NET Core >=1.0
- .NET Framework >=4.6
- Mono/Xamarin >=vNext
- UWP >=10.0

<a name="dependencies"></a>
## Dependencies
- FubarCoder.RestSharp.Portable.Core >=4.0.7
- FubarCoder.RestSharp.Portable.HttpClient >=4.0.7
- Newtonsoft.Json >=10.0.3

<a name="installation"></a>
## Installation
Generate the DLL using your preferred tool

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using Cloudmersive.APIClient.NETCore.DataIntegration.Api;
using Cloudmersive.APIClient.NETCore.DataIntegration.Client;
using Cloudmersive.APIClient.NETCore.DataIntegration.Model;
```
<a name="getting-started"></a>
## Getting Started

```csharp
using System;
using System.Diagnostics;
using Cloudmersive.APIClient.NETCore.DataIntegration.Api;
using Cloudmersive.APIClient.NETCore.DataIntegration.Client;
using Cloudmersive.APIClient.NETCore.DataIntegration.Model;

namespace Example
{
    public class Example
    {
        public void main()
        {

            // Configure API key authorization: Apikey
            Configuration.Default.ApiKey.Add("Apikey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("Apikey", "Bearer");

            var apiInstance = new BackupConvertApi();
            var inputFile = new System.IO.Stream(); // System.IO.Stream | Input file to perform the operation on (optional) 

            try
            {
                // Lists all tables stored in a SQL Server Backup (.BAK) file
                MssqlBakEnumerateTablesResult result = apiInstance.DataintegrationBackupConvertMssqlBakGetTablesPost(inputFile);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BackupConvertApi.DataintegrationBackupConvertMssqlBakGetTablesPost: " + e.Message );
            }

        }
    }
}
```

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BackupConvertApi* | [**DataintegrationBackupConvertMssqlBakGetTablesPost**](docs/BackupConvertApi.md#dataintegrationbackupconvertmssqlbakgettablespost) | **POST** /dataintegration/backup/convert/mssql/bak/get/tables | Lists all tables stored in a SQL Server Backup (.BAK) file
*BackupConvertApi* | [**DataintegrationBackupConvertMssqlBakToCsvPost**](docs/BackupConvertApi.md#dataintegrationbackupconvertmssqlbaktocsvpost) | **POST** /dataintegration/backup/convert/mssql/bak/to/csv | Converts a SQL Server Backup (.BAK) file into CSV for a specified table


<a name="documentation-for-models"></a>
## Documentation for Models

 - [Model.MssqlBakEnumerateTablesResult](docs/MssqlBakEnumerateTablesResult.md)
 - [Model.MssqlTable](docs/MssqlTable.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="Apikey"></a>
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header

