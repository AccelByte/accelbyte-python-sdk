# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Basic Service

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
    ACTIVE = "ACTIVE"
    DELETED = "DELETED"
    INACTIVE = "INACTIVE"


class NamespaceInfo(Model):
    """Namespace info (NamespaceInfo)

    Properties:
        display_name: (displayName) REQUIRED str

        namespace: (namespace) REQUIRED str

        client_id: (clientId) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        parent_namespace: (parentNamespace) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    display_name: str  # REQUIRED
    namespace: str  # REQUIRED
    client_id: str  # OPTIONAL
    created_at: str  # OPTIONAL
    parent_namespace: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_display_name(self, value: str) -> NamespaceInfo:
        self.display_name = value
        return self

    def with_namespace(self, value: str) -> NamespaceInfo:
        self.namespace = value
        return self

    def with_client_id(self, value: str) -> NamespaceInfo:
        self.client_id = value
        return self

    def with_created_at(self, value: str) -> NamespaceInfo:
        self.created_at = value
        return self

    def with_parent_namespace(self, value: str) -> NamespaceInfo:
        self.parent_namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> NamespaceInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> NamespaceInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "parent_namespace"):
            result["parentNamespace"] = str(self.parent_namespace)
        elif include_empty:
            result["parentNamespace"] = ""
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
        display_name: str,
        namespace: str,
        client_id: Optional[str] = None,
        created_at: Optional[str] = None,
        parent_namespace: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> NamespaceInfo:
        instance = cls()
        instance.display_name = display_name
        instance.namespace = namespace
        if client_id is not None:
            instance.client_id = client_id
        if created_at is not None:
            instance.created_at = created_at
        if parent_namespace is not None:
            instance.parent_namespace = parent_namespace
        if status is not None:
            instance.status = status
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> NamespaceInfo:
        instance = cls()
        if not dict_:
            return instance
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "parentNamespace" in dict_ and dict_["parentNamespace"] is not None:
            instance.parent_namespace = str(dict_["parentNamespace"])
        elif include_empty:
            instance.parent_namespace = ""
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
    ) -> Dict[str, NamespaceInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[NamespaceInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[NamespaceInfo, List[NamespaceInfo], Dict[Any, NamespaceInfo]]:
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
            "displayName": "display_name",
            "namespace": "namespace",
            "clientId": "client_id",
            "createdAt": "created_at",
            "parentNamespace": "parent_namespace",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "displayName": True,
            "namespace": True,
            "clientId": False,
            "createdAt": False,
            "parentNamespace": False,
            "status": False,
            "updatedAt": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ACTIVE", "DELETED", "INACTIVE"],
        }

    # endregion static methods
