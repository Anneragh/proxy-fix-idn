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

.PARAMETER Name
Name of the FormItem
.PARAMETER Label
Label of the section
.PARAMETER FormItems
List of FormItems. FormItems can be SectionDetails and/or FieldDetails
.OUTPUTS

SectionDetails<PSCustomObject>
#>

function Initialize-SectionDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormItems}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SectionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "label" = ${Label}
            "formItems" = ${FormItems}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SectionDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to SectionDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SectionDetails<PSCustomObject>
#>
function ConvertFrom-JsonToSectionDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SectionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SectionDetails
        $AllProperties = ("name", "label", "formItems")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formItems"))) { #optional property not found
            $FormItems = $null
        } else {
            $FormItems = $JsonParameters.PSobject.Properties["formItems"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "label" = ${Label}
            "formItems" = ${FormItems}
        }

        return $PSO
    }

}

