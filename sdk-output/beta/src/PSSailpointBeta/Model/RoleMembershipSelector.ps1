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

When present, specifies that the Role is to be granted to Identities which either satisfy specific criteria or which are members of a given list of Identities.

.PARAMETER Type
No description available.
.PARAMETER Criteria
No description available.
.PARAMETER Identities
Defines role membership as being exclusive to the specified Identities, when type is IDENTITY_LIST.
.OUTPUTS

RoleMembershipSelector<PSCustomObject>
#>

function Initialize-BetaRoleMembershipSelector {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Criteria},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Identities}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMembershipSelector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "criteria" = ${Criteria}
            "identities" = ${Identities}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMembershipSelector<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMembershipSelector<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMembershipSelector<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMembershipSelector {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMembershipSelector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMembershipSelector
        $AllProperties = ("type", "criteria", "identities")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criteria"))) { #optional property not found
            $Criteria = $null
        } else {
            $Criteria = $JsonParameters.PSobject.Properties["criteria"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identities"))) { #optional property not found
            $Identities = $null
        } else {
            $Identities = $JsonParameters.PSobject.Properties["identities"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "criteria" = ${Criteria}
            "identities" = ${Identities}
        }

        return $PSO
    }

}

