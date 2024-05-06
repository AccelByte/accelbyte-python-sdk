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

from ...models import DLCConfigRewardShortInfo
from ...models import ErrorEntity


class DlcTypeEnum(StrEnum):
    EPICGAMES = "EPICGAMES"
    OCULUS = "OCULUS"
    PSN = "PSN"
    STEAM = "STEAM"
    XBOX = "XBOX"


class GeDLCDurableRewardShortMap(Operation):
    """Get dlc durable reward simple map (geDLCDurableRewardShortMap)

    Get dlc reward simple map, only return the sku of durable item reward.

    Properties:
        url: /platform/public/namespaces/{namespace}/dlc/rewards/durable/map

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        dlc_type: (dlcType) REQUIRED Union[str, DlcTypeEnum] in query

    Responses:
        200: OK - DLCConfigRewardShortInfo (successful operation)

        404: Not Found - ErrorEntity (39442: DLC item config cannot be found in namespace [{namespace}] | 39441: Platform dlc config cannot be found in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/dlc/rewards/durable/map"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = []
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    dlc_type: Union[str, DlcTypeEnum]  # REQUIRED in [query]

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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "dlc_type"):
            result["dlcType"] = self.dlc_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GeDLCDurableRewardShortMap:
        self.namespace = value
        return self

    def with_dlc_type(
        self, value: Union[str, DlcTypeEnum]
    ) -> GeDLCDurableRewardShortMap:
        self.dlc_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "dlc_type") and self.dlc_type:
            result["dlcType"] = str(self.dlc_type)
        elif include_empty:
            result["dlcType"] = Union[str, DlcTypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, DLCConfigRewardShortInfo], Union[None, ErrorEntity, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - DLCConfigRewardShortInfo (successful operation)

        404: Not Found - ErrorEntity (39442: DLC item config cannot be found in namespace [{namespace}] | 39441: Platform dlc config cannot be found in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

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
            return DLCConfigRewardShortInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, namespace: str, dlc_type: Union[str, DlcTypeEnum], **kwargs
    ) -> GeDLCDurableRewardShortMap:
        instance = cls()
        instance.namespace = namespace
        instance.dlc_type = dlc_type
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GeDLCDurableRewardShortMap:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "dlcType" in dict_ and dict_["dlcType"] is not None:
            instance.dlc_type = str(dict_["dlcType"])
        elif include_empty:
            instance.dlc_type = Union[str, DlcTypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "dlcType": "dlc_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "dlcType": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "dlcType": ["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"],  # in query
        }

    # endregion static methods
