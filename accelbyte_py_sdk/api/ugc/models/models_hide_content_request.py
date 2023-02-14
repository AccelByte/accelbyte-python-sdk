# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.9.0)

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


class ModelsHideContentRequest(Model):
    """Models hide content request (models.HideContentRequest)

    Properties:
        is_hidden: (isHidden) REQUIRED bool
    """

    # region fields

    is_hidden: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_hidden(self, value: bool) -> ModelsHideContentRequest:
        self.is_hidden = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_hidden"):
            result["isHidden"] = bool(self.is_hidden)
        elif include_empty:
            result["isHidden"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_hidden: bool,
    ) -> ModelsHideContentRequest:
        instance = cls()
        instance.is_hidden = is_hidden
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsHideContentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "isHidden" in dict_ and dict_["isHidden"] is not None:
            instance.is_hidden = bool(dict_["isHidden"])
        elif include_empty:
            instance.is_hidden = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsHideContentRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsHideContentRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsHideContentRequest,
        List[ModelsHideContentRequest],
        Dict[Any, ModelsHideContentRequest],
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
            "isHidden": "is_hidden",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isHidden": True,
        }

    # endregion static methods
