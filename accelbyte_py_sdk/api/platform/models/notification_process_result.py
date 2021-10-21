# justice-platform-service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class NotificationProcessResult(Model):
    """Notification process result (NotificationProcessResult)

    Properties:
        status: (status) OPTIONAL str

        code: (code) OPTIONAL str

        custom_param: (customParam) OPTIONAL Dict[str, Any]

        severity: (severity) OPTIONAL int
    """

    # region fields

    status: str                                                                                    # OPTIONAL
    code: str                                                                                      # OPTIONAL
    custom_param: Dict[str, Any]                                                                   # OPTIONAL
    severity: int                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> NotificationProcessResult:
        self.status = value
        return self

    def with_code(self, value: str) -> NotificationProcessResult:
        self.code = value
        return self

    def with_custom_param(self, value: Dict[str, Any]) -> NotificationProcessResult:
        self.custom_param = value
        return self

    def with_severity(self, value: int) -> NotificationProcessResult:
        self.severity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "custom_param") and self.custom_param:
            result["customParam"] = {str(k0): v0 for k0, v0 in self.custom_param.items()}
        elif include_empty:
            result["customParam"] = {}
        if hasattr(self, "severity") and self.severity:
            result["severity"] = int(self.severity)
        elif include_empty:
            result["severity"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: Optional[str] = None,
        code: Optional[str] = None,
        custom_param: Optional[Dict[str, Any]] = None,
        severity: Optional[int] = None,
    ) -> NotificationProcessResult:
        instance = cls()
        if status is not None:
            instance.status = status
        if code is not None:
            instance.code = code
        if custom_param is not None:
            instance.custom_param = custom_param
        if severity is not None:
            instance.severity = severity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> NotificationProcessResult:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "customParam" in dict_ and dict_["customParam"] is not None:
            instance.custom_param = {str(k0): v0 for k0, v0 in dict_["customParam"].items()}
        elif include_empty:
            instance.custom_param = {}
        if "severity" in dict_ and dict_["severity"] is not None:
            instance.severity = int(dict_["severity"])
        elif include_empty:
            instance.severity = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "status": "status",
            "code": "code",
            "customParam": "custom_param",
            "severity": "severity",
        }

    # endregion static methods
