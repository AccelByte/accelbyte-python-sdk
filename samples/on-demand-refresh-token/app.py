import sys
import time

import accelbyte_py_sdk
from accelbyte_py_sdk.core import (
    RequestsHttpClient,
    EnvironmentConfigRepository,
    InMemoryTokenRepository,
)
import accelbyte_py_sdk.services.auth as auth_service
import accelbyte_py_sdk.api.iam as iam_service


def main():
    # Create default HTTP client, token repository, and config repository instances
    http_client = RequestsHttpClient()
    config_repository = EnvironmentConfigRepository()
    token_repository = InMemoryTokenRepository()

    # Initialize the SDK
    accelbyte_py_sdk.initialize(
        options={
            "config": config_repository,
            "token": token_repository,
            "http": http_client,
        }
    )

    username, password = accelbyte_py_sdk.core.get_env_user_credentials()

    loop = 0
    max_loop = 5
    refreshes = 0

    def refresh_login_(*args, **kwargs):
        nonlocal refreshes
        refreshes += 1
        return auth_service.refresh_login(*args, **kwargs)

    # noinspection PyProtectedMember
    # XXX: Modified to add counter for testing purposes.
    auth_service._login.refresh_login = refresh_login_  # monkey-patch

    while loop < max_loop:
        # Login using user credentials
        token, error = auth_service.login_user(
            username, password, refresh_if_possible=True
        )
        if error:
            print("Login failed", file=sys.stderr)
            exit(1)  # Login failed

        # Call an AccelByte Gaming Services API e.g. GetCountryLocationV3
        response, error = iam_service.get_country_location_v3()
        if error:
            exit(2)  # Response error
        print(
            f"iteration no: {loop}, number of refreshes: {refreshes}, country name: {response.country_name}"
        )

        # XXX: Force token expiry for testing purposes.
        token.expires_in = 0  # monkey_patch

        time.sleep(0.2)
        loop += 1

    _, error = auth_service.logout()
    if error:
        print("Logout failed: {}".format(error), file=sys.stderr)
        exit(1)


if __name__ == "__main__":
    main()
