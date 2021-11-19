## In-depth Topics

### Generated code

#### Models

Each definition in `#/definitions/` is turned into a Model.

Example:

```yaml
# UserProfileInfo
[//]: # (<< PRINTJSON spec/basic.json '#/definitions/UserProfileInfo' yaml)
```

```python
# accelbyte_py_sdk/api/basic/models/user_profile_info.py

[//]: # (<< PRINTFS accelbyte_py_sdk/api/basic/models/user_profile_info.py 'class UserProfileInfo(Model):' '    # endregion fields')
```

there are also a number of utility functions generated with each model that should help in the ease of use.

```python
# accelbyte_py_sdk/api/basic/models/user_profile_info.py

    ...

[//]: # (<< PRINTFS accelbyte_py_sdk/api/basic/models/user_profile_info.py '    def with_user_id(self, value: str) -> UserProfileInfo:' '        return self')

    # other with_x() methods too

[//]: # (<< PRINTFS accelbyte_py_sdk/api/basic/models/user_profile_info.py '    def to_dict(self, include_empty: bool = False) -> dict:' '        result: dict = {}')
        ...
        return result

    @classmethod
[//]: # (<< PRINTFS accelbyte_py_sdk/api/basic/models/user_profile_info.py '    def create(' '        instance = cls()')
        ...
        return instance

    @classmethod
[//]: # (<< PRINTFS accelbyte_py_sdk/api/basic/models/user_profile_info.py '    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserProfileInfo:' '        instance = cls()')
        ...
        return instance

    @staticmethod
[//]: # (<< PRINTFS accelbyte_py_sdk/api/basic/models/user_profile_info.py '    def get_field_info() -> Dict[str, str]:' '        }')

    ...
```

#### Operations

Each path item in `#/paths` is turned into an Operation.

Example:

```yaml
# GET /v1/public/namespaces/{namespace}/users/{userId}/profiles
[//]: # (<< PRINTJSON spec/basic.json '#/paths/%2Fv1%2Fpublic%2Fnamespaces%2F%7Bnamespace%7D%2Fusers%2F%7BuserId%7D%2Fprofiles/get' yaml)
```

same with the models there are also a number of utility functions generated with each operation that should help in the ease of use.

```python
# accelbyte_py_sdk/api/basic/operations/user_profile/get_user_profile_info.py

[//]: # (<< PRINTFC accelbyte_py_sdk/api/basic/operations/user_profile/get_user_profile_info.py)
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
