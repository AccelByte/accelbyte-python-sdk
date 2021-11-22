# AccelByte Python SDK

## Installation

```sh
pip install requests httpx websockets pyyaml click
```

```sh
pip install git+https://github.com/AccelByte/accelbyte-python-sdk.git@main#egg=accelbyte_py_sdk
```

## Initializing

You'll have to initialize the SDK using the `initialize()` function.

```python
import accelbyte_py_sdk


if __name__ == "__main__":
    accelbyte_py_sdk.initialize()
    # uses EnvironmentConfigRepository by default
    #   which in turn uses '$AB_BASE_URL', '$AB_CLIENT_ID', '$AB_CLIENT_SECRET', '$AB_NAMESPACE'
```

you could also pass in options like so:

```python
import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository


if __name__ == "__main__":
    base_url = environ["MY_BASE_URL"]
    client_id = environ["MY_CLIENT_ID"]
    client_secret = environ["MY_CLIENT_SECRET"]
    namespace = environ["MY_NAMESPACE"]

    my_config_repository = MyConfigRepository(
        base_url=base_url,
        client_id=client_id,
        client_secret=client_secret,
        namespace=namespace,
    )
    options = {
        "config": my_config_repository
    }

    accelbyte_py_sdk.initialize(options)
    # you could still set some of these options after initializing.
    # ex. accelbyte_py_sdk.core.set_config_repository(my_config_repository)

```

## Logging In

```python
from os import environ

import accelbyte_py_sdk
from accelbyte_py_sdk.services.auth import login_user, logout


if __name__ == "__main__":
    accelbyte_py_sdk.initialize()

    username = environ["AB_USERNAME"]
    password = environ["AB_PASSWORD"]

    token, error = login_user(username, password)
    assert error is None

    _, error = logout()
    assert error is None

```

here `login_user(username, password)` and `logout()` are wrapper functions.

```python
import accelbyte_py_sdk
from accelbyte_py_sdk.services.auth import login_client


if __name__ == "__main__":
    accelbyte_py_sdk.initialize()

    client_id = environ["AB_CLIENT_ID"]
    client_secret = environ["AB_CLIENT_SECRET"]

    token, error = login_client(client_id, client_secret)
    # passing '$AB_CLIENT_ID' and '$AB_CLIENT_SECRET' is same as:
    # token, error = login_client()
    assert error is not None

```

## Using the API

### Example A

In this example we will create a new user using the `POST` endpoint `/iam/v3/public/namespaces/{namespace}/users`

```python
import json

import accelbyte_py_sdk

# Import the wrapper 'public_create_user_v3'
# to know which wrapper to use open the docs/<service-name>-index.md and
# use the search function to find the wrapper name
from accelbyte_py_sdk.api.iam import public_create_user_v3

# This POST endpoint also requires a body of 'ModelUserCreateRequestV3'
# so you will need to import that too, import it using this scheme:
#  from accelbyte_py_sdk.api.<service-name>.models import <model-name>
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponseV3


if __name__ == "__main__":
    # 1 Initialize the SDK
    accelbyte_py_sdk.initialize()

    # 2 Login as a client (uses $AB_CLIENT_ID and $AB_CLIENT_SECRET)
    _, error = login_client()

    # 3 Create a user using the POST endpoint: /iam/v3/public/namespaces/{namespace}/users
    #   * this endpoint requires:
    #     - a 'body' (ModelUserCreateRequestV3)
    #     - a 'namespace' (string)
    #       'namespace' here is unique because it can be omitted, omitting it will result in
    #       the SDK to automatically fill it out with the value of '$AB_NAMESPACE'
    #   * more details on this endpoint can be found in:
    #     accelbyte_py_sdk/api/iam/operations/users/public_create_user_v3.py
    result, error = public_create_user_v3(
        body=ModelUserCreateRequestV3.create(
            auth_type="EMAILPASSWD",
            country="US",
            date_of_birth="2001-01-01",
            display_name="************",
            email_address="******@fakemail.com",
            password="******************",
        )
    )

    # 4 Check for errors
    if error:
      exit(1)

    # 5 Do something with the result
    print(json.dumps(result.to_dict(), indent=2))
    # {
    #   "authType": "EMAILPASSWD",
    #   "country": "US",
    #   "dateOfBirth": "2001-01-01T00:00:00Z",
    #   "displayName": "************",
    #   "emailAddress": "******@fakemail.com",
    #   "namespace": "******",
    #   "userId": "********************************"
    # }
```

:bulb: All wrapper functions follow the return value format of `result, error`.

:bulb: You could also write your own wrapper functions by using the models and operations in `accelbyte_py_sdk.api.<service-name>` and `accelbyte_py_sdk.api.<service-name>.models` respectively.

## CLI

You could also interact with the SDK using its command-line interface.

```sh
$ python -m accelbyte_py_sdk --help

Usage: python -m accelbyte_py_sdk [OPTIONS] COMMAND [ARGS]...

Options:
  --help  Show this message and exit.

Commands:
  ...
  iam-auth-code-request-v3
  iam-authorization
  iam-authorize-v3
  iam-ban-user
  iam-create-client
  iam-create-client-by-namespace
  iam-create-role
  iam-disable-user
  iam-disable-user-ban
  iam-enable-user
  iam-enable-user-ban
  iam-forgot-password
  iam-get-bans-type
  iam-get-client
  iam-get-clients
  iam-get-country-location-v3
  iam-get-jwks
  iam-get-jwksv3
  iam-get-list-ban-reason
  iam-get-user-ban-history
  iam-get-user-by-login-id
  iam-get-user-by-platform-user-id
  iam-get-user-by-user-id
  iam-get-user-information
  iam-get-user-platform-accounts
  iam-get-user-verification-code
  iam-get-users-by-login-ids
  ...
```

You can get more information for each command by using this syntax:

```sh
$ python -m accelbyte_py_sdk COMMAND --help
```

```sh
$ python3 -m accelbyte_py_sdk iam-get-bans-type --help

Usage: python -m accelbyte_py_sdk iam-get-bans-type [OPTIONS]

Options:
  --login_as [client|user]
  --help                    Show this message and exit.
```

Most commands will require you to login as either a `client` or as a `user`.
For these commands you'll have to pass either `--login_as client` or `--login_as user`.

But first you will have to set first the following environment variables:

```sh
#Used by all operations
export AB_BASE_URL="https://<environment>.accelbyte.io"

#Used by some operations
export AB_NAMESPACE="namespace"

#Used when logging in as client
export AB_CLIENT_ID="your-client-id"
export AB_CLIENT_SECRET="your-client-secret"

#Used when logging in as user
export AB_USERNAME="your-username"
export AB_PASSWORD="your-password"
```

### Examples

```sh
Usage: python -m accelbyte_py_sdk iam-get-bans-type [OPTIONS]

Options:
  --login_as [client|user]
  --help                    Show this message and exit.

$ python -m accelbyte_py_sdk iam-get-bans-type --login_as user

GetBansType success success
```

```sh
Usage: python -m accelbyte_py_sdk iam-public-create-user-v3 [OPTIONS] DISPLAY_NAME EMAIL_ADDRESS
                                                            DATE_OF_BIRTH COUNTRY PASSWORD

Options:
  --namespace TEXT
  --role_id TEXT
  --login_as [client|user]
  --help            Show this message and exit.

$ python -m accelbyte_py_sdk iam-public-create-user-v3 eagerhamster6800 vi7xUuNc4j@fakemail.com 2000-09-23 US "****" --login_as client

PublicCreateUserV3 success
```

```sh
Usage: python -m accelbyte_py_sdk iam-admin-get-my-user-v3 [OPTIONS]

Options:
  --login_as [client|user]
  --help         Show this message and exit.

$ python -m accelbyte_py_sdk iam-admin-get-my-user-v3 --login_as user

AdminGetMyUserV3 success
```

```sh
Usage: python -m accelbyte_py_sdk iam-admin-update-client-v3 [OPTIONS] CLIENT_ID
                                                             CLIENT_UPDATE_REQUEST

Options:
  --namespace TEXT
  --login_as [client|user]
  --help            Show this message and exit.

$ python -m accelbyte_py_sdk iam-admin-update-client-v3 **** {"clientName": "****"} --login_as user

AdminUpdateClientV3 success
```

```sh
Usage: python -m accelbyte_py_sdk iam-admin-update-user-v3 [OPTIONS] USER_ID

Options:
  --country TEXT
  --date_of_birth TEXT
  --display_name TEXT
  --language_tag TEXT
  --user_name TEXT
  --namespace TEXT
  --login_as [client|user]
  --help                Show this message and exit.

$ python -m accelbyte_py_sdk iam-admin-update-user-v3 **** --date_of_birth 2000-09-23 --login_as user

AdminUpdateUserV3 success
```

## Misc

### Utility Functions

Check if the SDK is initialized.

```python
import accelbyte_py_sdk


is_initialized = accelbyte_py_sdk.is_initialized()

print(is_initialized)
# False
```

Create a Basic Auth from a string tuple.

```python
import accelbyte_py_sdk


basic_auth = accelbyte_py_sdk.core.create_basic_authentication("foo", "bar")

print(basic_auth)
# Basic Zm9vOmJhcg==
```

Gets the stored access token.

```python
import accelbyte_py_sdk


access_token, error = accelbyte_py_sdk.core.get_access_token()

print(access_token)
# ************************************
```

Get `AB_*` environment configuration values.

```python
import accelbyte_py_sdk


base_url, client_id, client_secret, namespace = accelbyte_py_sdk.core.get_env_config()

print(f"{base_url}, {client_id}, {client_secret}, {namespace}")
# <$AB_BASE_URL>, <$AB_CLIENT_ID>, <$AB_CLIENT_SECRET>, <$AB_NAMESPACE>
```

Get `AB_*` environment user credential values.

```python
import accelbyte_py_sdk


username, password = accelbyte_py_sdk.core.get_env_user_credentials()

print(f"{base_url}: {client_id}")
# <$AB_USERNAME>: <$AB_PASSWORD>
```

Set logger level and add logger handlers.

```python
import logging


accelbyte_py_sdk.core.set_logger_level(logging.INFO)
accelbyte_py_sdk.core.set_logger_level(logging.INFO, "http")
accelbyte_py_sdk.core.set_logger_level(logging.INFO, "ws")

accelbyte_py_sdk.core.add_stream_handler_to_logger()
```

---

[//]: # (<< PRINTFC tools/docs/tmp/README-indepthtopics.md)
