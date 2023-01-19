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

.PARAMETER ScheduleId
The ID of the scheduled search that triggered the saved search execution. 
.PARAMETER Owner
No description available.
.PARAMETER Recipients
The email recipients of the scheduled search being tested. 
.OUTPUTS

SearchArguments<PSCustomObject>
#>

function Initialize-SearchArguments {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScheduleId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Recipients}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SearchArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "scheduleId" = ${ScheduleId}
            "owner" = ${Owner}
            "recipients" = ${Recipients}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchArguments<PSCustomObject>
#>
function ConvertFrom-JsonToSearchArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SearchArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SearchArguments
        $AllProperties = ("scheduleId", "owner", "recipients")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scheduleId"))) { #optional property not found
            $ScheduleId = $null
        } else {
            $ScheduleId = $JsonParameters.PSobject.Properties["scheduleId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) { #optional property not found
            $Recipients = $null
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        $PSO = [PSCustomObject]@{
            "scheduleId" = ${ScheduleId}
            "owner" = ${Owner}
            "recipients" = ${Recipients}
        }

        return $PSO
    }

}

