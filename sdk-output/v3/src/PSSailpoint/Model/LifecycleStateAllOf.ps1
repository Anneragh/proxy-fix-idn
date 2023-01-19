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

.PARAMETER Enabled
Whether the lifecycle state is enabled or disabled.
.PARAMETER TechnicalName
The technical name for lifecycle state. This is for internal use.
.PARAMETER Description
Lifecycle state description.
.PARAMETER IdentityCount
Number of identities that have the lifecycle state.
.PARAMETER EmailNotificationOption
No description available.
.PARAMETER AccountActions
No description available.
.PARAMETER AccessProfileIds
List of unique access-profile IDs that are associated with the lifecycle state.
.OUTPUTS

LifecycleStateAllOf<PSCustomObject>
#>

function Initialize-LifecycleStateAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TechnicalName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EmailNotificationOption},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountActions},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AccessProfileIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => LifecycleStateAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $TechnicalName) {
            throw "invalid value for 'TechnicalName', 'TechnicalName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "technicalName" = ${TechnicalName}
            "description" = ${Description}
            "identityCount" = ${IdentityCount}
            "emailNotificationOption" = ${EmailNotificationOption}
            "accountActions" = ${AccountActions}
            "accessProfileIds" = ${AccessProfileIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LifecycleStateAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to LifecycleStateAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LifecycleStateAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToLifecycleStateAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => LifecycleStateAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LifecycleStateAllOf
        $AllProperties = ("enabled", "technicalName", "description", "identityCount", "emailNotificationOption", "accountActions", "accessProfileIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'technicalName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "technicalName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'technicalName' missing."
        } else {
            $TechnicalName = $JsonParameters.PSobject.Properties["technicalName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailNotificationOption"))) { #optional property not found
            $EmailNotificationOption = $null
        } else {
            $EmailNotificationOption = $JsonParameters.PSobject.Properties["emailNotificationOption"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountActions"))) { #optional property not found
            $AccountActions = $null
        } else {
            $AccountActions = $JsonParameters.PSobject.Properties["accountActions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfileIds"))) { #optional property not found
            $AccessProfileIds = $null
        } else {
            $AccessProfileIds = $JsonParameters.PSobject.Properties["accessProfileIds"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "technicalName" = ${TechnicalName}
            "description" = ${Description}
            "identityCount" = ${IdentityCount}
            "emailNotificationOption" = ${EmailNotificationOption}
            "accountActions" = ${AccountActions}
            "accessProfileIds" = ${AccessProfileIds}
        }

        return $PSO
    }

}

