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

An object referencing a completed SOD violation check

.PARAMETER State
The status of SOD violation check
.PARAMETER Uuid
The id of the Violation check event
.PARAMETER ViolationCheckResult
No description available.
.OUTPUTS

SodViolationContextCheckCompleted<PSCustomObject>
#>

function Initialize-SodViolationContextCheckCompleted {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "ERROR")]
        [String]
        ${State},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ViolationCheckResult}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SodViolationContextCheckCompleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "uuid" = ${Uuid}
            "violationCheckResult" = ${ViolationCheckResult}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SodViolationContextCheckCompleted<PSCustomObject>

.DESCRIPTION

Convert from JSON to SodViolationContextCheckCompleted<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SodViolationContextCheckCompleted<PSCustomObject>
#>
function ConvertFrom-JsonToSodViolationContextCheckCompleted {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SodViolationContextCheckCompleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SodViolationContextCheckCompleted
        $AllProperties = ("state", "uuid", "violationCheckResult")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "violationCheckResult"))) { #optional property not found
            $ViolationCheckResult = $null
        } else {
            $ViolationCheckResult = $JsonParameters.PSobject.Properties["violationCheckResult"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "uuid" = ${Uuid}
            "violationCheckResult" = ${ViolationCheckResult}
        }

        return $PSO
    }

}

