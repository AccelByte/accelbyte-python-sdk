# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_bulk_accept_versioned_policy():
    from accelbyte_py_sdk.api.legal import bulk_accept_versioned_policy
    from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest

    result, error = bulk_accept_versioned_policy(
        body=[
            AcceptAgreementRequest.create(
                is_accepted=True,
                localized_policy_version_id="<localized_policy_version_id>",
                policy_id="<policy_id>",
                policy_version_id="<policy_version_id>"
            )
        ]
    )
    if error:
        print(error)


def example_retrieve_agreements():
    from accelbyte_py_sdk.api.legal import retrieve_agreements_public

    result, error = retrieve_agreements_public()
    if error:
        print(error)


def example_change_preference_consent():
    from accelbyte_py_sdk.api.legal import change_preference_consent
    from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest

    result, error = change_preference_consent(
        body=[
            AcceptAgreementRequest.create(
                is_accepted=True,
                localized_policy_version_id="<localized_policy_version_id>",
                policy_id="<policy_id>",
                policy_version_id="<policy_version_id>"
            )
        ]
    )
    if error:
        print(error)
