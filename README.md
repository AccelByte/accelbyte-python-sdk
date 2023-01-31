# AccelByte Python SDK

A software development kit (SDK) for interacting with AccelByte services written in Python.

This SDK was generated from OpenAPI specification documents included in the [spec](spec) directory.

## Setup

This SDK requires Python 3.9 to be installed.

### Install with Pip

Install dependencies.

```sh
pip install requests httpx websockets PyYAML PyJWT[crypto] mmh3 bitarray
```

Install from PyPI

```sh
pip install accelbyte-py-sdk
```

or install from source.

```sh
pip install git+https://github.com/AccelByte/accelbyte-python-sdk.git@{VERSION}#egg=accelbyte_py_sdk
```

Replace `{VERSION}` with a specific release version tag. When starting a new project, 
using the latest release version is recommended. For the list of available versions, see [releases](https://github.com/AccelByte/accelbyte-python-sdk/releases). 

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
from os import environ
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
from os import environ
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

:bulb: Using `login_x(..., auto_refresh=True)` automatically refreshes the token once the expiration draws near.

```python
# set the refresh rate for 'login_client'
# 0.5 means refresh when we 50% of the expiration duration has passed
res, err = login_client(client_id, client_secret, auto_refresh=True, refresh_rate=0.5)
```
```python
# set the refresh rate for 'login_user'
# 0.5 means refresh when we 50% of the expiration duration has passed
res, err = login_user(username, password, auto_refresh=True, refresh_rate=0.5)
```

The auto refresh is only triggered when another request is fired. If you want to the refresh run automatically in the background. Use any of the `LoginXTimer` classes.

```python
from accelbyte_py_sdk.services.auth import LoginClientTimer, LoginPlatformTimer, LoginUserTimer, RefreshLoginTimer

res, err = login_user(username, password)
if err is not None:
    exit(1)

# creates a threading.Timer-like object that calls login_user every 1800 seconds repeatedly 'inf' times
interval = 1800
timer = LoginUserTimer(
    interval,
    username=username,
    password=password,
    repeats=-1,  # <0: repeat 'inf' times | 0 or None: repeat 0 times | >0: repeat n times 
    autostart=True,
)
```

To manually refresh the token:

```python
from accelbyte_py_sdk.core import get_token_repository
from accelbyte_py_sdk.services.auth import refresh_login

token_repo = get_token_repository()
refresh_token = token_repo.get_refresh_token()

token, error = refresh_login(refresh_token)
assert error is None
```

## Using multiple SDK instances

The examples above demonstrates using just one instance of the Python SDK (the default which is also global), but you could also instantiate multiple instances of the SDK and use them at the same time.

```python
import accelbyte_py_sdk.services.auth as auth_service
import accelbyte_py_sdk.api.iam as iam_service
import accelbyte_py_sdk.api.iam.models as iam_models

from accelbyte_py_sdk import AccelByteSDK
from accelbyte_py_sdk.core import EnvironmentConfigRepository
from accelbyte_py_sdk.core import InMemoryTokenRepository


# Create 3 instances of the SDK
client_sdk = AccelByteSDK()
user_sdk1 = AccelByteSDK()
user_sdk2 = AccelByteSDK()


# Initialize the SDKs
client_sdk.initialize(
    options={
        "config": EnvironmentConfigRepository(),
        "token": InMemoryTokenRepository(),
    }
)

user_sdk1.initialize(
    options={
        "config": EnvironmentConfigRepository(),
        "token": InMemoryTokenRepository(),
    }
)

user_sdk2.initialize(
    options={
        "config": user_sdk1.get_config_repository(),  # you could also share the config repo with User 1 SDK's
        "token": InMemoryTokenRepository(),  # you could also do the same thing with token repos but that is not advisable. 
    }
)


# Login the SDKs
_, error = auth_service.login_client(sdk=client_sdk)

username1, password1 = ...
_, error = auth_service.login_user(username1, password1, sdk=user_sdk1)

username2, password2 = ...
_, error = auth_service.login_user(username2, password2, sdk=user_sdk2)


# Call an endpoint as User 1
result1, error = iam_service.public_create_user_v4(
    body=iam_models.AccountCreateUserRequestV4.create_from_dict({...}),
    sdk=user_sdk1,
)

# Call an endpoint as User 2
result2, error = iam_service.public_create_user_v4(
    body=iam_models.AccountCreateUserRequestV4.create_from_dict({...}),
    sdk=user_sdk2,
)

# Call an endpoint as the Admin IAM Client
result, error = admin_update_user_v4(
    body=iam_models.ModelUserUpdateRequestV3.create_from_dict({...}),
    user_id=result1.user_id,
    sdk=client_sdk,
)


# Reset/Deintialize the SDKs after using
client_sdk1.deintialize()
client_sdk1.deintialize()
client_sdk1.deintialize()
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

## Configuring HTTP Retry

To use the `HTTP Retry` feature, set the `HttpClient`'s `retry_policy` and `backoff_policy`.

```python
import accelbyte_py_sdk
from accelbyte_py_sdk.core import get_http_client

# 1 Initialize the SDK
accelbyte_py_sdk.initialize()

# 2 Get the HTTP Client
http_client = get_http_client()

# 3 Configure the `retry_policy` and `backoff_policy`

# 3a. Retry 3 times with 0.5 seconds delay in between
from accelbyte_py_sdk.core import ConstantHttpBackoffPolicy
from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

http_client.retry_policy = MaxRetriesHttpRetryPolicy(3)

# 3b. Retry when total elapsed time is less than 15 seconds, with an exponential backoff duration.
from accelbyte_py_sdk.core import ExponentialHttpBackoffPolicy
from accelbyte_py_sdk.core import MaxElapsedHttpRetryPolicy

http_client.backoff_policy = ExponentialHttpBackoffPolicy(initial=1.0, multiplier=2.0)
http_client.retry_policy = MaxElapsedHttpRetryPolicy(15)

# 3c. Use custom retry and backoff policies.
from datetime import timedelta
from typing import Optional

def my_custom_retry_policy(request, response, /, *, retries: int = 0, elapsed: Optional[timedelta] = None, **kwargs) -> float:
    return "Retry-After" in response.headers and retries == 1  # Retry if the 'Retry-After' header exists and we are on the 1st retry (2nd attempt).

def my_custom_backoff_policy(request, response, /, *, retries: int = 0, elapsed: Optional[timedelta] = None, **kwargs) -> float:
    return response.headers.get("Retry-After", 1)  # Use the value of the 'Retry-After' response header, default to 1.0s.

http_client.backoff_policy = my_custom_backoff_policy
http_client.retry_policy = my_custom_retry_policy

# 3d. Combining multiple retry policies.
from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy
from accelbyte_py_sdk.core import StatusCodesHttpRetryPolicy

http_client.retry_policy = CompositeHttpRetryPolicy(
    StatusCodesHttpRetryPolicy(401, (501, 503)),  # Retry when response status code is 401, 501 to 503 (501, 502, or 503) -- AND
    MaxRetriesHttpRetryPolicy(3)                  #       when number of retries is less than or equal to 3.
)
```

---

## Validating Tokens

You can use `accelbyte_py_sdk.token_validation.caching.CachingTokenValidator` or `accelbyte_py_sdk.token_validation.iam.IAMTokenValidator`.

```python
token_validator = CachingTokenValidator(sdk)  # or IAMTokenValidator(sdk)

# access_token = ...
error = token_validator.validate_token(access_token)
if error:
    raise error
```

---

See [tests](tests/sdk/core/_request.py) for more usage.

## Samples

Sample apps are available in the [samples](samples) directory

## Documentation

For documentation about AccelByte services and SDK, see [docs.accelbyte.io](https://docs.accelbyte.io/)

:bulb: Check out the index files in the [docs](docs) directory if you are looking for a specific endpoint.

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

## In-depth Topics

### Generated code

#### Models

Each definition in `#/definitions/` is turned into a Model.

Example:

```yaml
# UserProfileInfo
properties:
  avatarLargeUrl:
    type: string
  avatarSmallUrl:
    type: string
  avatarUrl:
    type: string
  customAttributes:
    additionalProperties:
      type: object
    type: object
  dateOfBirth:
    format: date
    type: string
    x-nullable: true
  firstName:
    type: string
  language:
    type: string
  lastName:
    type: string
  namespace:
    type: string
  status:
    enum:
    - ACTIVE
    - INACTIVE
    type: string
  timeZone:
    type: string
  userId:
    type: string
  zipCode:
    type: string
type: object

```

```python
# accelbyte_py_sdk/api/basic/models/user_profile_info.py

class UserProfileInfo(Model):
    """User profile info (UserProfileInfo)

    Properties:
        avatar_large_url: (avatarLargeUrl) OPTIONAL str

        avatar_small_url: (avatarSmallUrl) OPTIONAL str

        avatar_url: (avatarUrl) OPTIONAL str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        date_of_birth: (dateOfBirth) OPTIONAL str

        first_name: (firstName) OPTIONAL str

        language: (language) OPTIONAL str

        last_name: (lastName) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        time_zone: (timeZone) OPTIONAL str

        user_id: (userId) OPTIONAL str

        zip_code: (zipCode) OPTIONAL str
    """

    # region fields

    avatar_large_url: str                                                                          # OPTIONAL
    avatar_small_url: str                                                                          # OPTIONAL
    avatar_url: str                                                                                # OPTIONAL
    custom_attributes: Dict[str, Any]                                                              # OPTIONAL
    date_of_birth: str                                                                             # OPTIONAL
    first_name: str                                                                                # OPTIONAL
    language: str                                                                                  # OPTIONAL
    last_name: str                                                                                 # OPTIONAL
    namespace: str                                                                                 # OPTIONAL
    status: Union[str, StatusEnum]                                                                 # OPTIONAL
    time_zone: str                                                                                 # OPTIONAL
    user_id: str                                                                                   # OPTIONAL
    zip_code: str                                                                                  # OPTIONAL

    # endregion fields
```

there are also a number of utility functions generated with each model that should help in the ease of use.

```python
# accelbyte_py_sdk/api/basic/models/user_profile_info.py

    ...

    def with_user_id(self, value: str) -> UserProfileInfo:
        self.user_id = value
        return self

    # other with_x() methods too

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        ...
        return result

    @classmethod
    def create(
        cls,
        avatar_large_url: Optional[str] = None,
        avatar_small_url: Optional[str] = None,
        avatar_url: Optional[str] = None,
        custom_attributes: Optional[Dict[str, Any]] = None,
        date_of_birth: Optional[str] = None,
        first_name: Optional[str] = None,
        language: Optional[str] = None,
        last_name: Optional[str] = None,
        namespace: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        time_zone: Optional[str] = None,
        user_id: Optional[str] = None,
        zip_code: Optional[str] = None,
    ) -> UserProfileInfo:
        instance = cls()
        ...
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserProfileInfo:
        instance = cls()
        ...
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "avatarLargeUrl": "avatar_large_url",
            "avatarSmallUrl": "avatar_small_url",
            "avatarUrl": "avatar_url",
            "customAttributes": "custom_attributes",
            "dateOfBirth": "date_of_birth",
            "firstName": "first_name",
            "language": "language",
            "lastName": "last_name",
            "namespace": "namespace",
            "status": "status",
            "timeZone": "time_zone",
            "userId": "user_id",
            "zipCode": "zip_code",
        }

    ...
```

#### Operations

Each path item in `#/paths` is turned into an Operation.

Example:

```yaml
# GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles
description: 'Get user profile.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required
  permission&lt;/i&gt;: resource=&lt;b&gt;&#34;NAMESPACE:{namespace}:USER:{userId}:PROFILE&#34;&lt;/b&gt;,
  action=2 &lt;b&gt;(READ)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;:
  11403&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: user profile&lt;/li&gt;&lt;/ul&gt;'
operationId: publicGetUserProfileInfo
parameters:
- description: namespace, only accept alphabet and numeric
  in: path
  name: namespace
  required: true
  type: string
- description: user's id, should follow UUID version 4 without hyphen
  in: path
  name: userId
  required: true
  type: string
produces:
- application/json
responses:
  '200':
    description: Successful operation
    schema:
      $ref: '#/definitions/UserProfileInfo'
  '400':
    description: <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation
      error</td></tr></table>
    schema:
      $ref: '#/definitions/ValidationErrorEntity'
  '401':
    description: <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
    schema:
      $ref: '#/definitions/ErrorEntity'
  '403':
    description: <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient
      permission</td></tr></table>
    schema:
      $ref: '#/definitions/ErrorEntity'
  '404':
    description: '<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable
      to {action}: User profile not found in namespace [{namespace}]</td></tr></table>'
    schema:
      $ref: '#/definitions/ErrorEntity'
security:
- authorization: []
- HasPermission:
  - NAMESPACE:{namespace}:USER:{userId}:PROFILE [READ]
  authorization: []
summary: Get user profile
tags:
- UserProfile
x-authorization:
  action: '2'
  resource: NAMESPACE:{namespace}:USER:{userId}:PROFILE

```

same with the models there are also a number of utility functions generated with each operation that should help in the ease of use.

```python
# accelbyte_py_sdk/api/basic/operations/user_profile/get_user_profile_info.py

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
# 
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

# AccelByte Cloud Basic Service (1.36.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import UserProfilePrivateInfo
from ...models import ValidationErrorEntity


class GetUserProfileInfo(Operation):
    """Get user profile (getUserProfileInfo)

    Get user profile.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE" , action=2 (READ)
      *  Returns : user profile
      *  Action code : 11403

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:PROFILE [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """

    # region fields

    _url: str = "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetUserProfileInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> GetUserProfileInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, UserProfilePrivateInfo], Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return UserProfilePrivateInfo.create_from_dict(content), None
        if code == 400:
            return None, ValidationErrorEntity.create_from_dict(content)
        if code == 401:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
    ) -> GetUserProfileInfo:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetUserProfileInfo:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
        }

    # endregion static methods

```

#### Creating

:bulb: there are 4 ways to create an instance of these models and operations.

```python
# 1. using the python __init__() function then setting the parameters manually:
model = ModelName()
model.param_a = "foo"
model.param_b = "bar"

# 2. using the python __init__() function together with the 'with_x' methods:
# # the 'with_x' functions are type annotated and will show warnings if a wrong type is passed.
model = ModelName() \
    .with_param_a("foo") \
    .with_param_b("bar")

# 3. using the ModelName.create(..) class method:
# # parameters here are also type annotated and will throw a TypeError if a required field was not filled out.
model = ModelName.create(
    param_a="foo",
    param_b="bar",
)

# 4. using the ModelName.create_from_dict(..) class method:
# # this method also has a 'include_empty' option that would get ignore values that evaluate to False, None, or len() == 0.
model_params = {
    "param_a": "foo",
    "param_b": "bar",
    "param_c": False,
    "param_d": None,
    "param_e": [],
    "param_f": {},
}
model = ModelName.create_from_dict(model_params)

# all of these apply to all operations too.
```

#### Wrappers

To improve ergonomics the code generator also generates wrappers around the operations.
The purpose of these wrappers is to automatically fill up parameters that the SDK already knows.
(e.g. namespace, client_id, access_token, etc.)

They are located at `accelbyte_py_sdk.api.<service-name>.wrappers` but can be accessed like so: `from accelbyte_py_sdk.api.<service-name> import <wrapper-name>`

```python
import accelbyte_py_sdk
from accelbyte_py_sdk.api.iam import token_grant_v3

if __name__ == "__main__":
    accelbyte_py_sdk.initialize()

    token, error = token_grant_v3(
        grant_type="client_credentials"
    )
    assert error is not None
```

The wrapper function `token_grant_v3` is a wrapper for the `TokenGrantV3` operation.
It automatically passes in the information needed like the Basic Auth Headers.
The values are gotten from the current `ConfigRepository`.

continuing from the previous examples (GetUserProfileInfo), its wrapper would be:

```python
# accelbyte_py_sdk/api/basic/wrappers/_user_profile.py

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import same_doc_as

from ..operations.user_profile import GetUserProfileInfo


@same_doc_as(GetUserProfileInfo)
def get_user_profile_info(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)
```

this wrapper function automatically fills up the required path parameter `namespace`.

now to use it only the `user_id` is now required.

```python
import accelbyte_py_sdk
from accelbyte_py_sdk.api.basic import get_user_profile_info

if __name__ == "__main__":
    accelbyte_py_sdk.initialize()

    user_profile_info, error = get_user_profile_info(user_id="lorem")
    assert error is not None

    print(f"Hello there {user_profile_info.first_name}!")
```

