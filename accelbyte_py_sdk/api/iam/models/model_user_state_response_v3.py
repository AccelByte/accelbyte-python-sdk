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


class ModelUserStateResponseV3(Model):
    """Model user state response V3 (model.UserStateResponseV3)

    Properties:
        email_verified: (emailVerified) REQUIRED bool

        enabled: (enabled) REQUIRED bool

        full_account: (fullAccount) REQUIRED bool

        test_account: (testAccount) REQUIRED bool
    """

    # region fields

    email_verified: bool  # REQUIRED
    enabled: bool  # REQUIRED
    full_account: bool  # REQUIRED
    test_account: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_email_verified(self, value: bool) -> ModelUserStateResponseV3:
        self.email_verified = value
        return self

    def with_enabled(self, value: bool) -> ModelUserStateResponseV3:
        self.enabled = value
        return self

    def with_full_account(self, value: bool) -> ModelUserStateResponseV3:
        self.full_account = value
        return self

    def with_test_account(self, value: bool) -> ModelUserStateResponseV3:
        self.test_account = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_verified"):
            result["emailVerified"] = bool(self.email_verified)
        elif include_empty:
            result["emailVerified"] = False
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "full_account"):
            result["fullAccount"] = bool(self.full_account)
        elif include_empty:
            result["fullAccount"] = False
        if hasattr(self, "test_account"):
            result["testAccount"] = bool(self.test_account)
        elif include_empty:
            result["testAccount"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email_verified: bool,
        enabled: bool,
        full_account: bool,
        test_account: bool,
        **kwargs,
    ) -> ModelUserStateResponseV3:
        instance = cls()
        instance.email_verified = email_verified
        instance.enabled = enabled
        instance.full_account = full_account
        instance.test_account = test_account
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserStateResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "emailVerified" in dict_ and dict_["emailVerified"] is not None:
            instance.email_verified = bool(dict_["emailVerified"])
        elif include_empty:
            instance.email_verified = False
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "fullAccount" in dict_ and dict_["fullAccount"] is not None:
            instance.full_account = bool(dict_["fullAccount"])
        elif include_empty:
            instance.full_account = False
        if "testAccount" in dict_ and dict_["testAccount"] is not None:
            instance.test_account = bool(dict_["testAccount"])
        elif include_empty:
            instance.test_account = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserStateResponseV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserStateResponseV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserStateResponseV3,
        List[ModelUserStateResponseV3],
        Dict[Any, ModelUserStateResponseV3],
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
            "emailVerified": "email_verified",
            "enabled": "enabled",
            "fullAccount": "full_account",
            "testAccount": "test_account",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "emailVerified": True,
            "enabled": True,
            "fullAccount": True,
            "testAccount": True,
        }

    # endregion static methods
