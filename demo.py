import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.core import get_env_config, get_env_user_credentials, set_env_config, set_env_user_credentials
from accelbyte_py_sdk.services.auth import login_client, login_user, logout


if __name__ == "__main__":
    def print_error_and_exit(err):
        print(err)
        exit(1)

    # (1) Initialize the SDK.
    base_url, client_id, client_secret, namespace = get_env_config()
    options = {
        "config": MyConfigRepository(
            base_url=base_url,
            client_id=client_id,
            client_secret=client_secret,
            namespace=namespace
        )
    }
    accelbyte_py_sdk.initialize(options=options)
    # # :bulb: is actually the same as:
    # accelbyte_py_sdk.initialize()

    # (2) Verify that we don't have any access tokens stored.
    _, error = get_access_token()
    assert error is not None

    # (3.a1) Login using client credentials.
    _, error = login_client(client_id, client_secret)
    # # :bulb: is actually the same as:
    # _, error = login_client()

    # # (3.a2) or Login using user credentials.
    # username, password = get_env_user_credentials()
    # _, error = login_user(username, password)

    # (3.b) Verify that we have successfully logged in.
    if error:
        print_error_and_exit(error)

    # (4) Get and print the stored access token.
    print(get_access_token())

    # (5.a) Logout.
    _, error = logout()
    if error:
        print_error_and_exit(error)

    # (5.b) Verify that we don't have any access tokens stored.
    _, error = get_access_token()
    assert error is not None
