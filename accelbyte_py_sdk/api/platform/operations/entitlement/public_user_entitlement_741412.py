# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import UserEntitlementHistoryPagingSlicedResult


class EntitlementClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class PublicUserEntitlementHistory(Operation):
    """Get user entitlements histories. (publicUserEntitlementHistory)

    Get user entitlement history

    Other detail info:

      * Returns : user entitlement history list

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/history

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - List[UserEntitlementHistoryPagingSlicedResult] (successful operation)
    """

    # region fields

    _url: str = (
        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/history"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    end_date: str  # OPTIONAL in [query]
    entitlement_clazz: Union[str, EntitlementClazzEnum]  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    start_date: str  # OPTIONAL in [query]

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
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "entitlement_clazz"):
            result["entitlementClazz"] = self.entitlement_clazz
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicUserEntitlementHistory:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicUserEntitlementHistory:
        self.user_id = value
        return self

    def with_end_date(self, value: str) -> PublicUserEntitlementHistory:
        self.end_date = value
        return self

    def with_entitlement_clazz(
        self, value: Union[str, EntitlementClazzEnum]
    ) -> PublicUserEntitlementHistory:
        self.entitlement_clazz = value
        return self

    def with_limit(self, value: int) -> PublicUserEntitlementHistory:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicUserEntitlementHistory:
        self.offset = value
        return self

    def with_start_date(self, value: str) -> PublicUserEntitlementHistory:
        self.start_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "entitlement_clazz") and self.entitlement_clazz:
            result["entitlementClazz"] = str(self.entitlement_clazz)
        elif include_empty:
            result["entitlementClazz"] = Union[str, EntitlementClazzEnum]()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[UserEntitlementHistoryPagingSlicedResult]],
        Union[None, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - List[UserEntitlementHistoryPagingSlicedResult] (successful operation)

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
                UserEntitlementHistoryPagingSlicedResult.create_from_dict(i)
                for i in content
            ], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        end_date: Optional[str] = None,
        entitlement_clazz: Optional[Union[str, EntitlementClazzEnum]] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        start_date: Optional[str] = None,
        **kwargs,
    ) -> PublicUserEntitlementHistory:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if end_date is not None:
            instance.end_date = end_date
        if entitlement_clazz is not None:
            instance.entitlement_clazz = entitlement_clazz
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if start_date is not None:
            instance.start_date = start_date
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicUserEntitlementHistory:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "entitlementClazz" in dict_ and dict_["entitlementClazz"] is not None:
            instance.entitlement_clazz = str(dict_["entitlementClazz"])
        elif include_empty:
            instance.entitlement_clazz = Union[str, EntitlementClazzEnum]()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "endDate": "end_date",
            "entitlementClazz": "entitlement_clazz",
            "limit": "limit",
            "offset": "offset",
            "startDate": "start_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "endDate": False,
            "entitlementClazz": False,
            "limit": False,
            "offset": False,
            "startDate": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "entitlementClazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],  # in query
        }

    # endregion static methods
