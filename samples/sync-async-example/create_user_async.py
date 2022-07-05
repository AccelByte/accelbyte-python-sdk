import asyncio
import random
import string
import time
from typing import Sequence

import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.core import (
    get_env_config,
    get_env_user_credentials,
    set_env_config,
    set_env_user_credentials,
)
from accelbyte_py_sdk.services.auth import login_client, login_user, logout

# Import the wrapper 'public_create_user_v3'
# to know which wrapper to use open the docs/<service-name>-index.md and
# use the search function to find the wrapper name
from accelbyte_py_sdk.api.iam import public_create_user_v3_async

# This POST endpoint also requires a body of 'ModelUserCreateRequestV3'
# so you will need to import that too, import it using this scheme:
#  from accelbyte_py_sdk.api.<service-name>.models import <model-name>
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponseV3


async def main():
    def print_error_and_exit(err):
        print(err)
        exit(1)

    def random_string(length: int, seq: Sequence = None):
        seq = seq or string.ascii_letters
        return "".join([random.choice(seq) for _ in range(length)])

    def random_password():
        # 8 to 32 characters, satisfy at least 3 out of 4 conditions
        # (uppercase, lowercase letters, numbers and special characters)
        # and should not have more than 2 equal characters in a row.
        return "".join(
            [
                random.choice(string.ascii_lowercase)
                + random.choice(string.digits)
                + random.choice(string.ascii_uppercase)
                for _ in range(4)
            ]
        )

    # (1) Initialize the SDK.
    base_url, client_id, client_secret, namespace = get_env_config()
    options = {
        "config": MyConfigRepository(
            base_url=base_url,
            client_id=client_id,
            client_secret=client_secret,
            namespace=namespace,
        ),
        "http": "HttpxHttpClient",
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

    # (4.a) Create a user using the POST endpoint: /iam/v3/public/namespaces/{namespace}/users
    #   * this endpoint requires:
    #     - a 'body' (ModelUserCreateRequestV3)
    #     - a 'namespace' (string)
    #       'namespace' here is unique because it can be omitted, omitting it will result in
    #       the SDK to automatically fill it out with the value of '$AB_NAMESPACE'
    #   * more details on this endpoint can be found in:
    #     accelbyte_py_sdk/api/iam/operations/users/public_create_user_v3.py
    async def create_user():
        country = "US"
        date_of_birth = "2001-01-01"
        display_name = random_string(16)
        email_address = f"{random_string(8)}@gfakemail.com"
        password = random_password()
        print(
            f"creating display name: {display_name}, email address: {email_address} | password: {password}"
        )
        start = time.perf_counter()
        result, err = await public_create_user_v3_async(
            body=ModelUserCreateRequestV3.create(
                auth_type="EMAILPASSWD",
                country=country,
                date_of_birth=date_of_birth,
                display_name=display_name,
                email_address=email_address,
                password=password,
            )
        )
        end = time.perf_counter()
        if err:
            print_error_and_exit(err)
        elapsed = end - start
        print(
            f"[{elapsed:.4f}s] created display name: {display_name}, email address: {email_address} | password: {password}"
        )

    # (4.b) Create users multiple times asynchronously
    number_of_users = 20
    total_start = time.perf_counter()
    wait_for_all = asyncio.gather(*[create_user() for _ in range(number_of_users)])
    await wait_for_all
    total_end = time.perf_counter()
    total_elapsed = total_end - total_start
    print(f"[{total_elapsed:.4f}s] total")

    # (5.a) Logout.
    _, error = logout()
    if error:
        print_error_and_exit(error)

    # (5.b) Verify that we don't have any access tokens stored.
    _, error = get_access_token()
    assert error is not None


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
