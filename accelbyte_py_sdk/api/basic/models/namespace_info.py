# justice-basic-service (1.23.0)

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


class NamespaceInfo(Model):
    """Namespace info (NamespaceInfo)

    Properties:
        namespace: (namespace) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        status: (status) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    namespace: str                                                                                 # OPTIONAL
    display_name: str                                                                              # OPTIONAL
    status: str                                                                                    # OPTIONAL
    created_at: str                                                                                # OPTIONAL
    updated_at: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> NamespaceInfo:
        self.namespace = value
        return self

    def with_display_name(self, value: str) -> NamespaceInfo:
        self.display_name = value
        return self

    def with_status(self, value: str) -> NamespaceInfo:
        self.status = value
        return self

    def with_created_at(self, value: str) -> NamespaceInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> NamespaceInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "display_name") and self.display_name:
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: Optional[str] = None,
        display_name: Optional[str] = None,
        status: Optional[str] = None,
        created_at: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> NamespaceInfo:
        instance = cls()
        if namespace is not None:
            instance.namespace = namespace
        if display_name is not None:
            instance.display_name = display_name
        if status is not None:
            instance.status = status
        if created_at is not None:
            instance.created_at = created_at
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> NamespaceInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "displayName": "display_name",
            "status": "status",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
