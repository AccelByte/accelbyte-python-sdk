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


class PlatformSubscribeRequest(Model):
    """Platform subscribe request (PlatformSubscribeRequest)

    Properties:
        grant_days: (grantDays) REQUIRED int

        item_id: (itemId) REQUIRED str

        language: (language) OPTIONAL str

        reason: (reason) OPTIONAL str

        region: (region) OPTIONAL str

        source: (source) OPTIONAL str
    """

    # region fields

    grant_days: int                                                                                # REQUIRED
    item_id: str                                                                                   # REQUIRED
    language: str                                                                                  # OPTIONAL
    reason: str                                                                                    # OPTIONAL
    region: str                                                                                    # OPTIONAL
    source: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_grant_days(self, value: int) -> PlatformSubscribeRequest:
        self.grant_days = value
        return self

    def with_item_id(self, value: str) -> PlatformSubscribeRequest:
        self.item_id = value
        return self

    def with_language(self, value: str) -> PlatformSubscribeRequest:
        self.language = value
        return self

    def with_reason(self, value: str) -> PlatformSubscribeRequest:
        self.reason = value
        return self

    def with_region(self, value: str) -> PlatformSubscribeRequest:
        self.region = value
        return self

    def with_source(self, value: str) -> PlatformSubscribeRequest:
        self.source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "grant_days"):
            result["grantDays"] = int(self.grant_days)
        elif include_empty:
            result["grantDays"] = int()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        grant_days: int,
        source: Optional[str] = None,
        reason: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> PlatformSubscribeRequest:
        instance = cls()
        instance.item_id = item_id
        instance.grant_days = grant_days
        if source is not None:
            instance.source = source
        if reason is not None:
            instance.reason = reason
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlatformSubscribeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "grantDays" in dict_ and dict_["grantDays"] is not None:
            instance.grant_days = int(dict_["grantDays"])
        elif include_empty:
            instance.grant_days = int()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "grantDays": "grant_days",
            "itemId": "item_id",
            "language": "language",
            "reason": "reason",
            "region": "region",
            "source": "source",
        }

    # endregion static methods
