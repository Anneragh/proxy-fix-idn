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

The contextual information of the violated criteria

.PARAMETER Policy
No description available.
.PARAMETER ConflictingAccessCriteria
No description available.
.OUTPUTS

SodViolationContext1<PSCustomObject>
#>

function Initialize-BetaSodViolationContext1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Policy},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConflictingAccessCriteria}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSodViolationContext1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "policy" = ${Policy}
            "conflictingAccessCriteria" = ${ConflictingAccessCriteria}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SodViolationContext1<PSCustomObject>

.DESCRIPTION

Convert from JSON to SodViolationContext1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SodViolationContext1<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSodViolationContext1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSodViolationContext1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSodViolationContext1
        $AllProperties = ("policy", "conflictingAccessCriteria")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "policy"))) { #optional property not found
            $Policy = $null
        } else {
            $Policy = $JsonParameters.PSobject.Properties["policy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conflictingAccessCriteria"))) { #optional property not found
            $ConflictingAccessCriteria = $null
        } else {
            $ConflictingAccessCriteria = $JsonParameters.PSobject.Properties["conflictingAccessCriteria"].value
        }

        $PSO = [PSCustomObject]@{
            "policy" = ${Policy}
            "conflictingAccessCriteria" = ${ConflictingAccessCriteria}
        }

        return $PSO
    }

}

