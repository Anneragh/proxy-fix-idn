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

No description available.

.PARAMETER Id
The entitlement id
.PARAMETER Name
The entitlement name
.PARAMETER Attribute
The entitlement attribute name
.PARAMETER Value
The value of the entitlement
.PARAMETER SourceSchemaObjectType
The object type of the entitlement from the source schema
.PARAMETER Description
The description of the entitlement
.PARAMETER Privileged
True if the entitlement is privileged
.PARAMETER CloudGoverned
True if the entitlement is cloud governed
.PARAMETER Created
Time when the entitlement was created
.PARAMETER Modified
Time when the entitlement was last modified
.PARAMETER Source
No description available.
.PARAMETER Attributes
A map of free-form key-value pairs from the source system
.PARAMETER Segments
List of IDs of segments, if any, to which this Entitlement is assigned.
.PARAMETER DirectPermissions
No description available.
.OUTPUTS

Entitlement<PSCustomObject>
#>

function Initialize-Entitlement {
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
        ${Attribute},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceSchemaObjectType},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CloudGoverned},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Segments},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DirectPermissions}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Entitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "sourceSchemaObjectType" = ${SourceSchemaObjectType}
            "description" = ${Description}
            "privileged" = ${Privileged}
            "cloudGoverned" = ${CloudGoverned}
            "created" = ${Created}
            "modified" = ${Modified}
            "source" = ${Source}
            "attributes" = ${Attributes}
            "segments" = ${Segments}
            "directPermissions" = ${DirectPermissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Entitlement<PSCustomObject>

.DESCRIPTION

Convert from JSON to Entitlement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Entitlement<PSCustomObject>
#>
function ConvertFrom-JsonToEntitlement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Entitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Entitlement
        $AllProperties = ("id", "name", "attribute", "value", "sourceSchemaObjectType", "description", "privileged", "cloudGoverned", "created", "modified", "source", "attributes", "segments", "directPermissions")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceSchemaObjectType"))) { #optional property not found
            $SourceSchemaObjectType = $null
        } else {
            $SourceSchemaObjectType = $JsonParameters.PSobject.Properties["sourceSchemaObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cloudGoverned"))) { #optional property not found
            $CloudGoverned = $null
        } else {
            $CloudGoverned = $JsonParameters.PSobject.Properties["cloudGoverned"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "segments"))) { #optional property not found
            $Segments = $null
        } else {
            $Segments = $JsonParameters.PSobject.Properties["segments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "directPermissions"))) { #optional property not found
            $DirectPermissions = $null
        } else {
            $DirectPermissions = $JsonParameters.PSobject.Properties["directPermissions"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "sourceSchemaObjectType" = ${SourceSchemaObjectType}
            "description" = ${Description}
            "privileged" = ${Privileged}
            "cloudGoverned" = ${CloudGoverned}
            "created" = ${Created}
            "modified" = ${Modified}
            "source" = ${Source}
            "attributes" = ${Attributes}
            "segments" = ${Segments}
            "directPermissions" = ${DirectPermissions}
        }

        return $PSO
    }

}

