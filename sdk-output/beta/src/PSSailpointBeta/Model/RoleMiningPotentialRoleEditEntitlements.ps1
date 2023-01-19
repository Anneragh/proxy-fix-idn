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

.PARAMETER Ids
The list of entitlement ids to be edited
.PARAMETER Exclude
If true, add ids to be exclusion list. If false, remove ids from the exclusion list.
.OUTPUTS

RoleMiningPotentialRoleEditEntitlements<PSCustomObject>
#>

function Initialize-BetaRoleMiningPotentialRoleEditEntitlements {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Ids},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Exclude}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleEditEntitlements' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
            "exclude" = ${Exclude}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRoleEditEntitlements<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRoleEditEntitlements<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRoleEditEntitlements<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningPotentialRoleEditEntitlements {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleEditEntitlements' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningPotentialRoleEditEntitlements
        $AllProperties = ("ids", "exclude")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ids"))) { #optional property not found
            $Ids = $null
        } else {
            $Ids = $JsonParameters.PSobject.Properties["ids"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exclude"))) { #optional property not found
            $Exclude = $null
        } else {
            $Exclude = $JsonParameters.PSobject.Properties["exclude"].value
        }

        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
            "exclude" = ${Exclude}
        }

        return $PSO
    }

}

