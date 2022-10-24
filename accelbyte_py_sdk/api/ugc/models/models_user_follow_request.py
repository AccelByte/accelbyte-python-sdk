# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.5.5)

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


class ModelsUserFollowRequest(Model):
    """Models user follow request (models.UserFollowRequest)

    Properties:
        follow_status: (followStatus) REQUIRED bool
    """

    # region fields

    follow_status: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_follow_status(self, value: bool) -> ModelsUserFollowRequest:
        self.follow_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "follow_status"):
            result["followStatus"] = bool(self.follow_status)
        elif include_empty:
            result["followStatus"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        follow_status: bool,
    ) -> ModelsUserFollowRequest:
        instance = cls()
        instance.follow_status = follow_status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserFollowRequest:
        instance = cls()
        if not dict_:
            return instance
        if "followStatus" in dict_ and dict_["followStatus"] is not None:
            instance.follow_status = bool(dict_["followStatus"])
        elif include_empty:
            instance.follow_status = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserFollowRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserFollowRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserFollowRequest,
        List[ModelsUserFollowRequest],
        Dict[Any, ModelsUserFollowRequest],
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
            "followStatus": "follow_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "followStatus": True,
        }

    # endregion static methods
