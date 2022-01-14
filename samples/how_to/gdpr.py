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


def example_get_game_record():
    from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1

    result, error = get_game_record_handler_v1(
        key="<your-key>"
    )
    if error:
        print(error)


def example_update_game_record():
    from accelbyte_py_sdk.api.cloudsave import put_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordRequest

    result, error = put_game_record_handler_v1(
        body=ModelsGameRecordRequest.create(dict_={"foo": "bar"}),
        key="<your-key>"
    )
    if error:
        print(error)
