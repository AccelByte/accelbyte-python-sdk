# Auto-generated at 2021-10-14T22:17:08.959236+08:00
# from: Justice DsmController Service (2.4.0)

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


class ModelsImageRecord(Model):
    """Models image record (models.ImageRecord)

    Properties:
        created_at: (createdAt) REQUIRED str

        image: (image) REQUIRED str

        namespace: (namespace) REQUIRED str

        persistent: (persistent) REQUIRED bool

        updated_at: (updatedAt) REQUIRED str

        version: (version) REQUIRED str
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    image: str                                                                                     # REQUIRED
    namespace: str                                                                                 # REQUIRED
    persistent: bool                                                                               # REQUIRED
    updated_at: str                                                                                # REQUIRED
    version: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsImageRecord:
        self.created_at = value
        return self

    def with_image(self, value: str) -> ModelsImageRecord:
        self.image = value
        return self

    def with_namespace(self, value: str) -> ModelsImageRecord:
        self.namespace = value
        return self

    def with_persistent(self, value: bool) -> ModelsImageRecord:
        self.persistent = value
        return self

    def with_updated_at(self, value: str) -> ModelsImageRecord:
        self.updated_at = value
        return self

    def with_version(self, value: str) -> ModelsImageRecord:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "image") and self.image:
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "persistent") and self.persistent:
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = bool()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "version") and self.version:
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        image: str,
        namespace: str,
        persistent: bool,
        updated_at: str,
        version: str,
    ) -> ModelsImageRecord:
        instance = cls()
        instance.created_at = created_at
        instance.image = image
        instance.namespace = namespace
        instance.persistent = persistent
        instance.updated_at = updated_at
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsImageRecord:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = bool()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "createdAt": "created_at",
            "image": "image",
            "namespace": "namespace",
            "persistent": "persistent",
            "updatedAt": "updated_at",
            "version": "version",
        }

    # endregion static methods
