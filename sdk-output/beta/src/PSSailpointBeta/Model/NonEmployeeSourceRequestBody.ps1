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

.PARAMETER Name
Name of non-employee source.
.PARAMETER Description
Description of non-employee source.
.PARAMETER Owner
No description available.
.PARAMETER ManagementWorkgroup
The ID for the management workgroup that contains source sub-admins
.PARAMETER Approvers
List of approvers.
.PARAMETER AccountManagers
List of account managers.
.OUTPUTS

NonEmployeeSourceRequestBody<PSCustomObject>
#>

function Initialize-BetaNonEmployeeSourceRequestBody {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ManagementWorkgroup},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Approvers},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountManagers}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaNonEmployeeSourceRequestBody' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if (!$Approvers -and $Approvers.length -gt 3) {
            throw "invalid value for 'Approvers', number of items must be less than or equal to 3."
        }

        if (!$AccountManagers -and $AccountManagers.length -gt 10) {
            throw "invalid value for 'AccountManagers', number of items must be less than or equal to 10."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "managementWorkgroup" = ${ManagementWorkgroup}
            "approvers" = ${Approvers}
            "accountManagers" = ${AccountManagers}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeSourceRequestBody<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSourceRequestBody<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSourceRequestBody<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNonEmployeeSourceRequestBody {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaNonEmployeeSourceRequestBody' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNonEmployeeSourceRequestBody
        $AllProperties = ("name", "description", "owner", "managementWorkgroup", "approvers", "accountManagers")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managementWorkgroup"))) { #optional property not found
            $ManagementWorkgroup = $null
        } else {
            $ManagementWorkgroup = $JsonParameters.PSobject.Properties["managementWorkgroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvers"))) { #optional property not found
            $Approvers = $null
        } else {
            $Approvers = $JsonParameters.PSobject.Properties["approvers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountManagers"))) { #optional property not found
            $AccountManagers = $null
        } else {
            $AccountManagers = $JsonParameters.PSobject.Properties["accountManagers"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "managementWorkgroup" = ${ManagementWorkgroup}
            "approvers" = ${Approvers}
            "accountManagers" = ${AccountManagers}
        }

        return $PSO
    }

}

