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

.PARAMETER RoleIds
List of IDs of Roles to be deleted.
.OUTPUTS

RoleBulkDeleteRequest<PSCustomObject>
#>

function Initialize-BetaRoleBulkDeleteRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RoleIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleBulkDeleteRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $RoleIds) {
            throw "invalid value for 'RoleIds', 'RoleIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "roleIds" = ${RoleIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleBulkDeleteRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleBulkDeleteRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleBulkDeleteRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleBulkDeleteRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleBulkDeleteRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleBulkDeleteRequest
        $AllProperties = ("roleIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'roleIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'roleIds' missing."
        } else {
            $RoleIds = $JsonParameters.PSobject.Properties["roleIds"].value
        }

        $PSO = [PSCustomObject]@{
            "roleIds" = ${RoleIds}
        }

        return $PSO
    }

}

