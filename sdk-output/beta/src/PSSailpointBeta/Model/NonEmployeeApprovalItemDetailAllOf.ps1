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

.PARAMETER NonEmployeeRequest
No description available.
.OUTPUTS

NonEmployeeApprovalItemDetailAllOf<PSCustomObject>
#>

function Initialize-BetaNonEmployeeApprovalItemDetailAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NonEmployeeRequest}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaNonEmployeeApprovalItemDetailAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "nonEmployeeRequest" = ${NonEmployeeRequest}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeApprovalItemDetailAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeApprovalItemDetailAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeApprovalItemDetailAllOf<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNonEmployeeApprovalItemDetailAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaNonEmployeeApprovalItemDetailAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNonEmployeeApprovalItemDetailAllOf
        $AllProperties = ("nonEmployeeRequest")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nonEmployeeRequest"))) { #optional property not found
            $NonEmployeeRequest = $null
        } else {
            $NonEmployeeRequest = $JsonParameters.PSobject.Properties["nonEmployeeRequest"].value
        }

        $PSO = [PSCustomObject]@{
            "nonEmployeeRequest" = ${NonEmployeeRequest}
        }

        return $PSO
    }

}

