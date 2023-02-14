# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class OauthmodelUserBan(Model):
    """Oauthmodel user ban (oauthmodel.UserBan)

    Properties:
        comment: (comment) REQUIRED str

        end_date: (endDate) REQUIRED int

        reason: (reason) REQUIRED str
    """

    # region fields

    comment: str  # REQUIRED
    end_date: int  # REQUIRED
    reason: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_comment(self, value: str) -> OauthmodelUserBan:
        self.comment = value
        return self

    def with_end_date(self, value: int) -> OauthmodelUserBan:
        self.end_date = value
        return self

    def with_reason(self, value: str) -> OauthmodelUserBan:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = int(self.end_date)
        elif include_empty:
            result["endDate"] = 0
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        comment: str,
        end_date: int,
        reason: str,
    ) -> OauthmodelUserBan:
        instance = cls()
        instance.comment = comment
        instance.end_date = end_date
        instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelUserBan:
        instance = cls()
        if not dict_:
            return instance
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = int(dict_["endDate"])
        elif include_empty:
            instance.end_date = 0
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelUserBan]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelUserBan]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelUserBan, List[OauthmodelUserBan], Dict[Any, OauthmodelUserBan]
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
            "comment": "comment",
            "endDate": "end_date",
            "reason": "reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "comment": True,
            "endDate": True,
            "reason": True,
        }

    # endregion static methods
