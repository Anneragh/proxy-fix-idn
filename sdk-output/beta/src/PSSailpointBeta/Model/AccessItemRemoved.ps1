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

.PARAMETER AccessItem
No description available.
.PARAMETER IdentityId
the identity id
.PARAMETER EventType
the event type
.PARAMETER Dt
the date of event
.PARAMETER GovernanceEvent
No description available.
.OUTPUTS

AccessItemRemoved<PSCustomObject>
#>

function Initialize-BetaAccessItemRemoved {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessItem},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EventType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Dt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${GovernanceEvent}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessItemRemoved' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessItem" = ${AccessItem}
            "identityId" = ${IdentityId}
            "eventType" = ${EventType}
            "dt" = ${Dt}
            "governanceEvent" = ${GovernanceEvent}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessItemRemoved<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessItemRemoved<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessItemRemoved<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessItemRemoved {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessItemRemoved' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessItemRemoved
        $AllProperties = ("accessItem", "identityId", "eventType", "dt", "governanceEvent")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessItem"))) { #optional property not found
            $AccessItem = $null
        } else {
            $AccessItem = $JsonParameters.PSobject.Properties["accessItem"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventType"))) { #optional property not found
            $EventType = $null
        } else {
            $EventType = $JsonParameters.PSobject.Properties["eventType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dt"))) { #optional property not found
            $Dt = $null
        } else {
            $Dt = $JsonParameters.PSobject.Properties["dt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "governanceEvent"))) { #optional property not found
            $GovernanceEvent = $null
        } else {
            $GovernanceEvent = $JsonParameters.PSobject.Properties["governanceEvent"].value
        }

        $PSO = [PSCustomObject]@{
            "accessItem" = ${AccessItem}
            "identityId" = ${IdentityId}
            "eventType" = ${EventType}
            "dt" = ${Dt}
            "governanceEvent" = ${GovernanceEvent}
        }

        return $PSO
    }

}

