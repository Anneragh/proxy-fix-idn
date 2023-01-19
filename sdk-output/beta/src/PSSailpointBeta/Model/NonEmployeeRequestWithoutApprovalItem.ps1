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

.PARAMETER Id
Non-Employee request id.
.PARAMETER Requester
No description available.
.PARAMETER AccountName
Requested identity account name.
.PARAMETER FirstName
Non-Employee's first name.
.PARAMETER LastName
Non-Employee's last name.
.PARAMETER Email
Non-Employee's email.
.PARAMETER Phone
Non-Employee's phone.
.PARAMETER Manager
The account ID of a valid identity to serve as this non-employee's manager.
.PARAMETER NonEmployeeSource
No description available.
.PARAMETER VarData
Attribute blob/bag for a non-employee.
.PARAMETER ApprovalStatus
No description available.
.PARAMETER Comment
comment of requester
.PARAMETER CompletionDate
When the request was completely approved.
.PARAMETER StartDate
Non-Employee employment start date.
.PARAMETER EndDate
Non-Employee employment end date.
.PARAMETER Modified
When the request was last modified.
.PARAMETER Created
When the request was created.
.OUTPUTS

NonEmployeeRequestWithoutApprovalItem<PSCustomObject>
#>

function Initialize-BetaNonEmployeeRequestWithoutApprovalItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Manager},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NonEmployeeSource},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarData},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApprovalStatus},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CompletionDate},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaNonEmployeeRequestWithoutApprovalItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requester" = ${Requester}
            "accountName" = ${AccountName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "phone" = ${Phone}
            "manager" = ${Manager}
            "nonEmployeeSource" = ${NonEmployeeSource}
            "data" = ${VarData}
            "approvalStatus" = ${ApprovalStatus}
            "comment" = ${Comment}
            "completionDate" = ${CompletionDate}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
            "modified" = ${Modified}
            "created" = ${Created}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeRequestWithoutApprovalItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeRequestWithoutApprovalItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeRequestWithoutApprovalItem<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNonEmployeeRequestWithoutApprovalItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaNonEmployeeRequestWithoutApprovalItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNonEmployeeRequestWithoutApprovalItem
        $AllProperties = ("id", "requester", "accountName", "firstName", "lastName", "email", "phone", "manager", "nonEmployeeSource", "data", "approvalStatus", "comment", "completionDate", "startDate", "endDate", "modified", "created")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requester"))) { #optional property not found
            $Requester = $null
        } else {
            $Requester = $JsonParameters.PSobject.Properties["requester"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountName"))) { #optional property not found
            $AccountName = $null
        } else {
            $AccountName = $JsonParameters.PSobject.Properties["accountName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manager"))) { #optional property not found
            $Manager = $null
        } else {
            $Manager = $JsonParameters.PSobject.Properties["manager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nonEmployeeSource"))) { #optional property not found
            $NonEmployeeSource = $null
        } else {
            $NonEmployeeSource = $JsonParameters.PSobject.Properties["nonEmployeeSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalStatus"))) { #optional property not found
            $ApprovalStatus = $null
        } else {
            $ApprovalStatus = $JsonParameters.PSobject.Properties["approvalStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completionDate"))) { #optional property not found
            $CompletionDate = $null
        } else {
            $CompletionDate = $JsonParameters.PSobject.Properties["completionDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startDate"))) { #optional property not found
            $StartDate = $null
        } else {
            $StartDate = $JsonParameters.PSobject.Properties["startDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDate"))) { #optional property not found
            $EndDate = $null
        } else {
            $EndDate = $JsonParameters.PSobject.Properties["endDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requester" = ${Requester}
            "accountName" = ${AccountName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "phone" = ${Phone}
            "manager" = ${Manager}
            "nonEmployeeSource" = ${NonEmployeeSource}
            "data" = ${VarData}
            "approvalStatus" = ${ApprovalStatus}
            "comment" = ${Comment}
            "completionDate" = ${CompletionDate}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
            "modified" = ${Modified}
            "created" = ${Created}
        }

        return $PSO
    }

}

