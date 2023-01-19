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

.PARAMETER Name
Role name
.PARAMETER Id
Role id
.PARAMETER Description
Role description
.PARAMETER OwnerName
Role owner name
.PARAMETER OwnerId
Role owner id
.OUTPUTS

RoleInsightsRole<PSCustomObject>
#>

function Initialize-BetaRoleInsightsRole {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleInsightsRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "description" = ${Description}
            "ownerName" = ${OwnerName}
            "ownerId" = ${OwnerId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleInsightsRole<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleInsightsRole<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleInsightsRole<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleInsightsRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleInsightsRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleInsightsRole
        $AllProperties = ("name", "id", "description", "ownerName", "ownerId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerName"))) { #optional property not found
            $OwnerName = $null
        } else {
            $OwnerName = $JsonParameters.PSobject.Properties["ownerName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["ownerId"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "description" = ${Description}
            "ownerName" = ${OwnerName}
            "ownerId" = ${OwnerId}
        }

        return $PSO
    }

}

