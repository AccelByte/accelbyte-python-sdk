# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class ThirdPartySubscriptionOwnership(Model):
    """Third party subscription ownership (ThirdPartySubscriptionOwnership)

    Properties:
        owned: (owned) REQUIRED bool
    """

    # region fields

    owned: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_owned(self, value: bool) -> ThirdPartySubscriptionOwnership:
        self.owned = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "owned"):
            result["owned"] = bool(self.owned)
        elif include_empty:
            result["owned"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, owned: bool, **kwargs) -> ThirdPartySubscriptionOwnership:
        instance = cls()
        instance.owned = owned
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ThirdPartySubscriptionOwnership:
        instance = cls()
        if not dict_:
            return instance
        if "owned" in dict_ and dict_["owned"] is not None:
            instance.owned = bool(dict_["owned"])
        elif include_empty:
            instance.owned = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ThirdPartySubscriptionOwnership]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ThirdPartySubscriptionOwnership]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ThirdPartySubscriptionOwnership,
        List[ThirdPartySubscriptionOwnership],
        Dict[Any, ThirdPartySubscriptionOwnership],
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
            "owned": "owned",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "owned": True,
        }

    # endregion static methods
