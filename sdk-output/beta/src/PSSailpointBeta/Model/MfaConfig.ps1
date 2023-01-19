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

.PARAMETER Enabled
If MFA method is enabled.
.PARAMETER VarHost
The server host name or IP address of the MFA provider.
.PARAMETER AccessKey
The secret key for authenticating requests to the MFA provider.
.PARAMETER IdentityAttribute
Optional. The name of the attribute for mapping IdentityNow identity to the MFA provider.
.OUTPUTS

MfaConfig<PSCustomObject>
#>

function Initialize-BetaMfaConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarHost},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessKey},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityAttribute}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaMfaConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "host" = ${VarHost}
            "accessKey" = ${AccessKey}
            "identityAttribute" = ${IdentityAttribute}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MfaConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to MfaConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MfaConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMfaConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaMfaConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMfaConfig
        $AllProperties = ("enabled", "host", "accessKey", "identityAttribute")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "host"))) { #optional property not found
            $VarHost = $null
        } else {
            $VarHost = $JsonParameters.PSobject.Properties["host"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessKey"))) { #optional property not found
            $AccessKey = $null
        } else {
            $AccessKey = $JsonParameters.PSobject.Properties["accessKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttribute"))) { #optional property not found
            $IdentityAttribute = $null
        } else {
            $IdentityAttribute = $JsonParameters.PSobject.Properties["identityAttribute"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "host" = ${VarHost}
            "accessKey" = ${AccessKey}
            "identityAttribute" = ${IdentityAttribute}
        }

        return $PSO
    }

}

