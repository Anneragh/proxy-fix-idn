#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

EntitlementReference

.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER DisplayName
No description available.
.PARAMETER Type
No description available.
.PARAMETER Description
No description available.
.PARAMETER Source
No description available.
.PARAMETER Privileged
No description available.
.PARAMETER Attribute
No description available.
.PARAMETER Value
No description available.
.PARAMETER Standalone
No description available.
.OUTPUTS

EntitlementSummary<PSCustomObject>
#>

function Initialize-EntitlementSummary {
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
        ${DisplayName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Standalone}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => EntitlementSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "displayName" = ${DisplayName}
            "type" = ${Type}
            "description" = ${Description}
            "source" = ${Source}
            "privileged" = ${Privileged}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "standalone" = ${Standalone}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementSummary<PSCustomObject>
#>
function ConvertFrom-JsonToEntitlementSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => EntitlementSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EntitlementSummary
        $AllProperties = ("id", "name", "displayName", "type", "description", "source", "privileged", "attribute", "value", "standalone")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "standalone"))) { #optional property not found
            $Standalone = $null
        } else {
            $Standalone = $JsonParameters.PSobject.Properties["standalone"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "displayName" = ${DisplayName}
            "type" = ${Type}
            "description" = ${Description}
            "source" = ${Source}
            "privileged" = ${Privileged}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "standalone" = ${Standalone}
        }

        return $PSO
    }

}

