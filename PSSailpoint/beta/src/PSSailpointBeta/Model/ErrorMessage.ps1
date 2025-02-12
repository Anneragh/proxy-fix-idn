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

.PARAMETER Locale
Locale is the current Locale
.PARAMETER LocaleOrigin
LocaleOrigin holds possible values of how the locale was selected
.PARAMETER Text
Text is the actual text of the error message
.OUTPUTS

ErrorMessage<PSCustomObject>
#>

function Initialize-BetaErrorMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocaleOrigin},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaErrorMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "locale" = ${Locale}
            "localeOrigin" = ${LocaleOrigin}
            "text" = ${Text}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ErrorMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to ErrorMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ErrorMessage<PSCustomObject>
#>
function ConvertFrom-BetaJsonToErrorMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaErrorMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaErrorMessage
        $AllProperties = ("locale", "localeOrigin", "text")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localeOrigin"))) { #optional property not found
            $LocaleOrigin = $null
        } else {
            $LocaleOrigin = $JsonParameters.PSobject.Properties["localeOrigin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "locale" = ${Locale}
            "localeOrigin" = ${LocaleOrigin}
            "text" = ${Text}
        }

        return $PSO
    }

}

