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

Must be set only if the campaign type is SEARCH.

.PARAMETER Type
The type of search campaign represented.
.PARAMETER Description
Describes this search campaign. Intended for storing the query used, and possibly the number of identities selected/available.
.PARAMETER Reviewer
If specified, this identity or governance group will be the reviewer for all certifications in this campaign. The allowed DTO types are IDENTITY and GOVERNANCE_GROUP
.PARAMETER Query
The scope for the campaign. The campaign will cover identities returned by the query and identities that have access items returned by the query. One of `query` or `identityIds` must be set.
.PARAMETER IdentityIds
A direct list of identities to include in this campaign. One of `identityIds` or `query` must be set.
.PARAMETER AccessConstraints
Further reduces the scope of the campaign by excluding identities (from `query` or `identityIds`) that do not have this access.
.OUTPUTS

FullcampaignAllOfSearchCampaignInfo<PSCustomObject>
#>

function Initialize-BetaFullcampaignAllOfSearchCampaignInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY", "ACCESS")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reviewer},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdentityIds},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessConstraints}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaFullcampaignAllOfSearchCampaignInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$IdentityIds -and $IdentityIds.length -gt 1000) {
            throw "invalid value for 'IdentityIds', number of items must be less than or equal to 1000."
        }

        if (!$AccessConstraints -and $AccessConstraints.length -gt 1000) {
            throw "invalid value for 'AccessConstraints', number of items must be less than or equal to 1000."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "description" = ${Description}
            "reviewer" = ${Reviewer}
            "query" = ${Query}
            "identityIds" = ${IdentityIds}
            "accessConstraints" = ${AccessConstraints}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FullcampaignAllOfSearchCampaignInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to FullcampaignAllOfSearchCampaignInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FullcampaignAllOfSearchCampaignInfo<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFullcampaignAllOfSearchCampaignInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaFullcampaignAllOfSearchCampaignInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFullcampaignAllOfSearchCampaignInfo
        $AllProperties = ("type", "description", "reviewer", "query", "identityIds", "accessConstraints")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) { #optional property not found
            $Reviewer = $null
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityIds"))) { #optional property not found
            $IdentityIds = $null
        } else {
            $IdentityIds = $JsonParameters.PSobject.Properties["identityIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessConstraints"))) { #optional property not found
            $AccessConstraints = $null
        } else {
            $AccessConstraints = $JsonParameters.PSobject.Properties["accessConstraints"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "description" = ${Description}
            "reviewer" = ${Reviewer}
            "query" = ${Query}
            "identityIds" = ${IdentityIds}
            "accessConstraints" = ${AccessConstraints}
        }

        return $PSO
    }

}

