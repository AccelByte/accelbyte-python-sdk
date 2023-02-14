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

# AccelByte Cloud Match Service V2 (2.1.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApiMatchPool
from ...models import ApiMatchPoolConfig
from ...models import ResponseError


class UpdateMatchPool(Operation):
    """Update a match pool (UpdateMatchPool)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:POOL [UPDATE]

    Required Scope: social

    Updates an existing matchmaking pool.

    ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

    Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
    Match Function will be used as reference value for Match Function Overrides if not set.
    In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
    This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
    e.g.
    {
    "match_function": "custom",
    "match_function_overrides": {
    "validation": []{"default","custom"},
    "make_matches": "default",
    }
    }

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:POOL [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-pools/{pool}

        method: PUT

        tags: ["Match-Pools", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchPoolConfig in body

        namespace: (namespace) REQUIRED str in path

        pool: (pool) REQUIRED str in path

    Responses:
        200: OK - ApiMatchPool (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/match2/v1/namespaces/{namespace}/match-pools/{pool}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ApiMatchPoolConfig  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
    pool: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "pool"):
            result["pool"] = self.pool
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ApiMatchPoolConfig) -> UpdateMatchPool:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateMatchPool:
        self.namespace = value
        return self

    def with_pool(self, value: str) -> UpdateMatchPool:
        self.pool = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ApiMatchPoolConfig()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "pool") and self.pool:
            result["pool"] = str(self.pool)
        elif include_empty:
            result["pool"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, ApiMatchPool], Union[None, HttpResponse, ResponseError]]:
        """Parse the given response.

        200: OK - ApiMatchPool (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Forbidden)

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

        if code == 200:
            return ApiMatchPool.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
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
        body: ApiMatchPoolConfig,
        namespace: str,
        pool: str,
    ) -> UpdateMatchPool:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.pool = pool
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateMatchPool:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ApiMatchPoolConfig.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ApiMatchPoolConfig()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "pool" in dict_ and dict_["pool"] is not None:
            instance.pool = str(dict_["pool"])
        elif include_empty:
            instance.pool = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "pool": "pool",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "pool": True,
        }

    # endregion static methods
