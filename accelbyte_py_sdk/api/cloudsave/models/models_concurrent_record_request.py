# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Cloudsave Service (3.6.1)

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

    updated_at: str  # REQUIRED
    value: Dict[str, Any]  # REQUIRED

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
            result["updatedAt"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsConcurrentRecordRequest:
        instance = cls()
        if not dict_:
            return instance
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = {str(k0): v0 for k0, v0 in dict_["value"].items()}
        elif include_empty:
            instance.value = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsConcurrentRecordRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsConcurrentRecordRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsConcurrentRecordRequest,
        List[ModelsConcurrentRecordRequest],
        Dict[Any, ModelsConcurrentRecordRequest],
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
            "updatedAt": "updated_at",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "updatedAt": True,
            "value": True,
        }

    # endregion static methods
