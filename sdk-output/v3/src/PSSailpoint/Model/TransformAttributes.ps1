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

Meta-data about the transform. Values in this list are specific to the type of transform to be executed.

.PARAMETER Json

JSON object

.OUTPUTS

TransformAttributes<PSCustomObject>
#>
function ConvertFrom-JsonToTransformAttributes {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AccountAttribute defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToAccountAttribute $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountAttribute"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountAttribute' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Base64Decode defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToBase64Decode $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Base64Decode"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Base64Decode' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Base64Encode defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToBase64Encode $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Base64Encode"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Base64Encode' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Concatenation defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToConcatenation $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Concatenation"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Concatenation' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Conditional defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToConditional $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Conditional"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Conditional' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match DateCompare defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToDateCompare $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateCompare"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateCompare' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match DateFormat defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToDateFormat $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateFormat"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateFormat' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match DateMath defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToDateMath $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateMath"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateMath' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match DecomposeDiacriticalMarks defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToDecomposeDiacriticalMarks $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DecomposeDiacriticalMarks"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DecomposeDiacriticalMarks' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match E164phone defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToE164phone $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "E164phone"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'E164phone' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match FirstValid defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToFirstValid $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "FirstValid"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'FirstValid' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match ISO3166 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToISO3166 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ISO3166"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ISO3166' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match IdentityAttribute defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToIdentityAttribute $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentityAttribute"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentityAttribute' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match IndexOf defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToIndexOf $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IndexOf"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IndexOf' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match LeftPad defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToLeftPad $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "LeftPad"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'LeftPad' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Lookup defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToLookup $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Lookup"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Lookup' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Lower defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToLower $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Lower"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Lower' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match NameNormalizer defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToNameNormalizer $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "NameNormalizer"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'NameNormalizer' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match RandomAlphaNumeric defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToRandomAlphaNumeric $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RandomAlphaNumeric"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RandomAlphaNumeric' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match RandomNumeric defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToRandomNumeric $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RandomNumeric"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RandomNumeric' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Reference defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToReference $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Reference"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Reference' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Replace defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToReplace $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Replace"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Replace' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match ReplaceAll defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToReplaceAll $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ReplaceAll"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ReplaceAll' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match RightPad defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToRightPad $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RightPad"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RightPad' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Rule defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToRule $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Rule"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Rule' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Split defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToSplit $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Split"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Split' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Static defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToStatic $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Static"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Static' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Substring defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToSubstring $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Substring"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Substring' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Trim defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToTrim $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Trim"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Trim' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match UUIDGenerator defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToUUIDGenerator $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "UUIDGenerator"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'UUIDGenerator' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        # try to match Upper defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToUpper $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Upper"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Upper' defined in oneOf (TransformAttributes). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AccountAttribute, Base64Decode, Base64Encode, Concatenation, Conditional, DateCompare, DateFormat, DateMath, DecomposeDiacriticalMarks, E164phone, FirstValid, ISO3166, IdentityAttribute, IndexOf, LeftPad, Lookup, Lower, NameNormalizer, RandomAlphaNumeric, RandomNumeric, Reference, Replace, ReplaceAll, RightPad, Rule, Split, Static, Substring, Trim, UUIDGenerator, Upper]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AccountAttribute", "Base64Decode", "Base64Encode", "Concatenation", "Conditional", "DateCompare", "DateFormat", "DateMath", "DecomposeDiacriticalMarks", "E164phone", "FirstValid", "ISO3166", "IdentityAttribute", "IndexOf", "LeftPad", "Lookup", "Lower", "NameNormalizer", "RandomAlphaNumeric", "RandomNumeric", "Reference", "Replace", "ReplaceAll", "RightPad", "Rule", "Split", "Static", "Substring", "Trim", "UUIDGenerator", "Upper")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AccountAttribute, Base64Decode, Base64Encode, Concatenation, Conditional, DateCompare, DateFormat, DateMath, DecomposeDiacriticalMarks, E164phone, FirstValid, ISO3166, IdentityAttribute, IndexOf, LeftPad, Lookup, Lower, NameNormalizer, RandomAlphaNumeric, RandomNumeric, Reference, Replace, ReplaceAll, RightPad, Rule, Split, Static, Substring, Trim, UUIDGenerator, Upper]). JSON Payload: $($Json)"
        }
    }
}

