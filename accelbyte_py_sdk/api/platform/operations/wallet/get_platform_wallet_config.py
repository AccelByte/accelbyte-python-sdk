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

# AccelByte Cloud Platform Service (4.18.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import PlatformWalletConfigInfo


class PlatformEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    XBOX = "Xbox"


class GetPlatformWalletConfig(Operation):
    """Get platform wallet config list (getPlatformWalletConfig)

    Get platform wallet config list.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG", action=2 (READ)
      *  Returns : wallet info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:WALLET:CONFIG [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """

    # region fields

    _url: str = (
        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config"
    )
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    platform: Union[str, PlatformEnum]  # REQUIRED in [path]

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
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "platform"):
            result["platform"] = self.platform
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetPlatformWalletConfig:
        self.namespace = value
        return self

    def with_platform(self, value: Union[str, PlatformEnum]) -> GetPlatformWalletConfig:
        self.platform = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform") and self.platform:
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, PlatformWalletConfigInfo], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - PlatformWalletConfigInfo (successful operation)

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
            return PlatformWalletConfigInfo.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        platform: Union[str, PlatformEnum],
    ) -> GetPlatformWalletConfig:
        instance = cls()
        instance.namespace = namespace
        instance.platform = platform
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetPlatformWalletConfig:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "platform": "platform",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "platform": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "platform": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Other",
                "Playstation",
                "Steam",
                "Xbox",
            ],  # in path
        }

    # endregion static methods
