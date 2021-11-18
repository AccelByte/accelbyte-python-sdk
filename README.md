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
python3 -m accelbyte_py_sdk iam-get-bans-type --help
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
Usage: python -m accelbyte_py_sdk iam-get-ban-types [OPTIONS]

Options:
  --doc BOOLEAN
  --login_as [client|user]
  --help                    Show this message and exit.

$ python -m accelbyte_py_sdk iam-get-ban-types --login_as user

Get ban types success.
Ban Types: CHAT_SEND, CHAT_ALL, VOICE_SEND, VOICE_ALL, COMMUNITY, TRADE_INITIATE, TRADE_ALL, ORDER_AND_PAYMENT, MARKETPLACE_LIST, MARKETPLACE_ALL, LOGIN, STATISTICS, MATCHMAKING, UGC_CREATE_UPDATE
```

```sh
Usage: python -m accelbyte_py_sdk iam-register-user [OPTIONS] DISPLAY_NAME EMAIL_ADDRESS
                                                    DATE_OF_BIRTH COUNTRY PASSWORD

Options:
  --namespace TEXT
  --role_id TEXT
  --doc BOOLEAN
  --login_as [client|user]
  --help            Show this message and exit.

$ python -m accelbyte_py_sdk iam-register-user eagerhamster6800 vi7xUuNc4j@fakemail.com 2000-09-23 US "****" --login_as client

User registration success.
authType: EMAILPASSWD
country: US
dateOfBirth: '2000-09-23T00:00:00Z'
displayName: eagerhamster6800
emailAddress: vi7xuunc4j@fakemail.com
namespace: ****
userId: ****
```

```sh
Usage: python -m accelbyte_py_sdk iam-get-my-admin-user [OPTIONS]

Options:
  --doc BOOLEAN
  --login_as [client|user]
  --help         Show this message and exit.

$ python -m accelbyte_py_sdk iam-get-my-admin-user --login_as user

Get my admin user success.
...
userId: ****
userName: ****
```

```sh
Usage: python -m accelbyte_py_sdk iam-update-client [OPTIONS] CLIENT_ID
                                                    CLIENT_UPDATE_REQUEST

Options:
  --namespace TEXT
  --doc BOOLEAN
  --login_as [client|user]
  --help            Show this message and exit.

$ python -m accelbyte_py_sdk iam-update-client **** {"clientName": "****"} --login_as user

Update client success.
clientId: ****
clientName: ****
clientPermissions:
- action: 2
  resource: CLIENT
createdAt: '2020-09-23T00:00:00.000000Z'
modifiedAt: '2021-09-23T00:00:30.000000Z'
namespace: ****
oauthClientType: Confidential
redirectUri: http://127.0.0.1
scopes:
- account
```

```sh
Usage: python -m accelbyte_py_sdk iam-update-user [OPTIONS] USER_ID

Options:
  --country TEXT
  --date_of_birth TEXT
  --display_name TEXT
  --language_tag TEXT
  --user_name TEXT
  --namespace TEXT
  --doc BOOLEAN
  --login_as [client|user]
  --help                Show this message and exit.

$ python -m accelbyte_py_sdk iam-update-user **** --date_of_birth 2000-09-23 --login_as user

Update user success.
...
dateOfBirth: '2000-09-23T00:00:00Z'
lastDateOfBirthChangedTime: '2021-09-23T07:00:00.000000Z'
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

## In-depth Topics

### Generated code

#### Models

Each definition in `#/definitions/` is turned into a Model.


Example:

```yaml
---
UserProfileInfo:
  type: object
  properties:
    userId:
      type: string
    namespace:
      type: string
    firstName:
      type: string
    lastName:
      type: string
    avatarSmallUrl:
      type: string
    avatarUrl:
      type: string
    avatarLargeUrl:
      type: string
    status:
      type: string
      enum:
      - ACTIVE
      - INACTIVE
    language:
      type: string
    timeZone:
      type: string
    dateOfBirth:
      type: string
      format: date
    customAttributes:
      type: object
      additionalProperties:
        type: object
    zipCode:
      type: string
```

```python
# accelbyte_py_sdk/api/basic/models/user_profile_info.py

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class UserProfileInfo(Model):
    """User profile info

    Properties:
        user_id: (userId) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        first_name: (firstName) OPTIONAL str

        last_name: (lastName) OPTIONAL str

        avatar_small_url: (avatarSmallUrl) OPTIONAL str

        avatar_url: (avatarUrl) OPTIONAL str

        avatar_large_url: (avatarLargeUrl) OPTIONAL str

        status: (status) OPTIONAL str

        language: (language) OPTIONAL str

        time_zone: (timeZone) OPTIONAL str

        date_of_birth: (dateOfBirth) OPTIONAL str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        zip_code: (zipCode) OPTIONAL str
    """

    # region fields

    user_id: str                                                                                   # OPTIONAL
    namespace: str                                                                                 # OPTIONAL
    first_name: str                                                                                # OPTIONAL
    last_name: str                                                                                 # OPTIONAL
    avatar_small_url: str                                                                          # OPTIONAL
    avatar_url: str                                                                                # OPTIONAL
    avatar_large_url: str                                                                          # OPTIONAL
    status: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    time_zone: str                                                                                 # OPTIONAL
    date_of_birth: str                                                                             # OPTIONAL
    custom_attributes: Dict[str, Any]                                                              # OPTIONAL
    zip_code: str                                                                                  # OPTIONAL

    # endregion fields
```

there are also a number of utility functions generated with each model that should help in the ease of use.

```python
# accelbyte_py_sdk/api/basic/models/user_profile_info.py

def with_user_id(self, value: str) -> UserProfileInfo:
    self.user_id = value
    return self

# other with_x() methods too

def to_dict(self, include_empty: bool = False) -> dict:
    return  # ...

@classmethod
def create(
    cls,
    # ...,
) -> UserProfileInfo:
    return  # ...

@classmethod
def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserProfileInfo:
    return  # ...

@staticmethod
def get_field_info() -> Dict[str, str]:
    return  # ...
```

#### Operations

Each path item in `#/paths` is turned into an Operation.


Example:

```yaml
---
"/v1/public/namespaces/{namespace}/users/{userId}/profiles":
  get:
    tags:
    - UserProfile
    summary: Get user profile
    description: 'Get user profile.<br>Other detail info: <ul><li><i>Required permission</i>:
      resource=<b>"NAMESPACE:{namespace}:USER:{userId}:PROFILE"</b>, action=2 <b>(READ)</b></li><li><i>Action
      code</i>: 11403</li><li><i>Returns</i>: user profile</li></ul>'
    operationId: publicGetUserProfileInfo
    produces:
    - application/json
    parameters:
    - name: namespace
      in: path
      description: namespace, only accept alphabet and numeric
      required: true
      type: string
    - name: userId
      in: path
      description: user's id, should follow UUID version 4 without hyphen
      required: true
      type: string
    responses:
      '200':
        description: Successful operation
        schema:
          "$ref": "#/definitions/UserProfileInfo"
      '400':
        description: "<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation
          error</td></tr></table>"
        schema:
          "$ref": "#/definitions/ValidationErrorEntity"
      '401':
        description: "<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>"
        schema:
          "$ref": "#/definitions/ErrorEntity"
      '403':
        description: "<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient
          permission</td></tr></table>"
        schema:
          "$ref": "#/definitions/ErrorEntity"
      '404':
        description: "<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>user
          profile not found</td></tr></table>"
        schema:
          "$ref": "#/definitions/ErrorEntity"
    security:
    - authorization: []
    x-authorization:
      resource: NAMESPACE:{namespace}:USER:{userId}:PROFILE
      action: '2'
```

```python
# accelbyte_py_sdk/api/basic/operations/user_profile/get_user_profile_info.py

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import UserProfilePrivateInfo
from ...models import ValidationErrorEntity


class GetUserProfileInfo(Operation):
    """Get user profile (getUserProfileInfo)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: UserProfile

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (errorCode: 20002 | errorMessage: validation error)

        401: Unauthorized - ErrorEntity (errorCode: 20001 | errorMessage: unauthorized)

        403: Forbidden - ErrorEntity (errorCode: 20013 | errorMessage: insufficient permission)

        404: Not Found - ErrorEntity (errorCode: 11440 | errorMessage: user profile not found)
    """

    # region fields

    _url: str = "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties
```

same with the models there are also a number of utility functions generated with each operation that should help in the ease of use.

```python
# accelbyte_py_sdk/api/basic/operations/user_profile/get_user_profile_info.py

def get_full_url(self, base_url: Union[None, str] = None) -> str:
    result = base_url if base_url is not None else ""

    # path params
    url = self.url
    for k, v in self.get_path_params().items():
        url = url.replace(f"{{{k}}}", v)
    result += url

    return result

# noinspection PyMethodMayBeStatic
def get_all_required_fields(self) -> List[str]:
    return [
        "namespace",
        "user_id",
    ]

def get_all_params(self) -> dict:
    return  # ...

def get_path_params(self) -> dict:
    return  # ...

# there would also be: get_body_params(), get_form_data_params(), get_header_params, get_query_params() too if the operation has those.

def is_valid(self) -> bool:
    if not hasattr(self, "namespace") or self.namespace is None:
        return False
    if not hasattr(self, "user_id") or self.user_id is None:
        return False
    return True

def with_namespace(self, value: str) -> GetUserProfileInfo:
    self.namespace = value
    return self

# other with_x() methods too

def to_dict(self, include_empty: bool = False) -> dict:
    return  # ...

# noinspection PyMethodMayBeStatic
def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, UserProfilePrivateInfo], Union[None, ErrorEntity, ValidationErrorEntity]]:
    """Parse the given response.

    200: OK - UserProfilePrivateInfo (successful operation)

    400: Bad Request - ValidationErrorEntity (errorCode: 20002 | errorMessage: validation error)

    401: Unauthorized - ErrorEntity (errorCode: 20001 | errorMessage: unauthorized)

    403: Forbidden - ErrorEntity (errorCode: 20013 | errorMessage: insufficient permission)

    404: Not Found - ErrorEntity (errorCode: 11440 | errorMessage: user profile not found)
    """
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
    return None, HttpResponse.create_unhandled_error()

# the return value of parse_response follows the format Tuple[Union[None, all successful return codes], Union[None, all failure return codes]]

@classmethod
def create(
    cls,
    # ...,
) -> UserProfileInfo:
    return  # ...

@classmethod
def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserProfileInfo:
    return  # ...

@staticmethod
def get_field_info() -> Dict[str, str]:
    return  # ...
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

They are located at `accelbyte_py_sdk.api.<service-name>.wrappers` but can be accessed like so:

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

continuing from the previous examples, would be:

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

