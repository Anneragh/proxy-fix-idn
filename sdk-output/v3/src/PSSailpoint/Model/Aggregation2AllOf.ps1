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

.PARAMETER SubAggregation
No description available.
.OUTPUTS

Aggregation2AllOf<PSCustomObject>
#>

function Initialize-Aggregation2AllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SubAggregation}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Aggregation2AllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "subAggregation" = ${SubAggregation}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Aggregation2AllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to Aggregation2AllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Aggregation2AllOf<PSCustomObject>
#>
function ConvertFrom-JsonToAggregation2AllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Aggregation2AllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Aggregation2AllOf
        $AllProperties = ("subAggregation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subAggregation"))) { #optional property not found
            $SubAggregation = $null
        } else {
            $SubAggregation = $JsonParameters.PSobject.Properties["subAggregation"].value
        }

        $PSO = [PSCustomObject]@{
            "subAggregation" = ${SubAggregation}
        }

        return $PSO
    }

}

