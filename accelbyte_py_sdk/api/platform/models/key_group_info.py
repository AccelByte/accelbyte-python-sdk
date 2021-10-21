# justice-platform-service (3.34.0)

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


class KeyGroupInfo(Model):
    """Key group info (KeyGroupInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        status: (status) REQUIRED str

        booth_name: (boothName) REQUIRED str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    status: str                                                                                    # REQUIRED
    booth_name: str                                                                                # REQUIRED
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> KeyGroupInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> KeyGroupInfo:
        self.namespace = value
        return self

    def with_name(self, value: str) -> KeyGroupInfo:
        self.name = value
        return self

    def with_description(self, value: str) -> KeyGroupInfo:
        self.description = value
        return self

    def with_tags(self, value: List[str]) -> KeyGroupInfo:
        self.tags = value
        return self

    def with_status(self, value: str) -> KeyGroupInfo:
        self.status = value
        return self

    def with_booth_name(self, value: str) -> KeyGroupInfo:
        self.booth_name = value
        return self

    def with_created_at(self, value: str) -> KeyGroupInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> KeyGroupInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "booth_name") and self.booth_name:
            result["boothName"] = str(self.booth_name)
        elif include_empty:
            result["boothName"] = str()
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
        id_: str,
        namespace: str,
        name: str,
        status: str,
        booth_name: str,
        created_at: str,
        updated_at: str,
        description: Optional[str] = None,
        tags: Optional[List[str]] = None,
    ) -> KeyGroupInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.name = name
        instance.status = status
        instance.booth_name = booth_name
        instance.created_at = created_at
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> KeyGroupInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "boothName" in dict_ and dict_["boothName"] is not None:
            instance.booth_name = str(dict_["boothName"])
        elif include_empty:
            instance.booth_name = str()
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
            "id": "id_",
            "namespace": "namespace",
            "name": "name",
            "description": "description",
            "tags": "tags",
            "status": "status",
            "boothName": "booth_name",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
