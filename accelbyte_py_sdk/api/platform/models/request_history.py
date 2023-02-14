# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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
from ....core import StrEnum


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    PENDING = "PENDING"
    SUCCESS = "SUCCESS"


class RequestHistory(Model):
    """Request history (RequestHistory)

    Properties:
        request_time: (requestTime) OPTIONAL str

        response_body: (responseBody) OPTIONAL Dict[str, Any]

        response_time: (responseTime) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_code: (statusCode) OPTIONAL int
    """

    # region fields

    request_time: str  # OPTIONAL
    response_body: Dict[str, Any]  # OPTIONAL
    response_time: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_code: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_request_time(self, value: str) -> RequestHistory:
        self.request_time = value
        return self

    def with_response_body(self, value: Dict[str, Any]) -> RequestHistory:
        self.response_body = value
        return self

    def with_response_time(self, value: str) -> RequestHistory:
        self.response_time = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RequestHistory:
        self.status = value
        return self

    def with_status_code(self, value: int) -> RequestHistory:
        self.status_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "request_time"):
            result["requestTime"] = str(self.request_time)
        elif include_empty:
            result["requestTime"] = ""
        if hasattr(self, "response_body"):
            result["responseBody"] = {
                str(k0): v0 for k0, v0 in self.response_body.items()
            }
        elif include_empty:
            result["responseBody"] = {}
        if hasattr(self, "response_time"):
            result["responseTime"] = str(self.response_time)
        elif include_empty:
            result["responseTime"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_code"):
            result["statusCode"] = int(self.status_code)
        elif include_empty:
            result["statusCode"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        request_time: Optional[str] = None,
        response_body: Optional[Dict[str, Any]] = None,
        response_time: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_code: Optional[int] = None,
    ) -> RequestHistory:
        instance = cls()
        if request_time is not None:
            instance.request_time = request_time
        if response_body is not None:
            instance.response_body = response_body
        if response_time is not None:
            instance.response_time = response_time
        if status is not None:
            instance.status = status
        if status_code is not None:
            instance.status_code = status_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RequestHistory:
        instance = cls()
        if not dict_:
            return instance
        if "requestTime" in dict_ and dict_["requestTime"] is not None:
            instance.request_time = str(dict_["requestTime"])
        elif include_empty:
            instance.request_time = ""
        if "responseBody" in dict_ and dict_["responseBody"] is not None:
            instance.response_body = {
                str(k0): v0 for k0, v0 in dict_["responseBody"].items()
            }
        elif include_empty:
            instance.response_body = {}
        if "responseTime" in dict_ and dict_["responseTime"] is not None:
            instance.response_time = str(dict_["responseTime"])
        elif include_empty:
            instance.response_time = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusCode" in dict_ and dict_["statusCode"] is not None:
            instance.status_code = int(dict_["statusCode"])
        elif include_empty:
            instance.status_code = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RequestHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RequestHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RequestHistory, List[RequestHistory], Dict[Any, RequestHistory]]:
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
            "requestTime": "request_time",
            "responseBody": "response_body",
            "responseTime": "response_time",
            "status": "status",
            "statusCode": "status_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "requestTime": False,
            "responseBody": False,
            "responseTime": False,
            "status": False,
            "statusCode": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "PENDING", "SUCCESS"],
        }

    # endregion static methods
