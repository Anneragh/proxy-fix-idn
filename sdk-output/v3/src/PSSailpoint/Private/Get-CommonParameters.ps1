#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.Synopsis
    Helper function to get common parameters (Verbose, Debug, etc.)
.Example
    Get-CommonParameters
#>
function Get-CommonParameters {
    function tmp {
        [CmdletBinding()]
        Param ()
    }

    (Get-Command -Name tmp -CommandType Function).Parameters.Keys
}
