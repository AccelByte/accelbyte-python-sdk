# justice-platform-service (3.39.0)

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


class OrderUpdate(Model):
    """A DTO object for updating order API call. (OrderUpdate)

    Properties:
        status: (status) REQUIRED str

        status_reason: (statusReason) REQUIRED str
    """

    # region fields

    status: str                                                                                    # REQUIRED
    status_reason: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> OrderUpdate:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> OrderUpdate:
        self.status_reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: str,
        status_reason: str,
    ) -> OrderUpdate:
        instance = cls()
        instance.status = status
        instance.status_reason = status_reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "status": "status",
            "statusReason": "status_reason",
        }

    # endregion static methods
