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


class AccountcommonAvatarConfig(Model):
    """Accountcommon avatar config (accountcommon.AvatarConfig)

    Properties:
        allowed_prefixes: (allowedPrefixes) REQUIRED List[str]

        prefer_regex: (preferRegex) REQUIRED bool

        regex: (regex) REQUIRED str
    """

    # region fields

    allowed_prefixes: List[str]  # REQUIRED
    prefer_regex: bool  # REQUIRED
    regex: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allowed_prefixes(self, value: List[str]) -> AccountcommonAvatarConfig:
        self.allowed_prefixes = value
        return self

    def with_prefer_regex(self, value: bool) -> AccountcommonAvatarConfig:
        self.prefer_regex = value
        return self

    def with_regex(self, value: str) -> AccountcommonAvatarConfig:
        self.regex = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_prefixes"):
            result["allowedPrefixes"] = [str(i0) for i0 in self.allowed_prefixes]
        elif include_empty:
            result["allowedPrefixes"] = []
        if hasattr(self, "prefer_regex"):
            result["preferRegex"] = bool(self.prefer_regex)
        elif include_empty:
            result["preferRegex"] = False
        if hasattr(self, "regex"):
            result["regex"] = str(self.regex)
        elif include_empty:
            result["regex"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, allowed_prefixes: List[str], prefer_regex: bool, regex: str, **kwargs
    ) -> AccountcommonAvatarConfig:
        instance = cls()
        instance.allowed_prefixes = allowed_prefixes
        instance.prefer_regex = prefer_regex
        instance.regex = regex
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonAvatarConfig:
        instance = cls()
        if not dict_:
            return instance
        if "allowedPrefixes" in dict_ and dict_["allowedPrefixes"] is not None:
            instance.allowed_prefixes = [str(i0) for i0 in dict_["allowedPrefixes"]]
        elif include_empty:
            instance.allowed_prefixes = []
        if "preferRegex" in dict_ and dict_["preferRegex"] is not None:
            instance.prefer_regex = bool(dict_["preferRegex"])
        elif include_empty:
            instance.prefer_regex = False
        if "regex" in dict_ and dict_["regex"] is not None:
            instance.regex = str(dict_["regex"])
        elif include_empty:
            instance.regex = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonAvatarConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonAvatarConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonAvatarConfig,
        List[AccountcommonAvatarConfig],
        Dict[Any, AccountcommonAvatarConfig],
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
            "allowedPrefixes": "allowed_prefixes",
            "preferRegex": "prefer_regex",
            "regex": "regex",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedPrefixes": True,
            "preferRegex": True,
            "regex": True,
        }

    # endregion static methods
