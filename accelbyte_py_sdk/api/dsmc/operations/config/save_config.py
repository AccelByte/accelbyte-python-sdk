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

# AccelByte Cloud Dsm Controller Service (3.10.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelsDSMConfigRecord
from ...models import ResponseError


class SaveConfig(Operation):
    """Save config (SaveConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint adds/modifies config. When there are ready servers and
    the server version is updated, those servers will be replaced with newer version.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    "image_version_mapping": {
    "1.4.0": "accelbyte/sample-ds-go:1.4.0"
    },
    "default_version": "1.4.0",
    "cpu_limit": "100",
    "mem_limit": "64",
    "params": "",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 0,
    "configurations": {
    "1player": {
    "cpu_limit": "100",
    "mem_limit": "64",
    "params": "-gamemode 1p",
    },
    "50players": {
    "cpu_limit": "200",
    "mem_limit": "512",
    "params": "-gamemode 50p",
    }
    },
    "deployments": {
    "global-1p": {
    "game_version": "1.4.0"",
    "regions": ["us-west", "ap-southeast"],
    "configuration": "1player",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 2
    },
    "us-50p": {
    "game_version": "1.4.0"",
    "regions": ["us-west"],
    "configuration": "50players",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 5
    },
    },
    }
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDSMConfigRecord in body

    Responses:
        204: No Content - (config added/updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsmcontroller/admin/configs"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsDSMConfigRecord  # REQUIRED in [body]

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
            "body": self.get_body_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsDSMConfigRecord) -> SaveConfig:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsDSMConfigRecord()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, ResponseError]]:
        """Parse the given response.

        204: No Content - (config added/updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 204:
            return None, None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelsDSMConfigRecord,
    ) -> SaveConfig:
        instance = cls()
        instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SaveConfig:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsDSMConfigRecord.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsDSMConfigRecord()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
        }

    # endregion static methods
