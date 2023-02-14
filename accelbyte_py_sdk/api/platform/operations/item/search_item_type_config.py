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

# AccelByte Cloud Platform Service (4.23.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ErrorEntity
from ...models import ItemTypeConfigInfo


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class SearchItemTypeConfig(Operation):
    """Get an item type config (searchItemTypeConfig)

    This API is used to get an item type config.

    Other detail info:

      * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
      *  Returns : item type config data

    Required Permission(s):
        - ADMIN:ITEM:CONFIG [READ]

    Properties:
        url: /platform/admin/items/configs/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        clazz: (clazz) OPTIONAL str in query

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum] in query

    Responses:
        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)
    """

    # region fields

    _url: str = "/platform/admin/items/configs/search"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    clazz: str  # OPTIONAL in [query]
    item_type: Union[str, ItemTypeEnum]  # REQUIRED in [query]

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
        if hasattr(self, "clazz"):
            result["clazz"] = self.clazz
        if hasattr(self, "item_type"):
            result["itemType"] = self.item_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_clazz(self, value: str) -> SearchItemTypeConfig:
        self.clazz = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> SearchItemTypeConfig:
        self.item_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "clazz") and self.clazz:
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = ""
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, ItemTypeConfigInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - ItemTypeConfigInfo (successful operation)

        404: Not Found - ErrorEntity (30541: Item type config [{id}] doesn't exist)

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
            return ItemTypeConfigInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_type: Union[str, ItemTypeEnum],
        clazz: Optional[str] = None,
    ) -> SearchItemTypeConfig:
        instance = cls()
        instance.item_type = item_type
        if clazz is not None:
            instance.clazz = clazz
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SearchItemTypeConfig:
        instance = cls()
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "clazz": "clazz",
            "itemType": "item_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clazz": False,
            "itemType": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],  # in query
        }

    # endregion static methods
