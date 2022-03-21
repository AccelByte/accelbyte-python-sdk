# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-iam-service (5.4.0)

from __future__ import annotations
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelPublicUserInformationResponseV3
from ...models import RestErrorResponse


class PublicSearchUserV3(Operation):
    """Search User (PublicSearchUserV3)

    Requires valid user access token




    This endpoint search all users on the specified namespace that match the query on these fields: display name, and username.
    The query length should greater than 1ï¼otherwise will not query the database. The default limit value is 100



    action code : 10132

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUserInformationResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/iam/v3/public/namespaces/{namespace}/users"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    by: str                                                                                        # OPTIONAL in [query]
    query: str                                                                                     # OPTIONAL in [query]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
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
        if hasattr(self, "by"):
            result["by"] = self.by
        if hasattr(self, "query"):
            result["query"] = self.query
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        # required checks
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicSearchUserV3:
        self.namespace = value
        return self

    def with_by(self, value: str) -> PublicSearchUserV3:
        self.by = value
        return self

    def with_query(self, value: str) -> PublicSearchUserV3:
        self.query = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "by") and self.by:
            result["by"] = str(self.by)
        elif include_empty:
            result["by"] = str()
        if hasattr(self, "query") and self.query:
            result["query"] = str(self.query)
        elif include_empty:
            result["query"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelPublicUserInformationResponseV3], Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        200: OK - ModelPublicUserInformationResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - (Internal Server Error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return ModelPublicUserInformationResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        by: Optional[str] = None,
        query: Optional[str] = None,
    ) -> PublicSearchUserV3:
        instance = cls()
        instance.namespace = namespace
        if by is not None:
            instance.by = by
        if query is not None:
            instance.query = query
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicSearchUserV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "by" in dict_ and dict_["by"] is not None:
            instance.by = str(dict_["by"])
        elif include_empty:
            instance.by = str()
        if "query" in dict_ and dict_["query"] is not None:
            instance.query = str(dict_["query"])
        elif include_empty:
            instance.query = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "by": "by",
            "query": "query",
        }

    # endregion static methods
