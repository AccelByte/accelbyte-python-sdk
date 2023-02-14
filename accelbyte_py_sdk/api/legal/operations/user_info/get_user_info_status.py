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

# AccelByte Cloud Legal Service (1.26.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import RetrieveUserInfoCacheStatusResponse


class GetUserInfoStatus(Operation):
    """Get user info cache status (getUserInfoStatus)

    Get user info cache last updated time per namespace.
    The query parameter namespaces can be a list of namespace separated by comma.
    If query parameter namespaces is empty, user info cache status for all available namespaces will be returned.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [READ]

    Properties:
        url: /agreement/admin/userInfo

        method: GET

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespaces: (namespaces) OPTIONAL str in query

    Responses:
        200: OK - List[RetrieveUserInfoCacheStatusResponse] (successful operation)
    """

    # region fields

    _url: str = "/agreement/admin/userInfo"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespaces: str  # OPTIONAL in [query]

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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "namespaces"):
            result["namespaces"] = self.namespaces
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespaces(self, value: str) -> GetUserInfoStatus:
        self.namespaces = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespaces") and self.namespaces:
            result["namespaces"] = str(self.namespaces)
        elif include_empty:
            result["namespaces"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[RetrieveUserInfoCacheStatusResponse]],
        Union[None, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - List[RetrieveUserInfoCacheStatusResponse] (successful operation)

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
            return [
                RetrieveUserInfoCacheStatusResponse.create_from_dict(i) for i in content
            ], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespaces: Optional[str] = None,
    ) -> GetUserInfoStatus:
        instance = cls()
        if namespaces is not None:
            instance.namespaces = namespaces
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetUserInfoStatus:
        instance = cls()
        if "namespaces" in dict_ and dict_["namespaces"] is not None:
            instance.namespaces = str(dict_["namespaces"])
        elif include_empty:
            instance.namespaces = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespaces": "namespaces",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespaces": False,
        }

    # endregion static methods
