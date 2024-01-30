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


class ApimodelsInventoryConfigurationReq(Model):
    """Apimodels inventory configuration req (apimodels.InventoryConfigurationReq)

    Properties:
        code: (code) REQUIRED str

        initial_max_slots: (initialMaxSlots) REQUIRED int

        max_instances_per_user: (maxInstancesPerUser) REQUIRED int

        max_upgrade_slots: (maxUpgradeSlots) REQUIRED int

        description: (description) OPTIONAL str

        name: (name) OPTIONAL str
    """

    # region fields

    code: str  # REQUIRED
    initial_max_slots: int  # REQUIRED
    max_instances_per_user: int  # REQUIRED
    max_upgrade_slots: int  # REQUIRED
    description: str  # OPTIONAL
    name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ApimodelsInventoryConfigurationReq:
        self.code = value
        return self

    def with_initial_max_slots(self, value: int) -> ApimodelsInventoryConfigurationReq:
        self.initial_max_slots = value
        return self

    def with_max_instances_per_user(
        self, value: int
    ) -> ApimodelsInventoryConfigurationReq:
        self.max_instances_per_user = value
        return self

    def with_max_upgrade_slots(self, value: int) -> ApimodelsInventoryConfigurationReq:
        self.max_upgrade_slots = value
        return self

    def with_description(self, value: str) -> ApimodelsInventoryConfigurationReq:
        self.description = value
        return self

    def with_name(self, value: str) -> ApimodelsInventoryConfigurationReq:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "initial_max_slots"):
            result["initialMaxSlots"] = int(self.initial_max_slots)
        elif include_empty:
            result["initialMaxSlots"] = 0
        if hasattr(self, "max_instances_per_user"):
            result["maxInstancesPerUser"] = int(self.max_instances_per_user)
        elif include_empty:
            result["maxInstancesPerUser"] = 0
        if hasattr(self, "max_upgrade_slots"):
            result["maxUpgradeSlots"] = int(self.max_upgrade_slots)
        elif include_empty:
            result["maxUpgradeSlots"] = 0
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        code: str,
        initial_max_slots: int,
        max_instances_per_user: int,
        max_upgrade_slots: int,
        description: Optional[str] = None,
        name: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsInventoryConfigurationReq:
        instance = cls()
        instance.code = code
        instance.initial_max_slots = initial_max_slots
        instance.max_instances_per_user = max_instances_per_user
        instance.max_upgrade_slots = max_upgrade_slots
        if description is not None:
            instance.description = description
        if name is not None:
            instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsInventoryConfigurationReq:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "initialMaxSlots" in dict_ and dict_["initialMaxSlots"] is not None:
            instance.initial_max_slots = int(dict_["initialMaxSlots"])
        elif include_empty:
            instance.initial_max_slots = 0
        if "maxInstancesPerUser" in dict_ and dict_["maxInstancesPerUser"] is not None:
            instance.max_instances_per_user = int(dict_["maxInstancesPerUser"])
        elif include_empty:
            instance.max_instances_per_user = 0
        if "maxUpgradeSlots" in dict_ and dict_["maxUpgradeSlots"] is not None:
            instance.max_upgrade_slots = int(dict_["maxUpgradeSlots"])
        elif include_empty:
            instance.max_upgrade_slots = 0
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsInventoryConfigurationReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsInventoryConfigurationReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsInventoryConfigurationReq,
        List[ApimodelsInventoryConfigurationReq],
        Dict[Any, ApimodelsInventoryConfigurationReq],
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
            "code": "code",
            "initialMaxSlots": "initial_max_slots",
            "maxInstancesPerUser": "max_instances_per_user",
            "maxUpgradeSlots": "max_upgrade_slots",
            "description": "description",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "initialMaxSlots": True,
            "maxInstancesPerUser": True,
            "maxUpgradeSlots": True,
            "description": False,
            "name": False,
        }

    # endregion static methods
