# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_user_profile():
    from accelbyte_py_sdk.api.basic import create_my_profile
    from accelbyte_py_sdk.api.basic.models import UserProfilePrivateCreate

    result, error = create_my_profile(
        body=UserProfilePrivateCreate.create(
            first_name="<your-first-name>", last_name="<your-last-name>"
        )
    )
    if error:
        print(error)


def example_delete_user_profile():
    from accelbyte_py_sdk.api.basic import delete_user_profile

    result, error = delete_user_profile(user_id="<your-user-id>")
    if error:
        print(error)


def example_get_user_profile():
    from accelbyte_py_sdk.api.basic import public_get_user_profile_info

    result, error = public_get_user_profile_info(user_id="<your-user-id>")
    if error:
        print(error)


def example_update_user_profile():
    from accelbyte_py_sdk.api.basic import public_update_user_profile
    from accelbyte_py_sdk.api.basic.models import UserProfileUpdate

    result, error = public_update_user_profile(
        user_id="<your-user-id>",
        body=UserProfileUpdate.create(
            first_name="<your-first-name>", last_name="<your-last-name>"
        ),
    )
    if error:
        print(error)
