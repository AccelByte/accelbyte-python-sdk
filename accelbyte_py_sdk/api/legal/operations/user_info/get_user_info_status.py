# justice-legal-service (1.14.0)

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

from ...models import RetrieveUserInfoCacheStatusResponse


class GetUserInfoStatus(Operation):
    """Get user info cache status (getUserInfoStatus)

    Get user info cache last updated time per namespace.<br>The query parameter
    namespaces can be a list of namespace separated by comma.<br>If query
    parameter namespaces is empty, user info cache status for all available
    namespaces will be returned. <br>Other detail info: <ul><li><i>Required
    permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)</li></ul>


    Properties:
        url: /agreement/admin/userInfo

        method: GET

        tags: ["UserInfo"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespaces: (namespaces) OPTIONAL str in query

    Responses:
        200: OK - List[RetrieveUserInfoCacheStatusResponse] (successful operation)
    """

    # region fields

    _url: str = "/agreement/admin/userInfo"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespaces: str                                                                                # OPTIONAL in [query]

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

        result += self.url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
        ]

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

    def is_valid(self) -> bool:
        return True

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
            result["namespaces"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, List[RetrieveUserInfoCacheStatusResponse]], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - List[RetrieveUserInfoCacheStatusResponse] (successful operation)
        """
        if code == 200:
            return [RetrieveUserInfoCacheStatusResponse.create_from_dict(i) for i in content], None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetUserInfoStatus:
        instance = cls()
        if "namespaces" in dict_ and dict_["namespaces"] is not None:
            instance.namespaces = str(dict_["namespaces"])
        elif include_empty:
            instance.namespaces = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespaces": "namespaces",
        }

    # endregion static methods