# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service (3.12.8)

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


class ModelsPlayerBinaryRecordMetadataPublicRequest(Model):
    """Models player binary record metadata public request (models.PlayerBinaryRecordMetadataPublicRequest)

    Properties:
        is_public: (is_public) OPTIONAL bool
    """

    # region fields

    is_public: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_public(
        self, value: bool
    ) -> ModelsPlayerBinaryRecordMetadataPublicRequest:
        self.is_public = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_public"):
            result["is_public"] = bool(self.is_public)
        elif include_empty:
            result["is_public"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, is_public: Optional[bool] = None, **kwargs
    ) -> ModelsPlayerBinaryRecordMetadataPublicRequest:
        instance = cls()
        if is_public is not None:
            instance.is_public = is_public
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerBinaryRecordMetadataPublicRequest:
        instance = cls()
        if not dict_:
            return instance
        if "is_public" in dict_ and dict_["is_public"] is not None:
            instance.is_public = bool(dict_["is_public"])
        elif include_empty:
            instance.is_public = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerBinaryRecordMetadataPublicRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerBinaryRecordMetadataPublicRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerBinaryRecordMetadataPublicRequest,
        List[ModelsPlayerBinaryRecordMetadataPublicRequest],
        Dict[Any, ModelsPlayerBinaryRecordMetadataPublicRequest],
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "is_public": False,
        }

    # endregion static methods
