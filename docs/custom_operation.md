# Add Custom Operation into AccelByte SDK

## Background

Majority of Python Extend SDK codes are generated from [specification files](../spec) using codegen tools.
Any attemp to customize Python Extend SDK must avoid editing files that are marked as `DO NOT EDIT`.
Also, it is best practice to extend the functionality of Python Extend SDK by inherit the base classes or add new
implementation for partial classes to ensure fewer complications when upgrading Python Extend SDK.

## How to Create a Custom Operation

In this guide, we will explain on how to create a custom operation for a custom endpoint and integrate it with
the SDK core.

### Goal

Create an operation class and along it the response model,
let's use this [endpoint](https://developers.google.com/custom-search/v1/reference/rest/v1/cse/list)
`GET https://www.googleapis.com/customsearch/v1` as an example for a custom endpoint.

Let's use these query parameters:

* `cx` - The Programmable Search Engine ID to use for this request.
* `key` - An API key is a unique string that lets you access an API.
* `num` - Number of search results to return.
  * Valid values are integers between 1 and 10, inclusive.
* `q` - Query
* `safe` - Search safety level. Acceptable values are:
  * `active`: Enables SafeSearch filtering.
  * `off`: Disables SafeSearch filtering. (default)

### Create the Model Classes

Here's a simplified example output of the endpoint.

```json
{
  "items": [
    {
      "title": "foobar2000",
      "link": "https://www.foobar2000.org/"
    }
  ]
}
```

```python
# Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations

from typing import Dict, List

from accelbyte_py_sdk.core import Model


class GoogleCustomSearchResult(Model):
    title: str
    link: str

    def to_dict(self, include_empty: bool = False) -> dict:
        return self.create_dict_from_obj(self, ("title", "link"))

    @classmethod
    def create_from_dict(cls, dikt: dict) -> GoogleCustomSearchResult:
        instance = cls()
        if not dikt:
            return instance
        if title := dikt.get("title"):
            instance.title = title
        if link := dikt.get("link"):
            instance.link = link
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "title": "title",
            "link": "link",
        }


class GoogleCustomSearchResponse(Model):
    items: List[GoogleCustomSearchResult]

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        items = [item.to_dict() for item in self.items]
        if items:
            result["items"] = items
        return result

    @classmethod
    def create_from_dict(cls, dikt: dict) -> GoogleCustomSearchResponse:
        instance = cls()
        if not dikt:
            return instance
        if items := dikt.get("items"):
            instance.items = [
                GoogleCustomSearchResult.create_from_dict(i) for i in items
            ]
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "items": "items",
        }

```

### Create the Operation Class

```python
# Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Any, Dict, List, Literal, Optional

from accelbyte_py_sdk.core import Operation

from .custom_model import GoogleCustomSearchResponse


class GoogleCustomSearch(Operation):
    url = "/customsearch/v1"
    produces = ["application/json"]

    id_: str  # REQUIRED in [query]
    key: str  # REQUIRED in [query]
    query: str  # REQUIRED in [query]
    limit: Optional[int] = 5  # OPTIONAL in [query]
    safe: Optional[Literal["active", "off"]] = "off"  # OPTIONAL in [query]

    def get_query_params(self) -> dict:
        return self.create_params_dict(("cx", "key", "num", "q", "safe"))

    def parse_response(self, code: int, content_type: str, content: Any):
        pre_processed_response, error = self.pre_process_response(
            code, content_type, content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return GoogleCustomSearchResponse.create_from_dict(content), None

        return self.handle_undocumented_response(code, content_type, content)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "cx": "id_",
            "key": "key",
            "num": "limit",
            "q": "query",
            "safe": "safe",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cx": True,
            "key": True,
            "num": False,
            "q": True,
            "safe": False,
        }

```

### Using the Custom Operation

After you create the necessary classes, you can now use it with the AccelByte SDK.

```python
# Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import json
import logging
from argparse import ArgumentParser
from typing import Any, Dict

import accelbyte_py_sdk as ab
import accelbyte_py_sdk.services.auth as auth_service
from dotenv import load_dotenv

from .custom_operation import GoogleCustomSearch


def parse_args() -> Dict[str, Any]:
    parser = ArgumentParser(prog="Google Custom Search V1")
    parser.add_argument(
        "-q",
        "--query",
        type=str,
        required=True,
        help="Query",
    )
    parser.add_argument(
        "--id",
        type=str,
        required=True,
        help="The Programmable Search Engine ID to use for this request.",
    )
    parser.add_argument(
        "--key",
        type=str,
        required=True,
        help="An API key is a unique string that lets you access an API.",
    )
    parser.add_argument(
        "--limit", default=10, type=int, help="Number of search results to return."
    )
    parser.add_argument(
        "--safe",
        default="active",
        choices=["active", "off"],
        help="Search safety level. Acceptable values are: {active,off}",
    )
    return vars(parser.parse_args())


# noinspection PyShadowingBuiltins
def main(
    query: str,
    id: str,
    key: str,
    limit: int,
    safe: str,
) -> None:
    load_dotenv()

    options = {
        "config": ab.core.EnvironmentConfigRepository(),
        "repo": ab.core.InMemoryTokenRepository(),
        "log_files": {
            "http": {
                "capacity": 1,
                "filename": "http.log",
                "level": logging.DEBUG,
            }
        },
    }
    sdk = ab.AccelByteSDK()
    sdk.initialize(options=options)

    auth_service.login_client(sdk=sdk)

    operation = GoogleCustomSearch()
    operation.query = query

    operation.id_ = id
    operation.key = key
    operation.limit = limit
    operation.safe = safe

    result, error = sdk.run_request(
        operation=operation,
        # (optional) override base URL from the config repo
        base_url="https://www.googleapis.com",
    )
    if error:
        exit(1)

    print(json.dumps(result.to_dict(), indent=2))


if __name__ == "__main__":
    main(**parse_args())

```

### Usage

```shell
python -m app --help
```

Output:

```text
usage: Google Custom Search V1 [-h] -q QUERY --id ID --key KEY [--limit LIMIT]
                               [--safe {active,off}]

optional arguments:
  -h, --help            show this help message and exit
  -q QUERY, --query QUERY
                        Query
  --id ID               The Programmable Search Engine ID to use for this
                        request.
  --key KEY             An API key is a unique string that lets you access an
                        API.
  --limit LIMIT         Number of search results to return.
  --safe {active,off}   Search safety level. Acceptable values are:
                        {active,off}
```

```shell
python -m app -q google --id <id> --key <key> --limit 1
```

Output:

```json
{
  "items": [
    {
      "title": "Google",
      "link": "https://www.google.com/"
    }
  ]
}
```

## References

Please see the [/api](../accelbyte_py_sdk/api) directory for mroe examples on how to create custom models and
operations from generated code.

The working code for this example is found [here](../samples/custom-operation).
