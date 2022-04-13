# AccelByte Python SDK

A software development kit (SDK) for interacting with AccelByte services written in Python.

This SDK was generated from OpenAPI specification documents included in the [spec](spec) directory.

## Setup

This SDK requires Python 3.9 to be installed.

### Install with Pip

```sh
pip install requests httpx websockets pyyaml
```

```sh
pip install git+https://github.com/AccelByte/accelbyte-python-sdk.git@{VERSION}#egg=accelbyte_py_sdk
```

Replace `{VERSION}` with a specific release version tag. When starting a new project, 
using the latest release version is recommended.

**Special note only for Windows environment**

If you encounter error `path too long` when attempting to install the SDK. The steps to solve this are:

1. [Enable long paths in registry.](https://docs.python.org/3/using/windows.html#removing-the-max-path-limitation)

2. Enable long paths in git.

   ```
   git config --global core.longpaths true
   ```

3. Restart the powershell window you used to take effect.

4. Try installing SDK again.

   ```
   pip install git+https://github.com/AccelByte/accelbyte-python-sdk.git@{VERSION}#egg=accelbyte_py_sdk
   ```

### Environment Variables

The following environment variables need to be set when using `EnvironmentConfigRepository` (default).

| Name             | Required                                                                               | Example                          |
|------------------|----------------------------------------------------------------------------------------|----------------------------------|
| AB_BASE_URL      | Yes                                                                                    | https://demo/accelbyte.io        |
| AB_CLIENT_ID     | Yes                                                                                    | abcdef0123456789abcdef0123456789 |
| AB_CLIENT_SECRET | Yes, only if you use a private `AB_CLIENT_ID`                                          | ab#c,d)ef(ab#c,d)ef(ab#c,d)ef(ab |
| AB_NAMESPACE     | Yes, the SDK will automatically fill up the `{namespace}` path parameter (overridable) | accelbyte                        |
| AB_APP_NAME      | No, the SDK will automatically fill up the `User-Agent` header (overridable)           | MyApp                            |
| AB_APP_VERSION   | No, the SDK will automatically fill up the `User-Agent` header (overridable)           | 1.0.0                            |


## Usage

### Initializing

You'll have to initialize the SDK using the `initialize()` function.

```python
import accelbyte_py_sdk


if __name__ == "__main__":
    accelbyte_py_sdk.initialize()
    # uses EnvironmentConfigRepository by default
    #   which in turn uses '$AB_BASE_URL', '$AB_CLIENT_ID', '$AB_CLIENT_SECRET', '$AB_NAMESPACE'
```

You could also pass in options like so:

```python
import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository


if __name__ == "__main__":
    base_url = environ["MY_BASE_URL"]
    client_id = environ["MY_CLIENT_ID"]
    client_secret = environ["MY_CLIENT_SECRET"]
    namespace = environ["MY_NAMESPACE"]
    app_name = environ["MY_APP_NAME"]
    app_version = environ["MY_APP_VERSION"]

    my_config_repository = MyConfigRepository(
        base_url=base_url,
        client_id=client_id,
        client_secret=client_secret,
        namespace=namespace,
        app_name=app_name,
        app_version=app_version
    )
    options = {
        "config": my_config_repository
    }

    accelbyte_py_sdk.initialize(options)
    # you could still set some of these options after initializing.
    # ex. accelbyte_py_sdk.core.set_config_repository(my_config_repository)

```

### Logging In and Logging Out

#### Login using Username and Password

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

Here `login_user(username, password)` and `logout()` are wrapper functions.

#### Login using OAuth Client (Public or Confidential)

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

## Interacting with a Service Endpoint

### Example A

In this example we will create a new user using the `POST` endpoint `/iam/v3/public/namespaces/{namespace}/users`

```python
import json

import accelbyte_py_sdk
from accelbyte_py_sdk.services.auth import login_client

# Import the wrapper 'public_create_user_v3'
# to know which wrapper to use open the docs/<service-name>-index.md and
# use the search function to find the wrapper name
from accelbyte_py_sdk.api.iam import public_create_user_v3

# This POST endpoint also requires a body of 'ModelUserCreateRequestV3'
# so you will need to import that too, import it using this scheme:
#  from accelbyte_py_sdk.api.<service-name>.models import <model-name>
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponseV3


def main():
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


if __name__ == "__main__":
    main()

```

:bulb: All wrapper functions follow the return value format of `result, error`.

:bulb: You could also write your own wrapper functions by using the models and operations in `accelbyte_py_sdk.api.<service-name>` and `accelbyte_py_sdk.api.<service-name>.models` respectively.

:bulb: All wrapper functions have an asynchronous counterpart that ends with `_async`.

### Example A (`async`)

To convert `Example A` asynchronously the following steps are needed.

1. Import the asyncio package.

    ```python
    import asyncio
    ```

2. Convert the main method into `async`.

    ```python
    # def main():
    async def main():
    ```

3. Change how the `main` function is invoked.

    ```python
    if __name__ == "__main__":
        # main()
        loop = asyncio.get_event_loop()
        loop.run_until_complete(main())
    ```

4. Use `HttpxHttpClient`.

    ```python
    # accelbyte_py_sdk.initialize()
    accelbyte_py_sdk.initialize(options={"http": "HttpxHttpClient"})
    ```

5. Use the `async` version of the wrapper by appending `_async`.

    ```python
    # from accelbyte_py_sdk.api.iam import public_create_user_v3
    from accelbyte_py_sdk.api.iam import public_create_user_v3_async
    ```

6. Use the `async` wrapper with the `await` keyword.

    ```python
    # result, error = public_create_user_v3(
    result, error = await public_create_user_v3_async(
    ```

Here is the full code:

```python
import asyncio
import json

import accelbyte_py_sdk
from accelbyte_py_sdk.services.auth import login_client

# Import the wrapper 'public_create_user_v3_async'
# to know which wrapper to use open the docs/<service-name>-index.md and
# use the search function to find the wrapper name
from accelbyte_py_sdk.api.iam import public_create_user_v3_async

# This POST endpoint also requires a body of 'ModelUserCreateRequestV3'
# so you will need to import that too, import it using this scheme:
#  from accelbyte_py_sdk.api.<service-name>.models import <model-name>
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponseV3


async def main():
    # 1 Initialize the SDK
    accelbyte_py_sdk.initialize(options={"http": "HttpxHttpClient"})

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
    result, error = await public_create_user_v3_async(
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


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())

```

---

## Samples

Sample apps are available in the [samples](samples) directory

## Documentation

For documentation about AccelByte services and SDK, see [docs.accelbyte.io](https://docs.accelbyte.io/)

---

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

# 1. The SDK has helper functions for logging.

accelbyte_py_sdk.core.set_logger_level(logging.INFO)          # 'accelbyte_py_sdk'
accelbyte_py_sdk.core.set_logger_level(logging.INFO, "http")  # 'accelbyte_py_sdk.http'
accelbyte_py_sdk.core.set_logger_level(logging.INFO, "ws")    # 'accelbyte_py_sdk.ws'


# 2. You could also use this helper function for debugging.

accelbyte_py_sdk.core.add_stream_handler_to_logger()          # sends content of the 'accelbyte_py_sdk' logger to 'sys.stderr'.


# 3. There is a helper function that helps you get started with log files.

accelbyte_py_sdk.core.add_buffered_file_handler_to_logger(    # flushes content of the 'accelbyte_py_sdk' logger to a file named 'sdk.log' every 10 logs.
    filename="/path/to/sdk.log",
    capacity=10,
    level=logging.INFO
)
accelbyte_py_sdk.core.add_buffered_file_handler_to_logger(    # flushes content of the 'accelbyte_py_sdk.http' logger to a file named 'http.log' every 3 logs.
    filename="/path/to/http.log",
    capacity=3,
    level=logging.INFO,
    additional_scope="http"
)

# 3.a. Or you could the same thing when initializing the SDK.

accelbyte_py_sdk.initialize(
    options={
        "log_files": {
            "": "/path/to/sdk.log",                           # flushes content of the 'accelbyte_py_sdk' logger to a file named 'sdk.log' every 10 logs.
            "http": {                                         # flushes content of the 'accelbyte_py_sdk.http' logger to a file named 'http.log' every 3 logs.
                "filename": "/path/to/http.log",
                "capacity": 3,
                "level": logging.INFO
            }
        }
    }
)

# 4. By default logs from 'accelbyte_py_sdk.http' are stringified dictionaries, you can set your own formatter like so.

def format_request_response_as_yaml(data: dict) -> str:
    return f"---\n{yaml.safe_dump(data, sort_keys=False).rstrip()}\n..."

http_client = accelbyte_py_sdk.core.get_http_client()
http_client.request_log_formatter = format_request_response_as_yaml
http_client.response_log_formatter = format_request_response_as_yaml
```

---

[//]: # (<< PRINTFC tools/docs/tmp/README-indepthtopics.md)
