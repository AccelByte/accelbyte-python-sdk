# Auto-generated at 2021-09-21T14:10:38.794787+08:00
# from: Justice Platform Service (3.24.0)

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


class MockIAPReceipt(Model):
    """Mock IAP receipt

    Properties:
        type_: (type) REQUIRED str

        product_id: (productId) REQUIRED str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str
    """

    # region fields

    type_: str                                                                                     # REQUIRED
    product_id: str                                                                                # REQUIRED
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_type(self, value: str) -> MockIAPReceipt:
        self.type_ = value
        return self

    def with_product_id(self, value: str) -> MockIAPReceipt:
        self.product_id = value
        return self

    def with_region(self, value: str) -> MockIAPReceipt:
        self.region = value
        return self

    def with_language(self, value: str) -> MockIAPReceipt:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "product_id") and self.product_id:
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        type_: str,
        product_id: str,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> MockIAPReceipt:
        instance = cls()
        instance.type_ = type_
        instance.product_id = product_id
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> MockIAPReceipt:
        instance = cls()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "type": "type_",
            "productId": "product_id",
            "region": "region",
            "language": "language",
        }

    # endregion static methods
