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

.PARAMETER Id
the ID of the rule
.PARAMETER Created
an ISO 8601 UTC timestamp when this rule was created
.PARAMETER Modified
an ISO 8601 UTC timestamp when this rule was last modified
.OUTPUTS

ConnectorRuleResponseAllOf<PSCustomObject>
#>

function Initialize-BetaConnectorRuleResponseAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaConnectorRuleResponseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorRuleResponseAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorRuleResponseAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorRuleResponseAllOf<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConnectorRuleResponseAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaConnectorRuleResponseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConnectorRuleResponseAllOf
        $AllProperties = ("id", "created", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

