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


class ApimodelsInventoryResp(Model):
    """Apimodels inventory resp (apimodels.InventoryResp)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        inventory_configuration_code: (inventoryConfigurationCode) REQUIRED str

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str

        max_slots: (maxSlots) REQUIRED int

        max_upgrade_slots: (maxUpgradeSlots) REQUIRED int

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        used_count_slots: (usedCountSlots) REQUIRED int

        user_id: (userId) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    inventory_configuration_code: str  # REQUIRED
    inventory_configuration_id: str  # REQUIRED
    max_slots: int  # REQUIRED
    max_upgrade_slots: int  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    used_count_slots: int  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsInventoryResp:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ApimodelsInventoryResp:
        self.id_ = value
        return self

    def with_inventory_configuration_code(self, value: str) -> ApimodelsInventoryResp:
        self.inventory_configuration_code = value
        return self

    def with_inventory_configuration_id(self, value: str) -> ApimodelsInventoryResp:
        self.inventory_configuration_id = value
        return self

    def with_max_slots(self, value: int) -> ApimodelsInventoryResp:
        self.max_slots = value
        return self

    def with_max_upgrade_slots(self, value: int) -> ApimodelsInventoryResp:
        self.max_upgrade_slots = value
        return self

    def with_namespace(self, value: str) -> ApimodelsInventoryResp:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsInventoryResp:
        self.updated_at = value
        return self

    def with_used_count_slots(self, value: int) -> ApimodelsInventoryResp:
        self.used_count_slots = value
        return self

    def with_user_id(self, value: str) -> ApimodelsInventoryResp:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "inventory_configuration_code"):
            result["inventoryConfigurationCode"] = str(
                self.inventory_configuration_code
            )
        elif include_empty:
            result["inventoryConfigurationCode"] = ""
        if hasattr(self, "inventory_configuration_id"):
            result["inventoryConfigurationId"] = str(self.inventory_configuration_id)
        elif include_empty:
            result["inventoryConfigurationId"] = ""
        if hasattr(self, "max_slots"):
            result["maxSlots"] = int(self.max_slots)
        elif include_empty:
            result["maxSlots"] = 0
        if hasattr(self, "max_upgrade_slots"):
            result["maxUpgradeSlots"] = int(self.max_upgrade_slots)
        elif include_empty:
            result["maxUpgradeSlots"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "used_count_slots"):
            result["usedCountSlots"] = int(self.used_count_slots)
        elif include_empty:
            result["usedCountSlots"] = 0
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        inventory_configuration_code: str,
        inventory_configuration_id: str,
        max_slots: int,
        max_upgrade_slots: int,
        namespace: str,
        updated_at: str,
        used_count_slots: int,
        user_id: str,
        **kwargs,
    ) -> ApimodelsInventoryResp:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.inventory_configuration_code = inventory_configuration_code
        instance.inventory_configuration_id = inventory_configuration_id
        instance.max_slots = max_slots
        instance.max_upgrade_slots = max_upgrade_slots
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.used_count_slots = used_count_slots
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsInventoryResp:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if (
            "inventoryConfigurationCode" in dict_
            and dict_["inventoryConfigurationCode"] is not None
        ):
            instance.inventory_configuration_code = str(
                dict_["inventoryConfigurationCode"]
            )
        elif include_empty:
            instance.inventory_configuration_code = ""
        if (
            "inventoryConfigurationId" in dict_
            and dict_["inventoryConfigurationId"] is not None
        ):
            instance.inventory_configuration_id = str(dict_["inventoryConfigurationId"])
        elif include_empty:
            instance.inventory_configuration_id = ""
        if "maxSlots" in dict_ and dict_["maxSlots"] is not None:
            instance.max_slots = int(dict_["maxSlots"])
        elif include_empty:
            instance.max_slots = 0
        if "maxUpgradeSlots" in dict_ and dict_["maxUpgradeSlots"] is not None:
            instance.max_upgrade_slots = int(dict_["maxUpgradeSlots"])
        elif include_empty:
            instance.max_upgrade_slots = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "usedCountSlots" in dict_ and dict_["usedCountSlots"] is not None:
            instance.used_count_slots = int(dict_["usedCountSlots"])
        elif include_empty:
            instance.used_count_slots = 0
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsInventoryResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsInventoryResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsInventoryResp,
        List[ApimodelsInventoryResp],
        Dict[Any, ApimodelsInventoryResp],
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
            "createdAt": "created_at",
            "id": "id_",
            "inventoryConfigurationCode": "inventory_configuration_code",
            "inventoryConfigurationId": "inventory_configuration_id",
            "maxSlots": "max_slots",
            "maxUpgradeSlots": "max_upgrade_slots",
            "namespace": "namespace",
            "updatedAt": "updated_at",
            "usedCountSlots": "used_count_slots",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "inventoryConfigurationCode": True,
            "inventoryConfigurationId": True,
            "maxSlots": True,
            "maxUpgradeSlots": True,
            "namespace": True,
            "updatedAt": True,
            "usedCountSlots": True,
            "userId": True,
        }

    # endregion static methods
