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


class DistributionReceiverCreate(Model):
    """A DTO object for creating distribution receiver. (DistributionReceiverCreate)

    Properties:
        attributes: (attributes) OPTIONAL Dict[str, str]
    """

    # region fields

    attributes: Dict[str, str]                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, str]) -> DistributionReceiverCreate:
        self.attributes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): str(v0) for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Optional[Dict[str, str]] = None,
    ) -> DistributionReceiverCreate:
        instance = cls()
        if attributes is not None:
            instance.attributes = attributes
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> DistributionReceiverCreate:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {str(k0): str(v0) for k0, v0 in dict_["attributes"].items()}
        elif include_empty:
            instance.attributes = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "attributes": "attributes",
        }

    # endregion static methods
