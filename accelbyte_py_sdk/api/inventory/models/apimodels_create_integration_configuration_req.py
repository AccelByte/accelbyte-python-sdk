# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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

from ....core import Model


class ApimodelsCreateIntegrationConfigurationReq(Model):
    """Apimodels create integration configuration req (apimodels.CreateIntegrationConfigurationReq)

    Properties:
        service_name: (serviceName) REQUIRED str

        target_inventory_code: (targetInventoryCode) REQUIRED str

        map_item_type: (mapItemType) OPTIONAL List[str]
    """

    # region fields

    service_name: str  # REQUIRED
    target_inventory_code: str  # REQUIRED
    map_item_type: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_service_name(
        self, value: str
    ) -> ApimodelsCreateIntegrationConfigurationReq:
        self.service_name = value
        return self

    def with_target_inventory_code(
        self, value: str
    ) -> ApimodelsCreateIntegrationConfigurationReq:
        self.target_inventory_code = value
        return self

    def with_map_item_type(
        self, value: List[str]
    ) -> ApimodelsCreateIntegrationConfigurationReq:
        self.map_item_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "service_name"):
            result["serviceName"] = str(self.service_name)
        elif include_empty:
            result["serviceName"] = ""
        if hasattr(self, "target_inventory_code"):
            result["targetInventoryCode"] = str(self.target_inventory_code)
        elif include_empty:
            result["targetInventoryCode"] = ""
        if hasattr(self, "map_item_type"):
            result["mapItemType"] = [str(i0) for i0 in self.map_item_type]
        elif include_empty:
            result["mapItemType"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        service_name: str,
        target_inventory_code: str,
        map_item_type: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelsCreateIntegrationConfigurationReq:
        instance = cls()
        instance.service_name = service_name
        instance.target_inventory_code = target_inventory_code
        if map_item_type is not None:
            instance.map_item_type = map_item_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsCreateIntegrationConfigurationReq:
        instance = cls()
        if not dict_:
            return instance
        if "serviceName" in dict_ and dict_["serviceName"] is not None:
            instance.service_name = str(dict_["serviceName"])
        elif include_empty:
            instance.service_name = ""
        if "targetInventoryCode" in dict_ and dict_["targetInventoryCode"] is not None:
            instance.target_inventory_code = str(dict_["targetInventoryCode"])
        elif include_empty:
            instance.target_inventory_code = ""
        if "mapItemType" in dict_ and dict_["mapItemType"] is not None:
            instance.map_item_type = [str(i0) for i0 in dict_["mapItemType"]]
        elif include_empty:
            instance.map_item_type = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsCreateIntegrationConfigurationReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsCreateIntegrationConfigurationReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsCreateIntegrationConfigurationReq,
        List[ApimodelsCreateIntegrationConfigurationReq],
        Dict[Any, ApimodelsCreateIntegrationConfigurationReq],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "serviceName": "service_name",
            "targetInventoryCode": "target_inventory_code",
            "mapItemType": "map_item_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "serviceName": True,
            "targetInventoryCode": True,
            "mapItemType": False,
        }

    # endregion static methods
