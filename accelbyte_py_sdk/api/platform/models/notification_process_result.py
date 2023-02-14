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
    ERROR = "ERROR"
    IGNORED = "IGNORED"
    PROCESSED = "PROCESSED"
    WARN = "WARN"


class NotificationProcessResult(Model):
    """Notification process result (NotificationProcessResult)

    Properties:
        code: (code) OPTIONAL str

        custom_param: (customParam) OPTIONAL Dict[str, Any]

        severity: (severity) OPTIONAL int

        status: (status) OPTIONAL Union[str, StatusEnum]
    """

    # region fields

    code: str  # OPTIONAL
    custom_param: Dict[str, Any]  # OPTIONAL
    severity: int  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> NotificationProcessResult:
        self.code = value
        return self

    def with_custom_param(self, value: Dict[str, Any]) -> NotificationProcessResult:
        self.custom_param = value
        return self

    def with_severity(self, value: int) -> NotificationProcessResult:
        self.severity = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> NotificationProcessResult:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "custom_param"):
            result["customParam"] = {
                str(k0): v0 for k0, v0 in self.custom_param.items()
            }
        elif include_empty:
            result["customParam"] = {}
        if hasattr(self, "severity"):
            result["severity"] = int(self.severity)
        elif include_empty:
            result["severity"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: Optional[str] = None,
        custom_param: Optional[Dict[str, Any]] = None,
        severity: Optional[int] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> NotificationProcessResult:
        instance = cls()
        if code is not None:
            instance.code = code
        if custom_param is not None:
            instance.custom_param = custom_param
        if severity is not None:
            instance.severity = severity
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> NotificationProcessResult:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "customParam" in dict_ and dict_["customParam"] is not None:
            instance.custom_param = {
                str(k0): v0 for k0, v0 in dict_["customParam"].items()
            }
        elif include_empty:
            instance.custom_param = {}
        if "severity" in dict_ and dict_["severity"] is not None:
            instance.severity = int(dict_["severity"])
        elif include_empty:
            instance.severity = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, NotificationProcessResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[NotificationProcessResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        NotificationProcessResult,
        List[NotificationProcessResult],
        Dict[Any, NotificationProcessResult],
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
            "code": "code",
            "customParam": "custom_param",
            "severity": "severity",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": False,
            "customParam": False,
            "severity": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ERROR", "IGNORED", "PROCESSED", "WARN"],
        }

    # endregion static methods
