# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service (3.12.0)

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


class ModelsPlayerBinaryRecordMetadataRequest(Model):
    """Models player binary record metadata request (models.PlayerBinaryRecordMetadataRequest)

    Properties:
        is_public: (is_public) OPTIONAL bool

        set_by: (set_by) OPTIONAL str
    """

    # region fields

    is_public: bool  # OPTIONAL
    set_by: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_public(self, value: bool) -> ModelsPlayerBinaryRecordMetadataRequest:
        self.is_public = value
        return self

    def with_set_by(self, value: str) -> ModelsPlayerBinaryRecordMetadataRequest:
        self.set_by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_public"):
            result["is_public"] = bool(self.is_public)
        elif include_empty:
            result["is_public"] = False
        if hasattr(self, "set_by"):
            result["set_by"] = str(self.set_by)
        elif include_empty:
            result["set_by"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, is_public: Optional[bool] = None, set_by: Optional[str] = None, **kwargs
    ) -> ModelsPlayerBinaryRecordMetadataRequest:
        instance = cls()
        if is_public is not None:
            instance.is_public = is_public
        if set_by is not None:
            instance.set_by = set_by
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerBinaryRecordMetadataRequest:
        instance = cls()
        if not dict_:
            return instance
        if "is_public" in dict_ and dict_["is_public"] is not None:
            instance.is_public = bool(dict_["is_public"])
        elif include_empty:
            instance.is_public = False
        if "set_by" in dict_ and dict_["set_by"] is not None:
            instance.set_by = str(dict_["set_by"])
        elif include_empty:
            instance.set_by = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerBinaryRecordMetadataRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerBinaryRecordMetadataRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerBinaryRecordMetadataRequest,
        List[ModelsPlayerBinaryRecordMetadataRequest],
        Dict[Any, ModelsPlayerBinaryRecordMetadataRequest],
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
            "is_public": "is_public",
            "set_by": "set_by",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "is_public": False,
            "set_by": False,
        }

    # endregion static methods
