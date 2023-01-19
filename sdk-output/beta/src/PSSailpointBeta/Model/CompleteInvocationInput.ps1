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

.PARAMETER LocalizedError
No description available.
.PARAMETER Output
Trigger output that completed the invocation. Its schema is defined in the trigger definition.
.OUTPUTS

CompleteInvocationInput<PSCustomObject>
#>

function Initialize-BetaCompleteInvocationInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LocalizedError},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Output}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCompleteInvocationInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "localizedError" = ${LocalizedError}
            "output" = ${Output}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CompleteInvocationInput<PSCustomObject>

.DESCRIPTION

Convert from JSON to CompleteInvocationInput<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CompleteInvocationInput<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCompleteInvocationInput {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCompleteInvocationInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCompleteInvocationInput
        $AllProperties = ("localizedError", "output")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localizedError"))) { #optional property not found
            $LocalizedError = $null
        } else {
            $LocalizedError = $JsonParameters.PSobject.Properties["localizedError"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "output"))) { #optional property not found
            $Output = $null
        } else {
            $Output = $JsonParameters.PSobject.Properties["output"].value
        }

        $PSO = [PSCustomObject]@{
            "localizedError" = ${LocalizedError}
            "output" = ${Output}
        }

        return $PSO
    }

}

