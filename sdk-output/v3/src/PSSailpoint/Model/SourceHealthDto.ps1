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

Dto for source health data

.PARAMETER Id
the id of the Source
.PARAMETER Type
Specifies the type of system being managed e.g. Active Directory, Workday, etc..
.PARAMETER Name
the name of the source
.PARAMETER Org
source's org
.PARAMETER IsAuthoritative
Is the source authoritative
.PARAMETER IsCluster
Is the source in a cluster
.PARAMETER Hostname
source's hostname
.PARAMETER Pod
source's pod
.PARAMETER IqServiceVersion
The version of the iqService
.PARAMETER Status
connection test result
.OUTPUTS

SourceHealthDto<PSCustomObject>
#>

function Initialize-SourceHealthDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Org},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAuthoritative},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsCluster},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pod},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IqServiceVersion},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SOURCE_STATE_ERROR_CLUSTER", "SOURCE_STATE_ERROR_SOURCE", "SOURCE_STATE_ERROR_VA", "SOURCE_STATE_FAILURE_CLUSTER", "SOURCE_STATE_FAILURE_SOURCE", "SOURCE_STATE_HEALTHY", "SOURCE_STATE_UNCHECKED_CLUSTER", "SOURCE_STATE_UNCHECKED_CLUSTER_NO_SOURCES", "SOURCE_STATE_UNCHECKED_SOURCE", "SOURCE_STATE_UNCHECKED_SOURCE_NO_ACCOUNTS")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SourceHealthDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "name" = ${Name}
            "org" = ${Org}
            "isAuthoritative" = ${IsAuthoritative}
            "isCluster" = ${IsCluster}
            "hostname" = ${Hostname}
            "pod" = ${Pod}
            "iqServiceVersion" = ${IqServiceVersion}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceHealthDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceHealthDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceHealthDto<PSCustomObject>
#>
function ConvertFrom-JsonToSourceHealthDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SourceHealthDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SourceHealthDto
        $AllProperties = ("id", "type", "name", "org", "isAuthoritative", "isCluster", "hostname", "pod", "iqServiceVersion", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "org"))) { #optional property not found
            $Org = $null
        } else {
            $Org = $JsonParameters.PSobject.Properties["org"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isAuthoritative"))) { #optional property not found
            $IsAuthoritative = $null
        } else {
            $IsAuthoritative = $JsonParameters.PSobject.Properties["isAuthoritative"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isCluster"))) { #optional property not found
            $IsCluster = $null
        } else {
            $IsCluster = $JsonParameters.PSobject.Properties["isCluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hostname"))) { #optional property not found
            $Hostname = $null
        } else {
            $Hostname = $JsonParameters.PSobject.Properties["hostname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pod"))) { #optional property not found
            $Pod = $null
        } else {
            $Pod = $JsonParameters.PSobject.Properties["pod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iqServiceVersion"))) { #optional property not found
            $IqServiceVersion = $null
        } else {
            $IqServiceVersion = $JsonParameters.PSobject.Properties["iqServiceVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "name" = ${Name}
            "org" = ${Org}
            "isAuthoritative" = ${IsAuthoritative}
            "isCluster" = ${IsCluster}
            "hostname" = ${Hostname}
            "pod" = ${Pod}
            "iqServiceVersion" = ${IqServiceVersion}
            "status" = ${Status}
        }

        return $PSO
    }

}

