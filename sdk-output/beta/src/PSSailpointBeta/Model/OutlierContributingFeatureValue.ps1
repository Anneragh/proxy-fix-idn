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

The feature value

.PARAMETER Json

JSON object

.OUTPUTS

OutlierContributingFeatureValue<PSCustomObject>
#>
function ConvertFrom-BetaJsonToOutlierContributingFeatureValue {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match Double defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDouble $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Double"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Double' defined in oneOf (BetaOutlierContributingFeatureValue). Proceeding to the next one if any."
        }

        # try to match Int64 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToInt64 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Int64"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Int64' defined in oneOf (BetaOutlierContributingFeatureValue). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Double, Int64]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Double", "Int64")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Double, Int64]). JSON Payload: $($Json)"
        }
    }
}

