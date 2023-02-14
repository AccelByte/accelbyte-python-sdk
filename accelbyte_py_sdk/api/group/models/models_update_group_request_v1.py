# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Group Service (2.15.0)

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

from ..models.models_update_group_request_v1_custom_attributes import (
    ModelsUpdateGroupRequestV1CustomAttributes,
)


class ModelsUpdateGroupRequestV1(Model):
    """Models update group request V1 (models.UpdateGroupRequestV1)

    Properties:
        custom_attributes: (customAttributes) REQUIRED ModelsUpdateGroupRequestV1CustomAttributes

        group_description: (groupDescription) REQUIRED str

        group_icon: (groupIcon) REQUIRED str

        group_name: (groupName) REQUIRED str

        group_region: (groupRegion) REQUIRED str

        group_type: (groupType) REQUIRED str
    """

    # region fields

    custom_attributes: ModelsUpdateGroupRequestV1CustomAttributes  # REQUIRED
    group_description: str  # REQUIRED
    group_icon: str  # REQUIRED
    group_name: str  # REQUIRED
    group_region: str  # REQUIRED
    group_type: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_custom_attributes(
        self, value: ModelsUpdateGroupRequestV1CustomAttributes
    ) -> ModelsUpdateGroupRequestV1:
        self.custom_attributes = value
        return self

    def with_group_description(self, value: str) -> ModelsUpdateGroupRequestV1:
        self.group_description = value
        return self

    def with_group_icon(self, value: str) -> ModelsUpdateGroupRequestV1:
        self.group_icon = value
        return self

    def with_group_name(self, value: str) -> ModelsUpdateGroupRequestV1:
        self.group_name = value
        return self

    def with_group_region(self, value: str) -> ModelsUpdateGroupRequestV1:
        self.group_region = value
        return self

    def with_group_type(self, value: str) -> ModelsUpdateGroupRequestV1:
        self.group_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = self.custom_attributes.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["customAttributes"] = ModelsUpdateGroupRequestV1CustomAttributes()
        if hasattr(self, "group_description"):
            result["groupDescription"] = str(self.group_description)
        elif include_empty:
            result["groupDescription"] = ""
        if hasattr(self, "group_icon"):
            result["groupIcon"] = str(self.group_icon)
        elif include_empty:
            result["groupIcon"] = ""
        if hasattr(self, "group_name"):
            result["groupName"] = str(self.group_name)
        elif include_empty:
            result["groupName"] = ""
        if hasattr(self, "group_region"):
            result["groupRegion"] = str(self.group_region)
        elif include_empty:
            result["groupRegion"] = ""
        if hasattr(self, "group_type"):
            result["groupType"] = str(self.group_type)
        elif include_empty:
            result["groupType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attributes: ModelsUpdateGroupRequestV1CustomAttributes,
        group_description: str,
        group_icon: str,
        group_name: str,
        group_region: str,
        group_type: str,
    ) -> ModelsUpdateGroupRequestV1:
        instance = cls()
        instance.custom_attributes = custom_attributes
        instance.group_description = group_description
        instance.group_icon = group_icon
        instance.group_name = group_name
        instance.group_region = group_region
        instance.group_type = group_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateGroupRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = (
                ModelsUpdateGroupRequestV1CustomAttributes.create_from_dict(
                    dict_["customAttributes"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.custom_attributes = ModelsUpdateGroupRequestV1CustomAttributes()
        if "groupDescription" in dict_ and dict_["groupDescription"] is not None:
            instance.group_description = str(dict_["groupDescription"])
        elif include_empty:
            instance.group_description = ""
        if "groupIcon" in dict_ and dict_["groupIcon"] is not None:
            instance.group_icon = str(dict_["groupIcon"])
        elif include_empty:
            instance.group_icon = ""
        if "groupName" in dict_ and dict_["groupName"] is not None:
            instance.group_name = str(dict_["groupName"])
        elif include_empty:
            instance.group_name = ""
        if "groupRegion" in dict_ and dict_["groupRegion"] is not None:
            instance.group_region = str(dict_["groupRegion"])
        elif include_empty:
            instance.group_region = ""
        if "groupType" in dict_ and dict_["groupType"] is not None:
            instance.group_type = str(dict_["groupType"])
        elif include_empty:
            instance.group_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateGroupRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateGroupRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateGroupRequestV1,
        List[ModelsUpdateGroupRequestV1],
        Dict[Any, ModelsUpdateGroupRequestV1],
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
            "customAttributes": "custom_attributes",
            "groupDescription": "group_description",
            "groupIcon": "group_icon",
            "groupName": "group_name",
            "groupRegion": "group_region",
            "groupType": "group_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "customAttributes": True,
            "groupDescription": True,
            "groupIcon": True,
            "groupName": True,
            "groupRegion": True,
            "groupType": True,
        }

    # endregion static methods
