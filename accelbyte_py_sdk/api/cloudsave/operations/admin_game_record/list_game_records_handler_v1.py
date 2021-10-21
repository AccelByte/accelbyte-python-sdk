# Auto-generated at 2021-10-21T08:52:32.560218+08:00
# from: Justice cloudsave Service (1.8.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelsListGameRecordKeys
from ...models import ModelsResponseError


class ListGameRecordsHandlerV1(Operation):
    """Retrieve list of records key by namespace (listGameRecordsHandlerV1)

    Required permission: ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]
    Required scope: social Retrieve list of records key by namespace


    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records

        method: GET

        tags: ["AdminGameRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        offset: (offset) REQUIRED int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - ModelsListGameRecordKeys (Retrieve list of records key by namespace)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/cloudsave/v1/admin/namespaces/{namespace}/records"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    offset: int                                                                                    # REQUIRED in [query]
    limit: int                                                                                     # REQUIRED in [query]

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

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "offset",
            "limit",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "offset") or self.offset is None:
            return False
        if not hasattr(self, "limit") or self.limit is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListGameRecordsHandlerV1:
        self.namespace = value
        return self

    def with_offset(self, value: int) -> ListGameRecordsHandlerV1:
        self.offset = value
        return self

    def with_limit(self, value: int) -> ListGameRecordsHandlerV1:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsListGameRecordKeys], Union[None, ModelsResponseError]]:
        """Parse the given response.

        200: OK - ModelsListGameRecordKeys (Retrieve list of records key by namespace)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
        """
        if code == 200:
            return ModelsListGameRecordKeys.create_from_dict(content), None
        if code == 401:
            return None, ModelsResponseError.create_from_dict(content)
        if code == 500:
            return None, ModelsResponseError.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        offset: int,
        limit: int,
    ) -> ListGameRecordsHandlerV1:
        instance = cls()
        instance.namespace = namespace
        instance.offset = offset
        instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListGameRecordsHandlerV1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "offset": "offset",
            "limit": "limit",
        }

    # endregion static methods
