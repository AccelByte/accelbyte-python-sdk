# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class ModelUserActiveBanResponse(Model):
    """Model user active ban response (model.UserActiveBanResponse)

    Properties:
        ban: (Ban) REQUIRED str

        ban_id: (BanId) REQUIRED str

        end_date: (EndDate) REQUIRED str
    """

    # region fields

    ban: str  # REQUIRED
    ban_id: str  # REQUIRED
    end_date: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> ModelUserActiveBanResponse:
        self.ban = value
        return self

    def with_ban_id(self, value: str) -> ModelUserActiveBanResponse:
        self.ban_id = value
        return self

    def with_end_date(self, value: str) -> ModelUserActiveBanResponse:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["Ban"] = str(self.ban)
        elif include_empty:
            result["Ban"] = ""
        if hasattr(self, "ban_id"):
            result["BanId"] = str(self.ban_id)
        elif include_empty:
            result["BanId"] = ""
        if hasattr(self, "end_date"):
            result["EndDate"] = str(self.end_date)
        elif include_empty:
            result["EndDate"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        ban_id: str,
        end_date: str,
    ) -> ModelUserActiveBanResponse:
        instance = cls()
        instance.ban = ban
        instance.ban_id = ban_id
        instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserActiveBanResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Ban" in dict_ and dict_["Ban"] is not None:
            instance.ban = str(dict_["Ban"])
        elif include_empty:
            instance.ban = ""
        if "BanId" in dict_ and dict_["BanId"] is not None:
            instance.ban_id = str(dict_["BanId"])
        elif include_empty:
            instance.ban_id = ""
        if "EndDate" in dict_ and dict_["EndDate"] is not None:
            instance.end_date = str(dict_["EndDate"])
        elif include_empty:
            instance.end_date = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserActiveBanResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserActiveBanResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserActiveBanResponse,
        List[ModelUserActiveBanResponse],
        Dict[Any, ModelUserActiveBanResponse],
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
            "Ban": "ban",
            "BanId": "ban_id",
            "EndDate": "end_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Ban": True,
            "BanId": True,
            "EndDate": True,
        }

    # endregion static methods
