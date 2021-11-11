# justice-platform-service (3.37.1)

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


class FulfillmentScriptInfo(Model):
    """Fulfillment script info (FulfillmentScriptInfo)

    Properties:
        grant_days: (grantDays) OPTIONAL str

        id_: (id) OPTIONAL str
    """

    # region fields

    grant_days: str                                                                                # OPTIONAL
    id_: str                                                                                       # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_grant_days(self, value: str) -> FulfillmentScriptInfo:
        self.grant_days = value
        return self

    def with_id(self, value: str) -> FulfillmentScriptInfo:
        self.id_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "grant_days"):
            result["grantDays"] = str(self.grant_days)
        elif include_empty:
            result["grantDays"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        grant_days: Optional[str] = None,
        id_: Optional[str] = None,
    ) -> FulfillmentScriptInfo:
        instance = cls()
        if grant_days is not None:
            instance.grant_days = grant_days
        if id_ is not None:
            instance.id_ = id_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentScriptInfo:
        instance = cls()
        if not dict_:
            return instance
        if "grantDays" in dict_ and dict_["grantDays"] is not None:
            instance.grant_days = str(dict_["grantDays"])
        elif include_empty:
            instance.grant_days = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "grantDays": "grant_days",
            "id": "id_",
        }

    # endregion static methods
