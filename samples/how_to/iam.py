# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_user():
    from accelbyte_py_sdk.api.iam import create_user
    from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequest

    result, error = create_user(
        body=ModelUserCreateRequest.create(
            auth_type="<auth-type>",
            country="<country>",
            display_name="<display-name>",
            login_id="<login-id>",
            password="<password>"
        )
    )
    if error:
        print(error)


def example_delete_user():
    from accelbyte_py_sdk.api.iam import delete_user

    result, error = delete_user(
        user_id="<user-id>"
    )
    if error:
        print(error)


def example_get_user():
    from accelbyte_py_sdk.api.iam import get_user_by_user_id

    result, error = get_user_by_user_id(
        user_id="<user-id>"
    )
    if error:
        print(error)


def example_update_user():
    from accelbyte_py_sdk.api.iam import update_user
    from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequest

    result, error = update_user(
        body=ModelUserUpdateRequest.create(
            country="<country>"
        ),
        user_id="<user-id>"
    )
    if error:
        print(error)


def example_logging_in_as_client():
    from accelbyte_py_sdk.services.auth import login_client

    result, error = login_client(
        client_id="<client-id>",
        client_secret="<client-secret>"
    )
    if error:
        print(error)


def example_logging_in_as_user():
    from accelbyte_py_sdk.services.auth import login_user

    result, error = login_user(
        username="<username>",
        password="<password>"
    )
    if error:
        print(error)


def example_logging_out():
    from accelbyte_py_sdk.services.auth import logout

    _, error = logout()
    if error:
        print(error)
