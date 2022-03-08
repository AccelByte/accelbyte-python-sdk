# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_submit_user_account_deletion():
    from accelbyte_py_sdk.api.gdpr import admin_submit_user_account_deletion_request

    result, error = admin_submit_user_account_deletion_request(
        user_id="<user-id>"
    )
    if error:
        print(error)


def example_get_user_personal_data():
    from accelbyte_py_sdk.api.gdpr import admin_get_user_personal_data_requests

    result, error = admin_get_user_personal_data_requests(
        user_id="<user-id>"
    )
    if error:
        print(error)


def example_create_admin_email_configuration():
    from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

    result, error = save_admin_email_configuration(
        body=[
            "foo"
        ]
    )
    if error:
        print(error)


def example_delete_admin_email_configuration():
    from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration

    result, error = delete_admin_email_configuration(
        emails=[
            "email@email.foo"
        ]
    )
    if error:
        print(error)


def example_get_admin_email_configuration():
    from accelbyte_py_sdk.api.gdpr import get_admin_email_configuration

    result, error = get_admin_email_configuration()
    if error:
        print(error)


def example_update_admin_email_configuration():
    from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration

    result, error = update_admin_email_configuration(
        body=[
            "foo"
        ]
    )
    if error:
        print(error)
