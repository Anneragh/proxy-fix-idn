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

.PARAMETER Value
No description available.
.OUTPUTS

RecommenderCalculationsIdentityAttributesValue<PSCustomObject>
#>

function Initialize-BetaRecommenderCalculationsIdentityAttributesValue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRecommenderCalculationsIdentityAttributesValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RecommenderCalculationsIdentityAttributesValue<PSCustomObject>

.DESCRIPTION

Convert from JSON to RecommenderCalculationsIdentityAttributesValue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RecommenderCalculationsIdentityAttributesValue<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRecommenderCalculationsIdentityAttributesValue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRecommenderCalculationsIdentityAttributesValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRecommenderCalculationsIdentityAttributesValue
        $AllProperties = ("value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
        }

        return $PSO
    }

}

