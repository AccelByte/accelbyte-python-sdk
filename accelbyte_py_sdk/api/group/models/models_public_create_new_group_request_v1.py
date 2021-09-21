# Auto-generated at 2021-09-21T14:10:39.865345+08:00
# from: Justice Group Service (2.4.0)

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

from ....core import Model

from ..models.models_group_rule import ModelsGroupRule


class ModelsPublicCreateNewGroupRequestV1(Model):
    """Models public create new group request V1

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

    configuration_code: str                                                                        # REQUIRED
    custom_attributes: Dict[str, Any]                                                              # REQUIRED
    group_description: str                                                                         # REQUIRED
    group_icon: str                                                                                # REQUIRED
    group_max_member: int                                                                          # REQUIRED
    group_name: str                                                                                # REQUIRED
    group_region: str                                                                              # REQUIRED
    group_rules: ModelsGroupRule                                                                   # REQUIRED
    group_type: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_configuration_code(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.configuration_code = value
        return self

    def with_custom_attributes(self, value: Dict[str, Any]) -> ModelsPublicCreateNewGroupRequestV1:
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

    def with_group_rules(self, value: ModelsGroupRule) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_rules = value
        return self

    def with_group_type(self, value: str) -> ModelsPublicCreateNewGroupRequestV1:
        self.group_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "configuration_code") and self.configuration_code:
            result["configurationCode"] = str(self.configuration_code)
        elif include_empty:
            result["configurationCode"] = str()
        if hasattr(self, "custom_attributes") and self.custom_attributes:
            result["customAttributes"] = {str(k0): v0 for k0, v0 in self.custom_attributes.items()}
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "group_description") and self.group_description:
            result["groupDescription"] = str(self.group_description)
        elif include_empty:
            result["groupDescription"] = str()
        if hasattr(self, "group_icon") and self.group_icon:
            result["groupIcon"] = str(self.group_icon)
        elif include_empty:
            result["groupIcon"] = str()
        if hasattr(self, "group_max_member") and self.group_max_member:
            result["groupMaxMember"] = int(self.group_max_member)
        elif include_empty:
            result["groupMaxMember"] = int()
        if hasattr(self, "group_name") and self.group_name:
            result["groupName"] = str(self.group_name)
        elif include_empty:
            result["groupName"] = str()
        if hasattr(self, "group_region") and self.group_region:
            result["groupRegion"] = str(self.group_region)
        elif include_empty:
            result["groupRegion"] = str()
        if hasattr(self, "group_rules") and self.group_rules:
            result["groupRules"] = self.group_rules.to_dict(include_empty=include_empty)
        elif include_empty:
            result["groupRules"] = ModelsGroupRule()
        if hasattr(self, "group_type") and self.group_type:
            result["groupType"] = str(self.group_type)
        elif include_empty:
            result["groupType"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPublicCreateNewGroupRequestV1:
        instance = cls()
        if "configurationCode" in dict_ and dict_["configurationCode"] is not None:
            instance.configuration_code = str(dict_["configurationCode"])
        elif include_empty:
            instance.configuration_code = str()
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {str(k0): v0 for k0, v0 in dict_["customAttributes"].items()}
        elif include_empty:
            instance.custom_attributes = {}
        if "groupDescription" in dict_ and dict_["groupDescription"] is not None:
            instance.group_description = str(dict_["groupDescription"])
        elif include_empty:
            instance.group_description = str()
        if "groupIcon" in dict_ and dict_["groupIcon"] is not None:
            instance.group_icon = str(dict_["groupIcon"])
        elif include_empty:
            instance.group_icon = str()
        if "groupMaxMember" in dict_ and dict_["groupMaxMember"] is not None:
            instance.group_max_member = int(dict_["groupMaxMember"])
        elif include_empty:
            instance.group_max_member = int()
        if "groupName" in dict_ and dict_["groupName"] is not None:
            instance.group_name = str(dict_["groupName"])
        elif include_empty:
            instance.group_name = str()
        if "groupRegion" in dict_ and dict_["groupRegion"] is not None:
            instance.group_region = str(dict_["groupRegion"])
        elif include_empty:
            instance.group_region = str()
        if "groupRules" in dict_ and dict_["groupRules"] is not None:
            instance.group_rules = ModelsGroupRule.create_from_dict(dict_["groupRules"], include_empty=include_empty)
        elif include_empty:
            instance.group_rules = ModelsGroupRule()
        if "groupType" in dict_ and dict_["groupType"] is not None:
            instance.group_type = str(dict_["groupType"])
        elif include_empty:
            instance.group_type = str()
        return instance

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

    # endregion static methods
