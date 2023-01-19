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

.PARAMETER Reassign
No description available.
.PARAMETER ReassignTo
The ID of the identity to which the certification is reassigned
.PARAMETER Reason
The reason comment for why the reassign was made
.OUTPUTS

AccessReviewReassignment<PSCustomObject>
#>

function Initialize-AccessReviewReassignment {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Reassign},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReassignTo},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AccessReviewReassignment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Reassign) {
            throw "invalid value for 'Reassign', 'Reassign' cannot be null."
        }

        if ($null -eq $ReassignTo) {
            throw "invalid value for 'ReassignTo', 'ReassignTo' cannot be null."
        }

        if ($null -eq $Reason) {
            throw "invalid value for 'Reason', 'Reason' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "reassign" = ${Reassign}
            "reassignTo" = ${ReassignTo}
            "reason" = ${Reason}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessReviewReassignment<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessReviewReassignment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessReviewReassignment<PSCustomObject>
#>
function ConvertFrom-JsonToAccessReviewReassignment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AccessReviewReassignment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccessReviewReassignment
        $AllProperties = ("reassign", "reassignTo", "reason")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'reassign' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassign"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reassign' missing."
        } else {
            $Reassign = $JsonParameters.PSobject.Properties["reassign"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignTo"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reassignTo' missing."
        } else {
            $ReassignTo = $JsonParameters.PSobject.Properties["reassignTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reason"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reason' missing."
        } else {
            $Reason = $JsonParameters.PSobject.Properties["reason"].value
        }

        $PSO = [PSCustomObject]@{
            "reassign" = ${Reassign}
            "reassignTo" = ${ReassignTo}
            "reason" = ${Reason}
        }

        return $PSO
    }

}

