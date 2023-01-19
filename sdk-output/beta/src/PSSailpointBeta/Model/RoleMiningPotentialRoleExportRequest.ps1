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

.PARAMETER MinEntitlementPopularity
The minimum popularity among identities in the role which an entitlement must have to be included in the report
.PARAMETER IncludeCommonAccess
If false, do not include entitlements that are highly popular among the entire orginization
.OUTPUTS

RoleMiningPotentialRoleExportRequest<PSCustomObject>
#>

function Initialize-BetaRoleMiningPotentialRoleExportRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinEntitlementPopularity},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludeCommonAccess}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleExportRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "minEntitlementPopularity" = ${MinEntitlementPopularity}
            "includeCommonAccess" = ${IncludeCommonAccess}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRoleExportRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRoleExportRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRoleExportRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningPotentialRoleExportRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleExportRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningPotentialRoleExportRequest
        $AllProperties = ("minEntitlementPopularity", "includeCommonAccess")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minEntitlementPopularity"))) { #optional property not found
            $MinEntitlementPopularity = $null
        } else {
            $MinEntitlementPopularity = $JsonParameters.PSobject.Properties["minEntitlementPopularity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeCommonAccess"))) { #optional property not found
            $IncludeCommonAccess = $null
        } else {
            $IncludeCommonAccess = $JsonParameters.PSobject.Properties["includeCommonAccess"].value
        }

        $PSO = [PSCustomObject]@{
            "minEntitlementPopularity" = ${MinEntitlementPopularity}
            "includeCommonAccess" = ${IncludeCommonAccess}
        }

        return $PSO
    }

}

