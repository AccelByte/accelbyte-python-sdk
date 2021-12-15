# justice-dsm-controller-service (2.10.0)

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

from ...models import ModelsListImageResponse
from ...models import ResponseError


class ListImages(Operation):
    """List all DS images (ListImages)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ] Required
    scope: social This endpoint lists all of dedicated servers images.


    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        q: (q) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

    Responses:
        200: OK - ModelsListImageResponse (configs listed)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsmcontroller/admin/namespaces/{namespace}/images"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    count: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    q: str                                                                                         # OPTIONAL in [query]
    sort_by: str                                                                                   # OPTIONAL in [query]
    sort_direction: str                                                                            # OPTIONAL in [query]

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
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
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
        if hasattr(self, "count"):
            result["count"] = self.count
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "q"):
            result["q"] = self.q
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "sort_direction"):
            result["sortDirection"] = self.sort_direction
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListImages:
        self.namespace = value
        return self

    def with_count(self, value: int) -> ListImages:
        self.count = value
        return self

    def with_offset(self, value: int) -> ListImages:
        self.offset = value
        return self

    def with_q(self, value: str) -> ListImages:
        self.q = value
        return self

    def with_sort_by(self, value: str) -> ListImages:
        self.sort_by = value
        return self

    def with_sort_direction(self, value: str) -> ListImages:
        self.sort_direction = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "q") and self.q:
            result["q"] = str(self.q)
        elif include_empty:
            result["q"] = str()
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = str()
        if hasattr(self, "sort_direction") and self.sort_direction:
            result["sortDirection"] = str(self.sort_direction)
        elif include_empty:
            result["sortDirection"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsListImageResponse], Union[None, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsListImageResponse (configs listed)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 200:
            return ModelsListImageResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
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
        count: Optional[int] = None,
        offset: Optional[int] = None,
        q: Optional[str] = None,
        sort_by: Optional[str] = None,
        sort_direction: Optional[str] = None,
    ) -> ListImages:
        instance = cls()
        instance.namespace = namespace
        if count is not None:
            instance.count = count
        if offset is not None:
            instance.offset = offset
        if q is not None:
            instance.q = q
        if sort_by is not None:
            instance.sort_by = sort_by
        if sort_direction is not None:
            instance.sort_direction = sort_direction
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListImages:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "q" in dict_ and dict_["q"] is not None:
            instance.q = str(dict_["q"])
        elif include_empty:
            instance.q = str()
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = str()
        if "sortDirection" in dict_ and dict_["sortDirection"] is not None:
            instance.sort_direction = str(dict_["sortDirection"])
        elif include_empty:
            instance.sort_direction = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "count": "count",
            "offset": "offset",
            "q": "q",
            "sortBy": "sort_by",
            "sortDirection": "sort_direction",
        }

    # endregion static methods
