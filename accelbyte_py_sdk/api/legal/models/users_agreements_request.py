# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Legal Service

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


class UsersAgreementsRequest(Model):
    """A DTO object for retrieving agreements of multi users (UsersAgreementsRequest)

    Properties:
        user_ids: (userIds) REQUIRED List[str]

        current_published_only: (currentPublishedOnly) OPTIONAL bool
    """

    # region fields

    user_ids: List[str]  # REQUIRED
    current_published_only: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_ids(self, value: List[str]) -> UsersAgreementsRequest:
        self.user_ids = value
        return self

    def with_current_published_only(self, value: bool) -> UsersAgreementsRequest:
        self.current_published_only = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        if hasattr(self, "current_published_only"):
            result["currentPublishedOnly"] = bool(self.current_published_only)
        elif include_empty:
            result["currentPublishedOnly"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_ids: List[str],
        current_published_only: Optional[bool] = None,
        **kwargs,
    ) -> UsersAgreementsRequest:
        instance = cls()
        instance.user_ids = user_ids
        if current_published_only is not None:
            instance.current_published_only = current_published_only
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UsersAgreementsRequest:
        instance = cls()
        if not dict_:
            return instance
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        if (
            "currentPublishedOnly" in dict_
            and dict_["currentPublishedOnly"] is not None
        ):
            instance.current_published_only = bool(dict_["currentPublishedOnly"])
        elif include_empty:
            instance.current_published_only = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UsersAgreementsRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UsersAgreementsRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UsersAgreementsRequest,
        List[UsersAgreementsRequest],
        Dict[Any, UsersAgreementsRequest],
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
            "userIds": "user_ids",
            "currentPublishedOnly": "current_published_only",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "userIds": True,
            "currentPublishedOnly": False,
        }

    # endregion static methods
