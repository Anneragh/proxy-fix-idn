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

Specification of a Service Desk integration

.PARAMETER Description
Description of the Service Desk integration
.PARAMETER Type
Service Desk integration types  - ServiceNowSDIM - ServiceNow 
.PARAMETER OwnerRef
No description available.
.PARAMETER ClusterRef
No description available.
.PARAMETER Cluster
ID of the cluster for the Service Desk integration (replaced by clusterRef, retained for backward compatibility)
.PARAMETER ManagedSources
Source IDs for the Service Desk integration (replaced by provisioningConfig.managedSResourceRefs, but retained here for backward compatibility)
.PARAMETER ProvisioningConfig
No description available.
.PARAMETER Attributes
Attributes of the Service Desk integration.  Validation constraints enforced by the implementation.
.PARAMETER BeforeProvisioningRule
No description available.
.OUTPUTS

ServiceDeskIntegrationDtoAllOf<PSCustomObject>
#>

function Initialize-ServiceDeskIntegrationDtoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type} = "ServiceNowSDIM",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerRef},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ClusterRef},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cluster},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ManagedSources},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProvisioningConfig},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BeforeProvisioningRule}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ServiceDeskIntegrationDtoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "type" = ${Type}
            "ownerRef" = ${OwnerRef}
            "clusterRef" = ${ClusterRef}
            "cluster" = ${Cluster}
            "managedSources" = ${ManagedSources}
            "provisioningConfig" = ${ProvisioningConfig}
            "attributes" = ${Attributes}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServiceDeskIntegrationDtoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServiceDeskIntegrationDtoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServiceDeskIntegrationDtoAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToServiceDeskIntegrationDtoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ServiceDeskIntegrationDtoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ServiceDeskIntegrationDtoAllOf
        $AllProperties = ("description", "type", "ownerRef", "clusterRef", "cluster", "managedSources", "provisioningConfig", "attributes", "beforeProvisioningRule")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'description' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerRef"))) { #optional property not found
            $OwnerRef = $null
        } else {
            $OwnerRef = $JsonParameters.PSobject.Properties["ownerRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clusterRef"))) { #optional property not found
            $ClusterRef = $null
        } else {
            $ClusterRef = $JsonParameters.PSobject.Properties["clusterRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["cluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managedSources"))) { #optional property not found
            $ManagedSources = $null
        } else {
            $ManagedSources = $JsonParameters.PSobject.Properties["managedSources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningConfig"))) { #optional property not found
            $ProvisioningConfig = $null
        } else {
            $ProvisioningConfig = $JsonParameters.PSobject.Properties["provisioningConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beforeProvisioningRule"))) { #optional property not found
            $BeforeProvisioningRule = $null
        } else {
            $BeforeProvisioningRule = $JsonParameters.PSobject.Properties["beforeProvisioningRule"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "type" = ${Type}
            "ownerRef" = ${OwnerRef}
            "clusterRef" = ${ClusterRef}
            "cluster" = ${Cluster}
            "managedSources" = ${ManagedSources}
            "provisioningConfig" = ${ProvisioningConfig}
            "attributes" = ${Attributes}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
        }

        return $PSO
    }

}

