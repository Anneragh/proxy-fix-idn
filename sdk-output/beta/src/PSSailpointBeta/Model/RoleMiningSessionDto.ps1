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

.PARAMETER Scope
No description available.
.PARAMETER PruneThreshold
The prune threshold to be used or null to calculate prescribedPruneThreshold
.PARAMETER PrescribedPruneThreshold
The calculated prescribedPruneThreshold
.PARAMETER MinNumIdentitiesInPotentialRole
Minimum number of identities in a potential role
.PARAMETER PotentialRoleCount
Number of potential roles
.PARAMETER PotentialRolesReadyCount
Number of potential roles ready
.PARAMETER Status
No description available.
.PARAMETER Type
No description available.
.PARAMETER EmailRecipientId
The id of the user who will receive an email about the role mining session
.PARAMETER CreatedBy
No description available.
.PARAMETER IdentityCount
Number of identities in the population which meet the search criteria or identity list provided
.PARAMETER Saved
The session's saved status
.PARAMETER Name
The session's saved name
.OUTPUTS

RoleMiningSessionDto<PSCustomObject>
#>

function Initialize-BetaRoleMiningSessionDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PruneThreshold},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PrescribedPruneThreshold},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinNumIdentitiesInPotentialRole},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PotentialRoleCount},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PotentialRolesReadyCount},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailRecipientId},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedBy},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Saved},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "scope" = ${Scope}
            "pruneThreshold" = ${PruneThreshold}
            "prescribedPruneThreshold" = ${PrescribedPruneThreshold}
            "minNumIdentitiesInPotentialRole" = ${MinNumIdentitiesInPotentialRole}
            "potentialRoleCount" = ${PotentialRoleCount}
            "potentialRolesReadyCount" = ${PotentialRolesReadyCount}
            "status" = ${Status}
            "type" = ${Type}
            "emailRecipientId" = ${EmailRecipientId}
            "createdBy" = ${CreatedBy}
            "identityCount" = ${IdentityCount}
            "saved" = ${Saved}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningSessionDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningSessionDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningSessionDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningSessionDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningSessionDto
        $AllProperties = ("scope", "pruneThreshold", "prescribedPruneThreshold", "minNumIdentitiesInPotentialRole", "potentialRoleCount", "potentialRolesReadyCount", "status", "type", "emailRecipientId", "createdBy", "identityCount", "saved", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pruneThreshold"))) { #optional property not found
            $PruneThreshold = $null
        } else {
            $PruneThreshold = $JsonParameters.PSobject.Properties["pruneThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "prescribedPruneThreshold"))) { #optional property not found
            $PrescribedPruneThreshold = $null
        } else {
            $PrescribedPruneThreshold = $JsonParameters.PSobject.Properties["prescribedPruneThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minNumIdentitiesInPotentialRole"))) { #optional property not found
            $MinNumIdentitiesInPotentialRole = $null
        } else {
            $MinNumIdentitiesInPotentialRole = $JsonParameters.PSobject.Properties["minNumIdentitiesInPotentialRole"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "potentialRoleCount"))) { #optional property not found
            $PotentialRoleCount = $null
        } else {
            $PotentialRoleCount = $JsonParameters.PSobject.Properties["potentialRoleCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "potentialRolesReadyCount"))) { #optional property not found
            $PotentialRolesReadyCount = $null
        } else {
            $PotentialRolesReadyCount = $JsonParameters.PSobject.Properties["potentialRolesReadyCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailRecipientId"))) { #optional property not found
            $EmailRecipientId = $null
        } else {
            $EmailRecipientId = $JsonParameters.PSobject.Properties["emailRecipientId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "saved"))) { #optional property not found
            $Saved = $null
        } else {
            $Saved = $JsonParameters.PSobject.Properties["saved"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "scope" = ${Scope}
            "pruneThreshold" = ${PruneThreshold}
            "prescribedPruneThreshold" = ${PrescribedPruneThreshold}
            "minNumIdentitiesInPotentialRole" = ${MinNumIdentitiesInPotentialRole}
            "potentialRoleCount" = ${PotentialRoleCount}
            "potentialRolesReadyCount" = ${PotentialRolesReadyCount}
            "status" = ${Status}
            "type" = ${Type}
            "emailRecipientId" = ${EmailRecipientId}
            "createdBy" = ${CreatedBy}
            "identityCount" = ${IdentityCount}
            "saved" = ${Saved}
            "name" = ${Name}
        }

        return $PSO
    }

}

