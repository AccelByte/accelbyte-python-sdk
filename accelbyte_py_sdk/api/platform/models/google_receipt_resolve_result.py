# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class GoogleReceiptResolveResult(Model):
    """Google receipt resolve result (GoogleReceiptResolveResult)

    Properties:
        need_consume: (needConsume) OPTIONAL bool
    """

    # region fields

    need_consume: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_need_consume(self, value: bool) -> GoogleReceiptResolveResult:
        self.need_consume = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "need_consume"):
            result["needConsume"] = bool(self.need_consume)
        elif include_empty:
            result["needConsume"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        need_consume: Optional[bool] = None,
    ) -> GoogleReceiptResolveResult:
        instance = cls()
        if need_consume is not None:
            instance.need_consume = need_consume
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GoogleReceiptResolveResult:
        instance = cls()
        if not dict_:
            return instance
        if "needConsume" in dict_ and dict_["needConsume"] is not None:
            instance.need_consume = bool(dict_["needConsume"])
        elif include_empty:
            instance.need_consume = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GoogleReceiptResolveResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GoogleReceiptResolveResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GoogleReceiptResolveResult,
        List[GoogleReceiptResolveResult],
        Dict[Any, GoogleReceiptResolveResult],
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
            "needConsume": "need_consume",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "needConsume": False,
        }

    # endregion static methods
