#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create Custom Password Instructions

.DESCRIPTION

No description available.

.PARAMETER CustomPasswordInstruction
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

CustomPasswordInstruction
#>
function New-BetaCustomPasswordInstructions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CustomPasswordInstruction},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-BetaCustomPasswordInstructions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/custom-password-instructions'

        if (!$CustomPasswordInstruction) {
            throw "Error! The required parameter `CustomPasswordInstruction` missing when calling createCustomPasswordInstructions."
        }

        $LocalVarBodyParameter = $CustomPasswordInstruction | ConvertTo-Json -Depth 100



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "CustomPasswordInstruction" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete Custom Password Instructions by page ID

.DESCRIPTION

No description available.

.PARAMETER PageId
The page ID of custom password instructions to delete.

.PARAMETER Locale
The locale for the custom instructions, a BCP47 language tag. The default value is \""default\"".

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-BetaDeleteCustomPasswordInstructions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("change-password:enter-password", "change-password:finish", "flow-selection:select", "forget-username:user-email", "mfa:enter-code", "mfa:enter-kba", "mfa:select", "reset-password:enter-password", "reset-password:enter-username", "reset-password:finish", "unlock-account:enter-username", "unlock-account:finish")]
        [String]
        ${PageId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Locale},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-BetaDeleteCustomPasswordInstructions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/custom-password-instructions/{pageId}'
        if (!$PageId) {
            throw "Error! The required parameter `PageId` missing when calling deleteCustomPasswordInstructions."
        }
        $LocalVarUri = $LocalVarUri.replace('{pageId}', [System.Web.HTTPUtility]::UrlEncode($PageId))

        if ($Locale) {
            $LocalVarQueryParameters['locale'] = $Locale
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'DELETE' `
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

<#
.SYNOPSIS

Get Custom Password Instructions by Page ID

.DESCRIPTION

No description available.

.PARAMETER PageId
The page ID of custom password instructions to query.

.PARAMETER Locale
The locale for the custom instructions, a BCP47 language tag. The default value is \""default\"".

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

CustomPasswordInstruction
#>
function Get-BetaCustomPasswordInstructions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("change-password:enter-password", "change-password:finish", "flow-selection:select", "forget-username:user-email", "mfa:enter-code", "mfa:enter-kba", "mfa:select", "reset-password:enter-password", "reset-password:enter-username", "reset-password:finish", "unlock-account:enter-username", "unlock-account:finish")]
        [String]
        ${PageId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Locale},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaCustomPasswordInstructions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/custom-password-instructions/{pageId}'
        if (!$PageId) {
            throw "Error! The required parameter `PageId` missing when calling getCustomPasswordInstructions."
        }
        $LocalVarUri = $LocalVarUri.replace('{pageId}', [System.Web.HTTPUtility]::UrlEncode($PageId))

        if ($Locale) {
            $LocalVarQueryParameters['locale'] = $Locale
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "CustomPasswordInstruction" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

