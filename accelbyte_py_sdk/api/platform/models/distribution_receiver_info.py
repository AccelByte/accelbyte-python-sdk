# Auto-generated at 2021-10-14T22:17:16.248464+08:00
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


class DistributionReceiverInfo(Model):
    """Distribution receiver info (DistributionReceiverInfo)

    Properties:
        user_id: (userId) REQUIRED str

        namespace: (namespace) REQUIRED str

        ext_user_id: (extUserId) REQUIRED str

        attributes: (attributes) OPTIONAL Dict[str, str]
    """

    # region fields

    user_id: str                                                                                   # REQUIRED
    namespace: str                                                                                 # REQUIRED
    ext_user_id: str                                                                               # REQUIRED
    attributes: Dict[str, str]                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_id(self, value: str) -> DistributionReceiverInfo:
        self.user_id = value
        return self

    def with_namespace(self, value: str) -> DistributionReceiverInfo:
        self.namespace = value
        return self

    def with_ext_user_id(self, value: str) -> DistributionReceiverInfo:
        self.ext_user_id = value
        return self

    def with_attributes(self, value: Dict[str, str]) -> DistributionReceiverInfo:
        self.attributes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "ext_user_id") and self.ext_user_id:
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = str()
        if hasattr(self, "attributes") and self.attributes:
            result["attributes"] = {str(k0): str(v0) for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_id: str,
        namespace: str,
        ext_user_id: str,
        attributes: Optional[Dict[str, str]] = None,
    ) -> DistributionReceiverInfo:
        instance = cls()
        instance.user_id = user_id
        instance.namespace = namespace
        instance.ext_user_id = ext_user_id
        if attributes is not None:
            instance.attributes = attributes
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> DistributionReceiverInfo:
        instance = cls()
        if not dict_:
            return instance
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = str()
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {str(k0): str(v0) for k0, v0 in dict_["attributes"].items()}
        elif include_empty:
            instance.attributes = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "userId": "user_id",
            "namespace": "namespace",
            "extUserId": "ext_user_id",
            "attributes": "attributes",
        }

    # endregion static methods
