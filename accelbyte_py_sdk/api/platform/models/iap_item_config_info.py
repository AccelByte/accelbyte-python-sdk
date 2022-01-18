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

from ..models.iap_item_entry import IAPItemEntry


class IAPItemConfigInfo(Model):
    """IAP item config info (IAPItemConfigInfo)

    Properties:
        data: (data) OPTIONAL List[IAPItemEntry]
    """

    # region fields

    data: List[IAPItemEntry]                                                                       # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_data(self, value: List[IAPItemEntry]) -> IAPItemConfigInfo:
        self.data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [i0.to_dict(include_empty=include_empty) for i0 in self.data]
        elif include_empty:
            result["data"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: Optional[List[IAPItemEntry]] = None,
    ) -> IAPItemConfigInfo:
        instance = cls()
        if data is not None:
            instance.data = data
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> IAPItemConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [IAPItemEntry.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["data"]]
        elif include_empty:
            instance.data = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "data": "data",
        }

    # endregion static methods
