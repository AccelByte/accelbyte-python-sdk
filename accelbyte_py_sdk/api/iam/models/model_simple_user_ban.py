# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelSimpleUserBan(Model):
    """Model simple user ban (model.SimpleUserBan)

    Properties:
        ban: (ban) REQUIRED str

        end_date: (endDate) REQUIRED int
    """

    # region fields

    ban: str  # REQUIRED
    end_date: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> ModelSimpleUserBan:
        self.ban = value
        return self

    def with_end_date(self, value: int) -> ModelSimpleUserBan:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = int(self.end_date)
        elif include_empty:
            result["endDate"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, ban: str, end_date: int, **kwargs) -> ModelSimpleUserBan:
        instance = cls()
        instance.ban = ban
        instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelSimpleUserBan:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = int(dict_["endDate"])
        elif include_empty:
            instance.end_date = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelSimpleUserBan]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelSimpleUserBan]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelSimpleUserBan, List[ModelSimpleUserBan], Dict[Any, ModelSimpleUserBan]
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
            "ban": "ban",
            "endDate": "end_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ban": True,
            "endDate": True,
        }

    # endregion static methods
