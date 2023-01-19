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

Provides additional details about the pre-approval trigger for this request.

.PARAMETER Comment
Comment left for the pre-approval decision
.PARAMETER Reviewer
The reviewer of the pre-approval decision
.PARAMETER Decision
The decision of the pre-approval trigger
.OUTPUTS

PreApprovalTriggerDetails<PSCustomObject>
#>

function Initialize-PreApprovalTriggerDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reviewer},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED")]
        [String]
        ${Decision}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => PreApprovalTriggerDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "reviewer" = ${Reviewer}
            "decision" = ${Decision}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PreApprovalTriggerDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to PreApprovalTriggerDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PreApprovalTriggerDetails<PSCustomObject>
#>
function ConvertFrom-JsonToPreApprovalTriggerDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => PreApprovalTriggerDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PreApprovalTriggerDetails
        $AllProperties = ("comment", "reviewer", "decision")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) { #optional property not found
            $Reviewer = $null
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decision"))) { #optional property not found
            $Decision = $null
        } else {
            $Decision = $JsonParameters.PSobject.Properties["decision"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "reviewer" = ${Reviewer}
            "decision" = ${Decision}
        }

        return $PSO
    }

}

