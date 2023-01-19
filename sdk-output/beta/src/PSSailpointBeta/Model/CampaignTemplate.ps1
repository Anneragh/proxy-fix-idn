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

Campaign Template

.PARAMETER Id
Id of the campaign template
.PARAMETER Name
This template's name. Has no bearing on generated campaigns' names.
.PARAMETER Description
This template's description. Has no bearing on generated campaigns' descriptions.
.PARAMETER Created
Creation date of Campaign Template
.PARAMETER Modified
Modification date of Campaign Template
.PARAMETER Scheduled
Indicates if this campaign template has been scheduled.
.PARAMETER OwnerRef
No description available.
.PARAMETER DeadlineDuration
The time period during which the campaign should be completed, formatted as an ISO-8601 Duration. When this template generates a campaign, the campaign's deadline will be the current date plus this duration. For example, if generation occurred on 2020-01-01 and this field was ""P2W"" (two weeks), the resulting campaign's deadline would be 2020-01-15 (the current date plus 14 days).
.PARAMETER Campaign
No description available.
.OUTPUTS

CampaignTemplate<PSCustomObject>
#>

function Initialize-BetaCampaignTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Scheduled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerRef},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeadlineDuration},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Campaign}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCampaignTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if ($null -eq $Modified) {
            throw "invalid value for 'Modified', 'Modified' cannot be null."
        }

        if ($null -eq $Campaign) {
            throw "invalid value for 'Campaign', 'Campaign' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "scheduled" = ${Scheduled}
            "ownerRef" = ${OwnerRef}
            "deadlineDuration" = ${DeadlineDuration}
            "campaign" = ${Campaign}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignTemplate<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignTemplate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignTemplate<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCampaignTemplate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCampaignTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCampaignTemplate
        $AllProperties = ("id", "name", "description", "created", "modified", "scheduled", "ownerRef", "deadlineDuration", "campaign")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modified' missing."
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaign"))) {
            throw "Error! JSON cannot be serialized due to the required property 'campaign' missing."
        } else {
            $Campaign = $JsonParameters.PSobject.Properties["campaign"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scheduled"))) { #optional property not found
            $Scheduled = $null
        } else {
            $Scheduled = $JsonParameters.PSobject.Properties["scheduled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerRef"))) { #optional property not found
            $OwnerRef = $null
        } else {
            $OwnerRef = $JsonParameters.PSobject.Properties["ownerRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deadlineDuration"))) { #optional property not found
            $DeadlineDuration = $null
        } else {
            $DeadlineDuration = $JsonParameters.PSobject.Properties["deadlineDuration"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "scheduled" = ${Scheduled}
            "ownerRef" = ${OwnerRef}
            "deadlineDuration" = ${DeadlineDuration}
            "campaign" = ${Campaign}
        }

        return $PSO
    }

}

