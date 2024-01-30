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


class ModelGetBulkUserBansRequest(Model):
    """Model get bulk user bans request (model.GetBulkUserBansRequest)

    Properties:
        bulk_user_id: (bulkUserId) REQUIRED List[str]
    """

    # region fields

    bulk_user_id: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_bulk_user_id(self, value: List[str]) -> ModelGetBulkUserBansRequest:
        self.bulk_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bulk_user_id"):
            result["bulkUserId"] = [str(i0) for i0 in self.bulk_user_id]
        elif include_empty:
            result["bulkUserId"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, bulk_user_id: List[str], **kwargs) -> ModelGetBulkUserBansRequest:
        instance = cls()
        instance.bulk_user_id = bulk_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGetBulkUserBansRequest:
        instance = cls()
        if not dict_:
            return instance
        if "bulkUserId" in dict_ and dict_["bulkUserId"] is not None:
            instance.bulk_user_id = [str(i0) for i0 in dict_["bulkUserId"]]
        elif include_empty:
            instance.bulk_user_id = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGetBulkUserBansRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGetBulkUserBansRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGetBulkUserBansRequest,
        List[ModelGetBulkUserBansRequest],
        Dict[Any, ModelGetBulkUserBansRequest],
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
            "bulkUserId": "bulk_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bulkUserId": True,
        }

    # endregion static methods
