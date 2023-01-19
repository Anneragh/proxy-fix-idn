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

.PARAMETER Type
The type can only be IDENTITY. This is read-only
.PARAMETER Id
Identity id.
.PARAMETER Name
Human-readable display name of identity. This is read-only
.PARAMETER Email
Email address of identity. This is read-only
.OUTPUTS

IdentityReferenceWithNameAndEmail<PSCustomObject>
#>

function Initialize-BetaIdentityReferenceWithNameAndEmail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityReferenceWithNameAndEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "email" = ${Email}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityReferenceWithNameAndEmail<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityReferenceWithNameAndEmail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityReferenceWithNameAndEmail<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityReferenceWithNameAndEmail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityReferenceWithNameAndEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityReferenceWithNameAndEmail
        $AllProperties = ("type", "id", "name", "email")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "email" = ${Email}
        }

        return $PSO
    }

}

