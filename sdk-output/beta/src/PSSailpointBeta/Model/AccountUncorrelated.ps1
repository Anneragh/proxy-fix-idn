#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Identity
No description available.
.PARAMETER Source
No description available.
.PARAMETER Account
No description available.
.PARAMETER EntitlementCount
The number of entitlements associated with this account.
.OUTPUTS

AccountUncorrelated<PSCustomObject>
#>

function Initialize-BetaAccountUncorrelated {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountUncorrelated' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Identity) {
            throw "invalid value for 'Identity', 'Identity' cannot be null."
        }

        if ($null -eq $Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }

        if ($null -eq $Account) {
            throw "invalid value for 'Account', 'Account' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "source" = ${Source}
            "account" = ${Account}
            "entitlementCount" = ${EntitlementCount}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountUncorrelated<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountUncorrelated<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountUncorrelated<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountUncorrelated {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountUncorrelated' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountUncorrelated
        $AllProperties = ("identity", "source", "account", "entitlementCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'identity' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identity' missing."
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) {
            throw "Error! JSON cannot be serialized due to the required property 'account' missing."
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "source" = ${Source}
            "account" = ${Account}
            "entitlementCount" = ${EntitlementCount}
        }

        return $PSO
    }

}

