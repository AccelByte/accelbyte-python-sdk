# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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

from ..models.model_pagination import ModelPagination


class ModelGetFriendsResponse(Model):
    """Model get friends response (model.GetFriendsResponse)

    Properties:
        friend_i_ds: (friendIDs) REQUIRED List[str]

        paging: (paging) REQUIRED ModelPagination
    """

    # region fields

    friend_i_ds: List[str]  # REQUIRED
    paging: ModelPagination  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_friend_i_ds(self, value: List[str]) -> ModelGetFriendsResponse:
        self.friend_i_ds = value
        return self

    def with_paging(self, value: ModelPagination) -> ModelGetFriendsResponse:
        self.paging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "friend_i_ds"):
            result["friendIDs"] = [str(i0) for i0 in self.friend_i_ds]
        elif include_empty:
            result["friendIDs"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = ModelPagination()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        friend_i_ds: List[str],
        paging: ModelPagination,
    ) -> ModelGetFriendsResponse:
        instance = cls()
        instance.friend_i_ds = friend_i_ds
        instance.paging = paging
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGetFriendsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "friendIDs" in dict_ and dict_["friendIDs"] is not None:
            instance.friend_i_ds = [str(i0) for i0 in dict_["friendIDs"]]
        elif include_empty:
            instance.friend_i_ds = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = ModelPagination.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = ModelPagination()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGetFriendsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGetFriendsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGetFriendsResponse,
        List[ModelGetFriendsResponse],
        Dict[Any, ModelGetFriendsResponse],
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
            "friendIDs": "friend_i_ds",
            "paging": "paging",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "friendIDs": True,
            "paging": True,
        }

    # endregion static methods
