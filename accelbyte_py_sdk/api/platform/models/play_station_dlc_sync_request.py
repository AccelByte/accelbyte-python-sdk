# justice-platform-service (4.1.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class PlayStationDLCSyncRequest(Model):
    """Play station DLC sync request (PlayStationDLCSyncRequest)

    Properties:
        service_label: (serviceLabel) OPTIONAL int
    """

    # region fields

    service_label: int                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_service_label(self, value: int) -> PlayStationDLCSyncRequest:
        self.service_label = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "service_label"):
            result["serviceLabel"] = int(self.service_label)
        elif include_empty:
            result["serviceLabel"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        service_label: Optional[int] = None,
    ) -> PlayStationDLCSyncRequest:
        instance = cls()
        if service_label is not None:
            instance.service_label = service_label
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlayStationDLCSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "serviceLabel" in dict_ and dict_["serviceLabel"] is not None:
            instance.service_label = int(dict_["serviceLabel"])
        elif include_empty:
            instance.service_label = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "serviceLabel": "service_label",
        }

    # endregion static methods
