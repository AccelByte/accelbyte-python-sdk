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

    # Login using client credentials
    token, error = auth_service.login_client()
    if error:
        exit(1)  # Login failed

    # Call an AccelByte Gaming Services API e.g. GetCountryLocationV3
    response, error = iam_service.get_country_location_v3()
    if error:
        exit(1)  # Response error

    print(response.country_name)


if __name__ == "__main__":
    main()
