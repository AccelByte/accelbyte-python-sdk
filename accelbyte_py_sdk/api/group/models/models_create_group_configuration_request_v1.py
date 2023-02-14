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

from ..models.models_rule import ModelsRule


class ModelsCreateGroupConfigurationRequestV1(Model):
    """Models create group configuration request V1 (models.CreateGroupConfigurationRequestV1)

    Properties:
        allow_multiple: (allowMultiple) REQUIRED bool

        configuration_code: (configurationCode) REQUIRED str

        description: (description) REQUIRED str

        global_rules: (globalRules) REQUIRED List[ModelsRule]

        group_admin_role_id: (groupAdminRoleId) REQUIRED str

        group_max_member: (groupMaxMember) REQUIRED int

        group_member_role_id: (groupMemberRoleId) REQUIRED str

        name: (name) REQUIRED str
    """

    # region fields

    allow_multiple: bool  # REQUIRED
    configuration_code: str  # REQUIRED
    description: str  # REQUIRED
    global_rules: List[ModelsRule]  # REQUIRED
    group_admin_role_id: str  # REQUIRED
    group_max_member: int  # REQUIRED
    group_member_role_id: str  # REQUIRED
    name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allow_multiple(
        self, value: bool
    ) -> ModelsCreateGroupConfigurationRequestV1:
        self.allow_multiple = value
        return self

    def with_configuration_code(
        self, value: str
    ) -> ModelsCreateGroupConfigurationRequestV1:
        self.configuration_code = value
        return self

    def with_description(self, value: str) -> ModelsCreateGroupConfigurationRequestV1:
        self.description = value
        return self

    def with_global_rules(
        self, value: List[ModelsRule]
    ) -> ModelsCreateGroupConfigurationRequestV1:
        self.global_rules = value
        return self

    def with_group_admin_role_id(
        self, value: str
    ) -> ModelsCreateGroupConfigurationRequestV1:
        self.group_admin_role_id = value
        return self

    def with_group_max_member(
        self, value: int
    ) -> ModelsCreateGroupConfigurationRequestV1:
        self.group_max_member = value
        return self

    def with_group_member_role_id(
        self, value: str
    ) -> ModelsCreateGroupConfigurationRequestV1:
        self.group_member_role_id = value
        return self

    def with_name(self, value: str) -> ModelsCreateGroupConfigurationRequestV1:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allow_multiple"):
            result["allowMultiple"] = bool(self.allow_multiple)
        elif include_empty:
            result["allowMultiple"] = False
        if hasattr(self, "configuration_code"):
            result["configurationCode"] = str(self.configuration_code)
        elif include_empty:
            result["configurationCode"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "global_rules"):
            result["globalRules"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.global_rules
            ]
        elif include_empty:
            result["globalRules"] = []
        if hasattr(self, "group_admin_role_id"):
            result["groupAdminRoleId"] = str(self.group_admin_role_id)
        elif include_empty:
            result["groupAdminRoleId"] = ""
        if hasattr(self, "group_max_member"):
            result["groupMaxMember"] = int(self.group_max_member)
        elif include_empty:
            result["groupMaxMember"] = 0
        if hasattr(self, "group_member_role_id"):
            result["groupMemberRoleId"] = str(self.group_member_role_id)
        elif include_empty:
            result["groupMemberRoleId"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_multiple: bool,
        configuration_code: str,
        description: str,
        global_rules: List[ModelsRule],
        group_admin_role_id: str,
        group_max_member: int,
        group_member_role_id: str,
        name: str,
    ) -> ModelsCreateGroupConfigurationRequestV1:
        instance = cls()
        instance.allow_multiple = allow_multiple
        instance.configuration_code = configuration_code
        instance.description = description
        instance.global_rules = global_rules
        instance.group_admin_role_id = group_admin_role_id
        instance.group_max_member = group_max_member
        instance.group_member_role_id = group_member_role_id
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateGroupConfigurationRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "allowMultiple" in dict_ and dict_["allowMultiple"] is not None:
            instance.allow_multiple = bool(dict_["allowMultiple"])
        elif include_empty:
            instance.allow_multiple = False
        if "configurationCode" in dict_ and dict_["configurationCode"] is not None:
            instance.configuration_code = str(dict_["configurationCode"])
        elif include_empty:
            instance.configuration_code = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "globalRules" in dict_ and dict_["globalRules"] is not None:
            instance.global_rules = [
                ModelsRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["globalRules"]
            ]
        elif include_empty:
            instance.global_rules = []
        if "groupAdminRoleId" in dict_ and dict_["groupAdminRoleId"] is not None:
            instance.group_admin_role_id = str(dict_["groupAdminRoleId"])
        elif include_empty:
            instance.group_admin_role_id = ""
        if "groupMaxMember" in dict_ and dict_["groupMaxMember"] is not None:
            instance.group_max_member = int(dict_["groupMaxMember"])
        elif include_empty:
            instance.group_max_member = 0
        if "groupMemberRoleId" in dict_ and dict_["groupMemberRoleId"] is not None:
            instance.group_member_role_id = str(dict_["groupMemberRoleId"])
        elif include_empty:
            instance.group_member_role_id = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateGroupConfigurationRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateGroupConfigurationRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateGroupConfigurationRequestV1,
        List[ModelsCreateGroupConfigurationRequestV1],
        Dict[Any, ModelsCreateGroupConfigurationRequestV1],
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
            "allowMultiple": "allow_multiple",
            "configurationCode": "configuration_code",
            "description": "description",
            "globalRules": "global_rules",
            "groupAdminRoleId": "group_admin_role_id",
            "groupMaxMember": "group_max_member",
            "groupMemberRoleId": "group_member_role_id",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowMultiple": True,
            "configurationCode": True,
            "description": True,
            "globalRules": True,
            "groupAdminRoleId": True,
            "groupMaxMember": True,
            "groupMemberRoleId": True,
            "name": True,
        }

    # endregion static methods
