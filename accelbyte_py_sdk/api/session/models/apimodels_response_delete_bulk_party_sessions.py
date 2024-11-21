# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ApimodelsResponseDeleteBulkPartySessions(Model):
    """Apimodels response delete bulk party sessions (apimodels.ResponseDeleteBulkPartySessions)

    Properties:
        error: (error) REQUIRED str

        id_: (id) REQUIRED str
    """

    # region fields

    error: str  # REQUIRED
    id_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error(self, value: str) -> ApimodelsResponseDeleteBulkPartySessions:
        self.error = value
        return self

    def with_id(self, value: str) -> ApimodelsResponseDeleteBulkPartySessions:
        self.id_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error"):
            result["error"] = str(self.error)
        elif include_empty:
            result["error"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, error: str, id_: str, **kwargs
    ) -> ApimodelsResponseDeleteBulkPartySessions:
        instance = cls()
        instance.error = error
        instance.id_ = id_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsResponseDeleteBulkPartySessions:
        instance = cls()
        if not dict_:
            return instance
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = str(dict_["error"])
        elif include_empty:
            instance.error = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsResponseDeleteBulkPartySessions]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsResponseDeleteBulkPartySessions]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsResponseDeleteBulkPartySessions,
        List[ApimodelsResponseDeleteBulkPartySessions],
        Dict[Any, ApimodelsResponseDeleteBulkPartySessions],
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
            "error": "error",
            "id": "id_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "error": True,
            "id": True,
        }

    # endregion static methods
