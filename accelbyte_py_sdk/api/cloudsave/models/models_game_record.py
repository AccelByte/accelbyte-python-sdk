# Auto-generated at 2021-09-27T17:12:38.259870+08:00
# from: Justice Cloudsave Service (3.38.0)

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


class ModelsGameRecord(Model):
    """Models game record

    Properties:
        created_at: (created_at) REQUIRED str

        key: (key) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updated_at) REQUIRED str

        value: (value) REQUIRED Dict[str, Any]
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    key: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    updated_at: str                                                                                # REQUIRED
    value: Dict[str, Any]                                                                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsGameRecord:
        self.created_at = value
        return self

    def with_key(self, value: str) -> ModelsGameRecord:
        self.key = value
        return self

    def with_namespace(self, value: str) -> ModelsGameRecord:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ModelsGameRecord:
        self.updated_at = value
        return self

    def with_value(self, value: Dict[str, Any]) -> ModelsGameRecord:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "created_at") and self.created_at:
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = str()
        if hasattr(self, "key") and self.key:
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = str()
        if hasattr(self, "value") and self.value:
            result["value"] = {str(k0): v0 for k0, v0 in self.value.items()}
        elif include_empty:
            result["value"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        key: str,
        namespace: str,
        updated_at: str,
        value: Dict[str, Any],
    ) -> ModelsGameRecord:
        instance = cls()
        instance.created_at = created_at
        instance.key = key
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.value = value
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGameRecord:
        instance = cls()
        if not dict_:
            return instance
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = str()
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = str()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = {str(k0): v0 for k0, v0 in dict_["value"].items()}
        elif include_empty:
            instance.value = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "created_at": "created_at",
            "key": "key",
            "namespace": "namespace",
            "updated_at": "updated_at",
            "value": "value",
        }

    # endregion static methods
