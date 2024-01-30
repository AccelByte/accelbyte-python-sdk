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


class ModelBulkAccountTypeUpdateRequestV4(Model):
    """Model bulk account type update request V4 (model.BulkAccountTypeUpdateRequestV4)

    Properties:
        test_account: (testAccount) REQUIRED bool

        user_ids: (userIds) REQUIRED List[str]
    """

    # region fields

    test_account: bool  # REQUIRED
    user_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_test_account(self, value: bool) -> ModelBulkAccountTypeUpdateRequestV4:
        self.test_account = value
        return self

    def with_user_ids(self, value: List[str]) -> ModelBulkAccountTypeUpdateRequestV4:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "test_account"):
            result["testAccount"] = bool(self.test_account)
        elif include_empty:
            result["testAccount"] = False
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, test_account: bool, user_ids: List[str], **kwargs
    ) -> ModelBulkAccountTypeUpdateRequestV4:
        instance = cls()
        instance.test_account = test_account
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelBulkAccountTypeUpdateRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "testAccount" in dict_ and dict_["testAccount"] is not None:
            instance.test_account = bool(dict_["testAccount"])
        elif include_empty:
            instance.test_account = False
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelBulkAccountTypeUpdateRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelBulkAccountTypeUpdateRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelBulkAccountTypeUpdateRequestV4,
        List[ModelBulkAccountTypeUpdateRequestV4],
        Dict[Any, ModelBulkAccountTypeUpdateRequestV4],
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
            "testAccount": "test_account",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "testAccount": True,
            "userIds": True,
        }

    # endregion static methods
