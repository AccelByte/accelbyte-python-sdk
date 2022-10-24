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


class ModelUpgradeHeadlessAccountRequest(Model):
    """Model upgrade headless account request (model.UpgradeHeadlessAccountRequest)

    Properties:
        login_id: (LoginID) REQUIRED str

        password: (Password) REQUIRED str
    """

    # region fields

    login_id: str  # REQUIRED
    password: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_login_id(self, value: str) -> ModelUpgradeHeadlessAccountRequest:
        self.login_id = value
        return self

    def with_password(self, value: str) -> ModelUpgradeHeadlessAccountRequest:
        self.password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "login_id"):
            result["LoginID"] = str(self.login_id)
        elif include_empty:
            result["LoginID"] = ""
        if hasattr(self, "password"):
            result["Password"] = str(self.password)
        elif include_empty:
            result["Password"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        login_id: str,
        password: str,
    ) -> ModelUpgradeHeadlessAccountRequest:
        instance = cls()
        instance.login_id = login_id
        instance.password = password
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUpgradeHeadlessAccountRequest:
        instance = cls()
        if not dict_:
            return instance
        if "LoginID" in dict_ and dict_["LoginID"] is not None:
            instance.login_id = str(dict_["LoginID"])
        elif include_empty:
            instance.login_id = ""
        if "Password" in dict_ and dict_["Password"] is not None:
            instance.password = str(dict_["Password"])
        elif include_empty:
            instance.password = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUpgradeHeadlessAccountRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUpgradeHeadlessAccountRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUpgradeHeadlessAccountRequest,
        List[ModelUpgradeHeadlessAccountRequest],
        Dict[Any, ModelUpgradeHeadlessAccountRequest],
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
            "LoginID": "login_id",
            "Password": "password",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "LoginID": True,
            "Password": True,
        }

    # endregion static methods
