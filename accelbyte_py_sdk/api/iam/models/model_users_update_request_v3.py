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

from ..models.model_user_bulk_update_request_v3 import ModelUserBulkUpdateRequestV3


class ModelUsersUpdateRequestV3(Model):
    """Model users update request V3 (model.UsersUpdateRequestV3)

    Properties:
        update_request: (updateRequest) REQUIRED ModelUserBulkUpdateRequestV3

        user_ids: (userIds) REQUIRED List[str]
    """

    # region fields

    update_request: ModelUserBulkUpdateRequestV3  # REQUIRED
    user_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_update_request(
        self, value: ModelUserBulkUpdateRequestV3
    ) -> ModelUsersUpdateRequestV3:
        self.update_request = value
        return self

    def with_user_ids(self, value: List[str]) -> ModelUsersUpdateRequestV3:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "update_request"):
            result["updateRequest"] = self.update_request.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["updateRequest"] = ModelUserBulkUpdateRequestV3()
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, update_request: ModelUserBulkUpdateRequestV3, user_ids: List[str], **kwargs
    ) -> ModelUsersUpdateRequestV3:
        instance = cls()
        instance.update_request = update_request
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUsersUpdateRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "updateRequest" in dict_ and dict_["updateRequest"] is not None:
            instance.update_request = ModelUserBulkUpdateRequestV3.create_from_dict(
                dict_["updateRequest"], include_empty=include_empty
            )
        elif include_empty:
            instance.update_request = ModelUserBulkUpdateRequestV3()
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUsersUpdateRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUsersUpdateRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUsersUpdateRequestV3,
        List[ModelUsersUpdateRequestV3],
        Dict[Any, ModelUsersUpdateRequestV3],
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
            "updateRequest": "update_request",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "updateRequest": True,
            "userIds": True,
        }

    # endregion static methods
