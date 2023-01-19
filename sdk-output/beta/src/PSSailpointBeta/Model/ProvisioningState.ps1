#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum ProvisioningState.

.DESCRIPTION

Provisioning state of an account activity item
#>

enum ProvisioningState {
    # enum value: "PENDING"
    PENDING
    # enum value: "FINISHED"
    FINISHED
    # enum value: "UNVERIFIABLE"
    UNVERIFIABLE
    # enum value: "COMMITED"
    COMMITED
    # enum value: "FAILED"
    FAILED
    # enum value: "RETRY"
    RETRY
}

