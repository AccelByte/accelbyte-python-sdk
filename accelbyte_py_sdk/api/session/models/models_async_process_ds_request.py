# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ModelsAsyncProcessDSRequest(Model):
    """Models async process DS request (models.AsyncProcessDSRequest)

    Properties:
        async_: (async) OPTIONAL bool

        timeout: (timeout) OPTIONAL int
    """

    # region fields

    async_: bool  # OPTIONAL
    timeout: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_async(self, value: bool) -> ModelsAsyncProcessDSRequest:
        self.async_ = value
        return self

    def with_timeout(self, value: int) -> ModelsAsyncProcessDSRequest:
        self.timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "async_"):
            result["async"] = bool(self.async_)
        elif include_empty:
            result["async"] = False
        if hasattr(self, "timeout"):
            result["timeout"] = int(self.timeout)
        elif include_empty:
            result["timeout"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, async_: Optional[bool] = None, timeout: Optional[int] = None, **kwargs
    ) -> ModelsAsyncProcessDSRequest:
        instance = cls()
        if async_ is not None:
            instance.async_ = async_
        if timeout is not None:
            instance.timeout = timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAsyncProcessDSRequest:
        instance = cls()
        if not dict_:
            return instance
        if "async" in dict_ and dict_["async"] is not None:
            instance.async_ = bool(dict_["async"])
        elif include_empty:
            instance.async_ = False
        if "timeout" in dict_ and dict_["timeout"] is not None:
            instance.timeout = int(dict_["timeout"])
        elif include_empty:
            instance.timeout = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAsyncProcessDSRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAsyncProcessDSRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAsyncProcessDSRequest,
        List[ModelsAsyncProcessDSRequest],
        Dict[Any, ModelsAsyncProcessDSRequest],
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
            "async": "async_",
            "timeout": "timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "async": False,
            "timeout": False,
        }

    # endregion static methods
