# justice-iam-service (4.4.1)

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


class ModelWebLinkingResponse(Model):
    """Model web linking response (model.WebLinkingResponse)

    Properties:
        third_party_url: (third_party_url) REQUIRED str
    """

    # region fields

    third_party_url: str                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_third_party_url(self, value: str) -> ModelWebLinkingResponse:
        self.third_party_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "third_party_url") and self.third_party_url:
            result["third_party_url"] = str(self.third_party_url)
        elif include_empty:
            result["third_party_url"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        third_party_url: str,
    ) -> ModelWebLinkingResponse:
        instance = cls()
        instance.third_party_url = third_party_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelWebLinkingResponse:
        instance = cls()
        if not dict_:
            return instance
        if "third_party_url" in dict_ and dict_["third_party_url"] is not None:
            instance.third_party_url = str(dict_["third_party_url"])
        elif include_empty:
            instance.third_party_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "third_party_url": "third_party_url",
        }

    # endregion static methods
