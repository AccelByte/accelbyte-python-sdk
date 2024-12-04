# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelCPURequest(Model):
    """Apimodel CPU request (apimodel.CPURequest)

    Properties:
        request_cpu: (requestCPU) REQUIRED int
    """

    # region fields

    request_cpu: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_request_cpu(self, value: int) -> ApimodelCPURequest:
        self.request_cpu = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "request_cpu"):
            result["requestCPU"] = int(self.request_cpu)
        elif include_empty:
            result["requestCPU"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, request_cpu: int, **kwargs) -> ApimodelCPURequest:
        instance = cls()
        instance.request_cpu = request_cpu
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelCPURequest:
        instance = cls()
        if not dict_:
            return instance
        if "requestCPU" in dict_ and dict_["requestCPU"] is not None:
            instance.request_cpu = int(dict_["requestCPU"])
        elif include_empty:
            instance.request_cpu = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelCPURequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelCPURequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelCPURequest, List[ApimodelCPURequest], Dict[Any, ApimodelCPURequest]
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
            "requestCPU": "request_cpu",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "requestCPU": True,
        }

    # endregion static methods
