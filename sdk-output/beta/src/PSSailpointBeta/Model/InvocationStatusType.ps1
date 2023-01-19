#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum InvocationStatusType.

.DESCRIPTION

Defines the Invocation type.  **TEST** The trigger was invocated as a test, either via the test subscription button in the UI or via the start test invocation API.  **REAL_TIME** The trigger subscription is live and was invocated by a real event in IdentityNow.
#>

enum InvocationStatusType {
    # enum value: "TEST"
    TEST
    # enum value: "REAL_TIME"
    REAL_TIME
}

