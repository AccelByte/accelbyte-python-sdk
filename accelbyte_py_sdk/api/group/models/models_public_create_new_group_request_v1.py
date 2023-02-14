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

from ..models.models_group_rule import ModelsGroupRule


class ModelsPublicCreateNewGroupRequestV1(Model):
    """Models public create new group request V1 (models.PublicCreateNewGroupRequestV1)

    Properties:
        configuration_code: (configurationCode) REQUIRED str

        custom_attributes: (customAttributes) REQUIRED Dict[str, Any]

        group_description: (groupDescription) REQUIRED str

        group_icon: (groupIcon) REQUIRED str

        group_max_member: (groupMaxMember) REQUIRED int

        group_name: (groupName) REQUIRED str

        group_region: (groupRegion) REQUIRED str

        group_rules: (groupRules) REQUIRED ModelsGroupRule

        group_type: (groupType) REQUIRED str
    """

    # region fields

    configuration_code: str  # REQUIRED
    custom_attributes: Dict[str, Any]  # REQUIRED
    group_description: str  # REQUIRED
    group_icon: str  # REQUIRED
    group_max_member: int  # REQUIRED
    group_name: str  # REQUIRED
    group_region: str  # REQUIRED
    group_rules: ModelsGroupRule  # REQUIRED
    group_type: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_configuration_code(
        self, value: str
    ) -> ModelsPublicCreateNewGroupRequestV1:
        self.configuration_code = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsPublicCreateNewGroupRequestV1:
        self.custom_attributes = value
        return self

    def with_group_description(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_description = value
        return self

    def with_group_icon(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_icon = value
        return self

    def with_group_max_member(self, value: int) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_max_member = value
        return self

    def with_group_name(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_name = value
        return self

    def with_group_region(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_region = value
        return self

    def with_group_rules(
        self, value: ModelsGroupRule
    ) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_rules = value
        return self

    def with_group_type(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "configuration_code"):
            result["configurationCode"] = str(self.configuration_code)
        elif include_empty:
            result["configurationCode"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "group_description"):
            result["groupDescription"] = str(self.group_description)
        elif include_empty:
            result["groupDescription"] = ""
        if hasattr(self, "group_icon"):
            result["groupIcon"] = str(self.group_icon)
        elif include_empty:
            result["groupIcon"] = ""
        if hasattr(self, "group_max_member"):
            result["groupMaxMember"] = int(self.group_max_member)
        elif include_empty:
            result["groupMaxMember"] = 0
        if hasattr(self, "group_name"):
            result["groupName"] = str(self.group_name)
        elif include_empty:
            result["groupName"] = ""
        if hasattr(self, "group_region"):
            result["groupRegion"] = str(self.group_region)
        elif include_empty:
            result["groupRegion"] = ""
        if hasattr(self, "group_rules"):
            result["groupRules"] = self.group_rules.to_dict(include_empty=include_empty)
        elif include_empty:
            result["groupRules"] = ModelsGroupRule()
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
        configuration_code: str,
        custom_attributes: Dict[str, Any],
        group_description: str,
        group_icon: str,
        group_max_member: int,
        group_name: str,
        group_region: str,
        group_rules: ModelsGroupRule,
        group_type: str,
    ) -> ModelsPublicCreateNewGroupRequestV1:
        instance = cls()
        instance.configuration_code = configuration_code
        instance.custom_attributes = custom_attributes
        instance.group_description = group_description
        instance.group_icon = group_icon
        instance.group_max_member = group_max_member
        instance.group_name = group_name
        instance.group_region = group_region
        instance.group_rules = group_rules
        instance.group_type = group_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPublicCreateNewGroupRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "configurationCode" in dict_ and dict_["configurationCode"] is not None:
            instance.configuration_code = str(dict_["configurationCode"])
        elif include_empty:
            instance.configuration_code = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "groupDescription" in dict_ and dict_["groupDescription"] is not None:
            instance.group_description = str(dict_["groupDescription"])
        elif include_empty:
            instance.group_description = ""
        if "groupIcon" in dict_ and dict_["groupIcon"] is not None:
            instance.group_icon = str(dict_["groupIcon"])
        elif include_empty:
            instance.group_icon = ""
        if "groupMaxMember" in dict_ and dict_["groupMaxMember"] is not None:
            instance.group_max_member = int(dict_["groupMaxMember"])
        elif include_empty:
            instance.group_max_member = 0
        if "groupName" in dict_ and dict_["groupName"] is not None:
            instance.group_name = str(dict_["groupName"])
        elif include_empty:
            instance.group_name = ""
        if "groupRegion" in dict_ and dict_["groupRegion"] is not None:
            instance.group_region = str(dict_["groupRegion"])
        elif include_empty:
            instance.group_region = ""
        if "groupRules" in dict_ and dict_["groupRules"] is not None:
            instance.group_rules = ModelsGroupRule.create_from_dict(
                dict_["groupRules"], include_empty=include_empty
            )
        elif include_empty:
            instance.group_rules = ModelsGroupRule()
        if "groupType" in dict_ and dict_["groupType"] is not None:
            instance.group_type = str(dict_["groupType"])
        elif include_empty:
            instance.group_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPublicCreateNewGroupRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPublicCreateNewGroupRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPublicCreateNewGroupRequestV1,
        List[ModelsPublicCreateNewGroupRequestV1],
        Dict[Any, ModelsPublicCreateNewGroupRequestV1],
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
            "configurationCode": "configuration_code",
            "customAttributes": "custom_attributes",
            "groupDescription": "group_description",
            "groupIcon": "group_icon",
            "groupMaxMember": "group_max_member",
            "groupName": "group_name",
            "groupRegion": "group_region",
            "groupRules": "group_rules",
            "groupType": "group_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "configurationCode": True,
            "customAttributes": True,
            "groupDescription": True,
            "groupIcon": True,
            "groupMaxMember": True,
            "groupName": True,
            "groupRegion": True,
            "groupRules": True,
            "groupType": True,
        }

    # endregion static methods
