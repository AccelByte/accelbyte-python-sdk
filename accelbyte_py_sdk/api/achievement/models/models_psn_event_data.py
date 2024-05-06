# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Achievement Service

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


class ModelsPSNEventData(Model):
    """Models PSN event data (models.PSNEventData)

    Properties:
        event_name: (eventName) REQUIRED str

        properties: (properties) REQUIRED Dict[str, Any]
    """

    # region fields

    event_name: str  # REQUIRED
    properties: Dict[str, Any]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_event_name(self, value: str) -> ModelsPSNEventData:
        self.event_name = value
        return self

    def with_properties(self, value: Dict[str, Any]) -> ModelsPSNEventData:
        self.properties = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = ""
        if hasattr(self, "properties"):
            result["properties"] = {str(k0): v0 for k0, v0 in self.properties.items()}
        elif include_empty:
            result["properties"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, event_name: str, properties: Dict[str, Any], **kwargs
    ) -> ModelsPSNEventData:
        instance = cls()
        instance.event_name = event_name
        instance.properties = properties
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPSNEventData:
        instance = cls()
        if not dict_:
            return instance
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = ""
        if "properties" in dict_ and dict_["properties"] is not None:
            instance.properties = {
                str(k0): v0 for k0, v0 in dict_["properties"].items()
            }
        elif include_empty:
            instance.properties = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPSNEventData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPSNEventData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPSNEventData, List[ModelsPSNEventData], Dict[Any, ModelsPSNEventData]
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
            "eventName": "event_name",
            "properties": "properties",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "eventName": True,
            "properties": True,
        }

    # endregion static methods
