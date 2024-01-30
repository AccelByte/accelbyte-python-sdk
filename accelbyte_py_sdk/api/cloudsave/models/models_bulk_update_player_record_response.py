# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service

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


class ModelsBulkUpdatePlayerRecordResponse(Model):
    """Models bulk update player record response (models.BulkUpdatePlayerRecordResponse)

    Properties:
        detail: (detail) REQUIRED Dict[str, Any]

        key: (key) REQUIRED str

        success: (success) REQUIRED bool
    """

    # region fields

    detail: Dict[str, Any]  # REQUIRED
    key: str  # REQUIRED
    success: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_detail(
        self, value: Dict[str, Any]
    ) -> ModelsBulkUpdatePlayerRecordResponse:
        self.detail = value
        return self

    def with_key(self, value: str) -> ModelsBulkUpdatePlayerRecordResponse:
        self.key = value
        return self

    def with_success(self, value: bool) -> ModelsBulkUpdatePlayerRecordResponse:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "detail"):
            result["detail"] = {str(k0): v0 for k0, v0 in self.detail.items()}
        elif include_empty:
            result["detail"] = {}
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, detail: Dict[str, Any], key: str, success: bool, **kwargs
    ) -> ModelsBulkUpdatePlayerRecordResponse:
        instance = cls()
        instance.detail = detail
        instance.key = key
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBulkUpdatePlayerRecordResponse:
        instance = cls()
        if not dict_:
            return instance
        if "detail" in dict_ and dict_["detail"] is not None:
            instance.detail = {str(k0): v0 for k0, v0 in dict_["detail"].items()}
        elif include_empty:
            instance.detail = {}
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBulkUpdatePlayerRecordResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBulkUpdatePlayerRecordResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBulkUpdatePlayerRecordResponse,
        List[ModelsBulkUpdatePlayerRecordResponse],
        Dict[Any, ModelsBulkUpdatePlayerRecordResponse],
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
            "detail": "detail",
            "key": "key",
            "success": "success",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "detail": True,
            "key": True,
            "success": True,
        }

    # endregion static methods
