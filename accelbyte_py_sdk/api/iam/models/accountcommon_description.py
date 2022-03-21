# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class AccountcommonDescription(Model):
    """Accountcommon description (accountcommon.Description)

    Properties:
        en_us: (en-US) REQUIRED str

        zh_cn: (zh-CN) REQUIRED str
    """

    # region fields

    en_us: str                                                                                     # REQUIRED
    zh_cn: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_en_us(self, value: str) -> AccountcommonDescription:
        self.en_us = value
        return self

    def with_zh_cn(self, value: str) -> AccountcommonDescription:
        self.zh_cn = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "en_us") or self.en_us is None:
            return False
        if not hasattr(self, "zh_cn") or self.zh_cn is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "en_us"):
            result["en-US"] = str(self.en_us)
        elif include_empty:
            result["en-US"] = str()
        if hasattr(self, "zh_cn"):
            result["zh-CN"] = str(self.zh_cn)
        elif include_empty:
            result["zh-CN"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        en_us: str,
        zh_cn: str,
    ) -> AccountcommonDescription:
        instance = cls()
        instance.en_us = en_us
        instance.zh_cn = zh_cn
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonDescription:
        instance = cls()
        if not dict_:
            return instance
        if "en-US" in dict_ and dict_["en-US"] is not None:
            instance.en_us = str(dict_["en-US"])
        elif include_empty:
            instance.en_us = str()
        if "zh-CN" in dict_ and dict_["zh-CN"] is not None:
            instance.zh_cn = str(dict_["zh-CN"])
        elif include_empty:
            instance.zh_cn = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, AccountcommonDescription]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[AccountcommonDescription]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[AccountcommonDescription, List[AccountcommonDescription]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "en-US": "en_us",
            "zh-CN": "zh_cn",
        }

    # endregion static methods
