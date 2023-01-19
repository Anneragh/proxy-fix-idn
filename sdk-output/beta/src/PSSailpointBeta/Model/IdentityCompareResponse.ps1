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

.PARAMETER AccessItemDiff
Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on completion of the violation check.
.OUTPUTS

IdentityCompareResponse<PSCustomObject>
#>

function Initialize-BetaIdentityCompareResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${AccessItemDiff}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityCompareResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessItemDiff" = ${AccessItemDiff}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityCompareResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityCompareResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityCompareResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityCompareResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityCompareResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityCompareResponse
        $AllProperties = ("accessItemDiff")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessItemDiff"))) { #optional property not found
            $AccessItemDiff = $null
        } else {
            $AccessItemDiff = $JsonParameters.PSobject.Properties["accessItemDiff"].value
        }

        $PSO = [PSCustomObject]@{
            "accessItemDiff" = ${AccessItemDiff}
        }

        return $PSO
    }

}

