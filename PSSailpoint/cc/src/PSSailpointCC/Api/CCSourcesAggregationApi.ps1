#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Account Aggregation (File)

.DESCRIPTION

Aggregates a delimited file for the given source.  This only works for file-based sources.

.PARAMETER Id
No description available.

.PARAMETER ContentType
No description available.

.PARAMETER DisableOptimization
No description available.

.PARAMETER File
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-CCLoadAccounts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ContentType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${DisableOptimization},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.IO.FileInfo]
        ${File},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-CCLoadAccounts' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('multipart/form-data')

        $LocalVarUri = '/cc/api/source/loadAccounts/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling loadAccounts."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if ($ContentType) {
            $LocalVarHeaderParameters['Content-Type'] = $ContentType
        }

        if ($DisableOptimization) {
            $LocalVarFormParameters['disableOptimization'] = $DisableOptimization
        }

        if ($File) {
            $LocalVarFormParameters['file'] = $File
        }



        $LocalVarResult = Invoke-CCApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

