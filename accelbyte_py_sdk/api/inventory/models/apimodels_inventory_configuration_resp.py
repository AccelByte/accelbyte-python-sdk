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
from ....core import StrEnum


class StatusEnum(StrEnum):
    INIT = "INIT"
    TIED = "TIED"


class ApimodelsInventoryConfigurationResp(Model):
    """Apimodels inventory configuration resp (apimodels.InventoryConfigurationResp)

    Properties:
        code: (code) REQUIRED str

        created_at: (createdAt) REQUIRED str

        description: (description) REQUIRED str

        id_: (id) REQUIRED str

        initial_max_slots: (initialMaxSlots) REQUIRED int

        max_instances_per_user: (maxInstancesPerUser) REQUIRED int

        max_upgrade_slots: (maxUpgradeSlots) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    code: str  # REQUIRED
    created_at: str  # REQUIRED
    description: str  # REQUIRED
    id_: str  # REQUIRED
    initial_max_slots: int  # REQUIRED
    max_instances_per_user: int  # REQUIRED
    max_upgrade_slots: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.code = value
        return self

    def with_created_at(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.created_at = value
        return self

    def with_description(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.description = value
        return self

    def with_id(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.id_ = value
        return self

    def with_initial_max_slots(self, value: int) -> ApimodelsInventoryConfigurationResp:
        self.initial_max_slots = value
        return self

    def with_max_instances_per_user(
        self, value: int
    ) -> ApimodelsInventoryConfigurationResp:
        self.max_instances_per_user = value
        return self

    def with_max_upgrade_slots(self, value: int) -> ApimodelsInventoryConfigurationResp:
        self.max_upgrade_slots = value
        return self

    def with_name(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.namespace = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ApimodelsInventoryConfigurationResp:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsInventoryConfigurationResp:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
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
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        created_at: str,
        description: str,
        id_: str,
        initial_max_slots: int,
        max_instances_per_user: int,
        max_upgrade_slots: int,
        name: str,
        namespace: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        **kwargs,
    ) -> ApimodelsInventoryConfigurationResp:
        instance = cls()
        instance.code = code
        instance.created_at = created_at
        instance.description = description
        instance.id_ = id_
        instance.initial_max_slots = initial_max_slots
        instance.max_instances_per_user = max_instances_per_user
        instance.max_upgrade_slots = max_upgrade_slots
        instance.name = name
        instance.namespace = namespace
        instance.status = status
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsInventoryConfigurationResp:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
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
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsInventoryConfigurationResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsInventoryConfigurationResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsInventoryConfigurationResp,
        List[ApimodelsInventoryConfigurationResp],
        Dict[Any, ApimodelsInventoryConfigurationResp],
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
            "createdAt": "created_at",
            "description": "description",
            "id": "id_",
            "initialMaxSlots": "initial_max_slots",
            "maxInstancesPerUser": "max_instances_per_user",
            "maxUpgradeSlots": "max_upgrade_slots",
            "name": "name",
            "namespace": "namespace",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "createdAt": True,
            "description": True,
            "id": True,
            "initialMaxSlots": True,
            "maxInstancesPerUser": True,
            "maxUpgradeSlots": True,
            "name": True,
            "namespace": True,
            "status": True,
            "updatedAt": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["INIT", "TIED"],
        }

    # endregion static methods
