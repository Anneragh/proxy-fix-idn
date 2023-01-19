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

.PARAMETER Nested
No description available.
.PARAMETER Metric
No description available.
.PARAMETER VarFilter
No description available.
.PARAMETER Bucket
No description available.
.OUTPUTS

Aggregations<PSCustomObject>
#>

function Initialize-Aggregations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Nested},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Metric},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarFilter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Bucket}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Aggregations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "nested" = ${Nested}
            "metric" = ${Metric}
            "filter" = ${VarFilter}
            "bucket" = ${Bucket}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Aggregations<PSCustomObject>

.DESCRIPTION

Convert from JSON to Aggregations<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Aggregations<PSCustomObject>
#>
function ConvertFrom-JsonToAggregations {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Aggregations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Aggregations
        $AllProperties = ("nested", "metric", "filter", "bucket")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nested"))) { #optional property not found
            $Nested = $null
        } else {
            $Nested = $JsonParameters.PSobject.Properties["nested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "metric"))) { #optional property not found
            $Metric = $null
        } else {
            $Metric = $JsonParameters.PSobject.Properties["metric"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bucket"))) { #optional property not found
            $Bucket = $null
        } else {
            $Bucket = $JsonParameters.PSobject.Properties["bucket"].value
        }

        $PSO = [PSCustomObject]@{
            "nested" = ${Nested}
            "metric" = ${Metric}
            "filter" = ${VarFilter}
            "bucket" = ${Bucket}
        }

        return $PSO
    }

}

