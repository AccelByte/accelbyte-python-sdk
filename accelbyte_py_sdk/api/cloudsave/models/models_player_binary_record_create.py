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
from ....core import StrEnum


class SetByEnum(StrEnum):
    CLIENT = "CLIENT"
    SERVER = "SERVER"


class ModelsPlayerBinaryRecordCreate(Model):
    """Models player binary record create (models.PlayerBinaryRecordCreate)

    Properties:
        file_type: (file_type) REQUIRED str

        key: (key) REQUIRED str

        set_by: (set_by) REQUIRED Union[str, SetByEnum]

        is_public: (is_public) OPTIONAL bool
    """

    # region fields

    file_type: str  # REQUIRED
    key: str  # REQUIRED
    set_by: Union[str, SetByEnum]  # REQUIRED
    is_public: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_file_type(self, value: str) -> ModelsPlayerBinaryRecordCreate:
        self.file_type = value
        return self

    def with_key(self, value: str) -> ModelsPlayerBinaryRecordCreate:
        self.key = value
        return self

    def with_set_by(
        self, value: Union[str, SetByEnum]
    ) -> ModelsPlayerBinaryRecordCreate:
        self.set_by = value
        return self

    def with_is_public(self, value: bool) -> ModelsPlayerBinaryRecordCreate:
        self.is_public = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "file_type"):
            result["file_type"] = str(self.file_type)
        elif include_empty:
            result["file_type"] = ""
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "set_by"):
            result["set_by"] = str(self.set_by)
        elif include_empty:
            result["set_by"] = Union[str, SetByEnum]()
        if hasattr(self, "is_public"):
            result["is_public"] = bool(self.is_public)
        elif include_empty:
            result["is_public"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        file_type: str,
        key: str,
        set_by: Union[str, SetByEnum],
        is_public: Optional[bool] = None,
        **kwargs,
    ) -> ModelsPlayerBinaryRecordCreate:
        instance = cls()
        instance.file_type = file_type
        instance.key = key
        instance.set_by = set_by
        if is_public is not None:
            instance.is_public = is_public
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerBinaryRecordCreate:
        instance = cls()
        if not dict_:
            return instance
        if "file_type" in dict_ and dict_["file_type"] is not None:
            instance.file_type = str(dict_["file_type"])
        elif include_empty:
            instance.file_type = ""
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "set_by" in dict_ and dict_["set_by"] is not None:
            instance.set_by = str(dict_["set_by"])
        elif include_empty:
            instance.set_by = Union[str, SetByEnum]()
        if "is_public" in dict_ and dict_["is_public"] is not None:
            instance.is_public = bool(dict_["is_public"])
        elif include_empty:
            instance.is_public = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerBinaryRecordCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerBinaryRecordCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerBinaryRecordCreate,
        List[ModelsPlayerBinaryRecordCreate],
        Dict[Any, ModelsPlayerBinaryRecordCreate],
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
            "file_type": "file_type",
            "key": "key",
            "set_by": "set_by",
            "is_public": "is_public",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "file_type": True,
            "key": True,
            "set_by": True,
            "is_public": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "set_by": ["CLIENT", "SERVER"],
        }

    # endregion static methods
