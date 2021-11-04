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


class SubscribeRequest(Model):
    """Subscribe request (SubscribeRequest)

    Properties:
        item_id: (itemId) REQUIRED str

        currency_code: (currencyCode) REQUIRED str

        source: (source) OPTIONAL str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str
    """

    # region fields

    item_id: str                                                                                   # REQUIRED
    currency_code: str                                                                             # REQUIRED
    source: str                                                                                    # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    return_url: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> SubscribeRequest:
        self.item_id = value
        return self

    def with_currency_code(self, value: str) -> SubscribeRequest:
        self.currency_code = value
        return self

    def with_source(self, value: str) -> SubscribeRequest:
        self.source = value
        return self

    def with_region(self, value: str) -> SubscribeRequest:
        self.region = value
        return self

    def with_language(self, value: str) -> SubscribeRequest:
        self.language = value
        return self

    def with_return_url(self, value: str) -> SubscribeRequest:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        currency_code: str,
        source: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        return_url: Optional[str] = None,
    ) -> SubscribeRequest:
        instance = cls()
        instance.item_id = item_id
        instance.currency_code = currency_code
        if source is not None:
            instance.source = source
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        if return_url is not None:
            instance.return_url = return_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SubscribeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemId": "item_id",
            "currencyCode": "currency_code",
            "source": "source",
            "region": "region",
            "language": "language",
            "returnUrl": "return_url",
        }

    # endregion static methods
