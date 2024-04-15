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


class ApimodelsIntegrationConfigurationResp(Model):
    """Apimodels integration configuration resp (apimodels.IntegrationConfigurationResp)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        item_types: (itemTypes) REQUIRED List[str]

        namespace: (namespace) REQUIRED str

        service_name: (serviceName) REQUIRED str

        status: (status) REQUIRED str

        target_inventory_code: (targetInventoryCode) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    item_types: List[str]  # REQUIRED
    namespace: str  # REQUIRED
    service_name: str  # REQUIRED
    status: str  # REQUIRED
    target_inventory_code: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsIntegrationConfigurationResp:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ApimodelsIntegrationConfigurationResp:
        self.id_ = value
        return self

    def with_item_types(
        self, value: List[str]
    ) -> ApimodelsIntegrationConfigurationResp:
        self.item_types = value
        return self

    def with_namespace(self, value: str) -> ApimodelsIntegrationConfigurationResp:
        self.namespace = value
        return self

    def with_service_name(self, value: str) -> ApimodelsIntegrationConfigurationResp:
        self.service_name = value
        return self

    def with_status(self, value: str) -> ApimodelsIntegrationConfigurationResp:
        self.status = value
        return self

    def with_target_inventory_code(
        self, value: str
    ) -> ApimodelsIntegrationConfigurationResp:
        self.target_inventory_code = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsIntegrationConfigurationResp:
        self.updated_at = value
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
        if hasattr(self, "item_types"):
            result["itemTypes"] = [str(i0) for i0 in self.item_types]
        elif include_empty:
            result["itemTypes"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "service_name"):
            result["serviceName"] = str(self.service_name)
        elif include_empty:
            result["serviceName"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "target_inventory_code"):
            result["targetInventoryCode"] = str(self.target_inventory_code)
        elif include_empty:
            result["targetInventoryCode"] = ""
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
        created_at: str,
        id_: str,
        item_types: List[str],
        namespace: str,
        service_name: str,
        status: str,
        target_inventory_code: str,
        updated_at: str,
        **kwargs,
    ) -> ApimodelsIntegrationConfigurationResp:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.item_types = item_types
        instance.namespace = namespace
        instance.service_name = service_name
        instance.status = status
        instance.target_inventory_code = target_inventory_code
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsIntegrationConfigurationResp:
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
        if "itemTypes" in dict_ and dict_["itemTypes"] is not None:
            instance.item_types = [str(i0) for i0 in dict_["itemTypes"]]
        elif include_empty:
            instance.item_types = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "serviceName" in dict_ and dict_["serviceName"] is not None:
            instance.service_name = str(dict_["serviceName"])
        elif include_empty:
            instance.service_name = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "targetInventoryCode" in dict_ and dict_["targetInventoryCode"] is not None:
            instance.target_inventory_code = str(dict_["targetInventoryCode"])
        elif include_empty:
            instance.target_inventory_code = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsIntegrationConfigurationResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsIntegrationConfigurationResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsIntegrationConfigurationResp,
        List[ApimodelsIntegrationConfigurationResp],
        Dict[Any, ApimodelsIntegrationConfigurationResp],
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
            "itemTypes": "item_types",
            "namespace": "namespace",
            "serviceName": "service_name",
            "status": "status",
            "targetInventoryCode": "target_inventory_code",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "itemTypes": True,
            "namespace": True,
            "serviceName": True,
            "status": True,
            "targetInventoryCode": True,
            "updatedAt": True,
        }

    # endregion static methods
