# Auto-generated at 2021-09-21T14:10:39.849205+08:00
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

from ..models.models_rule import ModelsRule


class ModelsGetGroupConfigurationResponseV1(Model):
    """Models get group configuration response V1

    Properties:
        configuration_code: (configurationCode) REQUIRED str

        description: (description) REQUIRED str

        global_rules: (globalRules) REQUIRED List[ModelsRule]

        group_admin_role_id: (groupAdminRoleId) REQUIRED str

        group_max_member: (groupMaxMember) REQUIRED int

        group_member_role_id: (groupMemberRoleId) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str
    """

    # region fields

    configuration_code: str                                                                        # REQUIRED
    description: str                                                                               # REQUIRED
    global_rules: List[ModelsRule]                                                                 # REQUIRED
    group_admin_role_id: str                                                                       # REQUIRED
    group_max_member: int                                                                          # REQUIRED
    group_member_role_id: str                                                                      # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_configuration_code(self, value: str) -> ModelsGetGroupConfigurationResponseV1:
        self.configuration_code = value
        return self

    def with_description(self, value: str) -> ModelsGetGroupConfigurationResponseV1:
        self.description = value
        return self

    def with_global_rules(self, value: List[ModelsRule]) -> ModelsGetGroupConfigurationResponseV1:
        self.global_rules = value
        return self

    def with_group_admin_role_id(self, value: str) -> ModelsGetGroupConfigurationResponseV1:
        self.group_admin_role_id = value
        return self

    def with_group_max_member(self, value: int) -> ModelsGetGroupConfigurationResponseV1:
        self.group_max_member = value
        return self

    def with_group_member_role_id(self, value: str) -> ModelsGetGroupConfigurationResponseV1:
        self.group_member_role_id = value
        return self

    def with_name(self, value: str) -> ModelsGetGroupConfigurationResponseV1:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsGetGroupConfigurationResponseV1:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "configuration_code") and self.configuration_code:
            result["configurationCode"] = str(self.configuration_code)
        elif include_empty:
            result["configurationCode"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "global_rules") and self.global_rules:
            result["globalRules"] = [i0.to_dict(include_empty=include_empty) for i0 in self.global_rules]
        elif include_empty:
            result["globalRules"] = []
        if hasattr(self, "group_admin_role_id") and self.group_admin_role_id:
            result["groupAdminRoleId"] = str(self.group_admin_role_id)
        elif include_empty:
            result["groupAdminRoleId"] = str()
        if hasattr(self, "group_max_member") and self.group_max_member:
            result["groupMaxMember"] = int(self.group_max_member)
        elif include_empty:
            result["groupMaxMember"] = int()
        if hasattr(self, "group_member_role_id") and self.group_member_role_id:
            result["groupMemberRoleId"] = str(self.group_member_role_id)
        elif include_empty:
            result["groupMemberRoleId"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        configuration_code: str,
        description: str,
        global_rules: List[ModelsRule],
        group_admin_role_id: str,
        group_max_member: int,
        group_member_role_id: str,
        name: str,
        namespace: str,
    ) -> ModelsGetGroupConfigurationResponseV1:
        instance = cls()
        instance.configuration_code = configuration_code
        instance.description = description
        instance.global_rules = global_rules
        instance.group_admin_role_id = group_admin_role_id
        instance.group_max_member = group_max_member
        instance.group_member_role_id = group_member_role_id
        instance.name = name
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGetGroupConfigurationResponseV1:
        instance = cls()
        if "configurationCode" in dict_ and dict_["configurationCode"] is not None:
            instance.configuration_code = str(dict_["configurationCode"])
        elif include_empty:
            instance.configuration_code = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "globalRules" in dict_ and dict_["globalRules"] is not None:
            instance.global_rules = [ModelsRule.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["globalRules"]]
        elif include_empty:
            instance.global_rules = []
        if "groupAdminRoleId" in dict_ and dict_["groupAdminRoleId"] is not None:
            instance.group_admin_role_id = str(dict_["groupAdminRoleId"])
        elif include_empty:
            instance.group_admin_role_id = str()
        if "groupMaxMember" in dict_ and dict_["groupMaxMember"] is not None:
            instance.group_max_member = int(dict_["groupMaxMember"])
        elif include_empty:
            instance.group_max_member = int()
        if "groupMemberRoleId" in dict_ and dict_["groupMemberRoleId"] is not None:
            instance.group_member_role_id = str(dict_["groupMemberRoleId"])
        elif include_empty:
            instance.group_member_role_id = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "configurationCode": "configuration_code",
            "description": "description",
            "globalRules": "global_rules",
            "groupAdminRoleId": "group_admin_role_id",
            "groupMaxMember": "group_max_member",
            "groupMemberRoleId": "group_member_role_id",
            "name": "name",
            "namespace": "namespace",
        }

    # endregion static methods
