# justice-cloudsave-service (1.9.1)

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


class ModelsConcurrentRecordRequest(Model):
    """Models concurrent record request (models.ConcurrentRecordRequest)

    Properties:
        updated_at: (updatedAt) REQUIRED str

        value: (value) REQUIRED Dict[str, Any]
    """

    # region fields

    updated_at: str                                                                                # REQUIRED
    value: Dict[str, Any]                                                                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_updated_at(self, value: str) -> ModelsConcurrentRecordRequest:
        self.updated_at = value
        return self

    def with_value(self, value: Dict[str, Any]) -> ModelsConcurrentRecordRequest:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "value"):
            result["value"] = {str(k0): v0 for k0, v0 in self.value.items()}
        elif include_empty:
            result["value"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        updated_at: str,
        value: Dict[str, Any],
    ) -> ModelsConcurrentRecordRequest:
        instance = cls()
        instance.updated_at = updated_at
        instance.value = value
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsConcurrentRecordRequest:
        instance = cls()
        if not dict_:
            return instance
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
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
            "updatedAt": "updated_at",
            "value": "value",
        }

    # endregion static methods
