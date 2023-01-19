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

.PARAMETER AccessType
the access item type. role in this case
.PARAMETER Id
the access item id
.PARAMETER DisplayName
the role display name
.PARAMETER Description
the description for the role
.PARAMETER SourceName
the associated source name if it exists
.OUTPUTS

AccessItemRoleResponse<PSCustomObject>
#>

function Initialize-BetaAccessItemRoleResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessItemRoleResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessType" = ${AccessType}
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "sourceName" = ${SourceName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessItemRoleResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessItemRoleResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessItemRoleResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessItemRoleResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessItemRoleResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessItemRoleResponse
        $AllProperties = ("accessType", "id", "displayName", "description", "sourceName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) { #optional property not found
            $AccessType = $null
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        $PSO = [PSCustomObject]@{
            "accessType" = ${AccessType}
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "sourceName" = ${SourceName}
        }

        return $PSO
    }

}

