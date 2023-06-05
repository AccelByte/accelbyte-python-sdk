# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Command (0.1.0)

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


class TidID(Model):
    """Tid ID (tid.ID)

    Properties:
        type_: (Type) REQUIRED str

        uuid: (UUID) REQUIRED str
    """

    # region fields

    type_: str  # REQUIRED
    uuid: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_type(self, value: str) -> TidID:
        self.type_ = value
        return self

    def with_uuid(self, value: str) -> TidID:
        self.uuid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "type_"):
            result["Type"] = str(self.type_)
        elif include_empty:
            result["Type"] = ""
        if hasattr(self, "uuid"):
            result["UUID"] = str(self.uuid)
        elif include_empty:
            result["UUID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, type_: str, uuid: str, **kwargs) -> TidID:
        instance = cls()
        instance.type_ = type_
        instance.uuid = uuid
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TidID:
        instance = cls()
        if not dict_:
            return instance
        if "Type" in dict_ and dict_["Type"] is not None:
            instance.type_ = str(dict_["Type"])
        elif include_empty:
            instance.type_ = ""
        if "UUID" in dict_ and dict_["UUID"] is not None:
            instance.uuid = str(dict_["UUID"])
        elif include_empty:
            instance.uuid = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TidID]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TidID]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TidID, List[TidID], Dict[Any, TidID]]:
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
            "Type": "type_",
            "UUID": "uuid",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Type": True,
            "UUID": True,
        }

    # endregion static methods
