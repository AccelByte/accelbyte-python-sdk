# Auto-generated at 2021-09-21T14:10:38.788436+08:00
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


class AppleIAPConfigInfo(Model):
    """Apple IAP config info

    Properties:
        namespace: (namespace) REQUIRED str

        bundle_id: (bundleId) REQUIRED str

        password: (password) OPTIONAL str
    """

    # region fields

    namespace: str                                                                                 # REQUIRED
    bundle_id: str                                                                                 # REQUIRED
    password: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> AppleIAPConfigInfo:
        self.namespace = value
        return self

    def with_bundle_id(self, value: str) -> AppleIAPConfigInfo:
        self.bundle_id = value
        return self

    def with_password(self, value: str) -> AppleIAPConfigInfo:
        self.password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "bundle_id") and self.bundle_id:
            result["bundleId"] = str(self.bundle_id)
        elif include_empty:
            result["bundleId"] = str()
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        bundle_id: str,
        password: Optional[str] = None,
    ) -> AppleIAPConfigInfo:
        instance = cls()
        instance.namespace = namespace
        instance.bundle_id = bundle_id
        if password is not None:
            instance.password = password
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AppleIAPConfigInfo:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "bundleId" in dict_ and dict_["bundleId"] is not None:
            instance.bundle_id = str(dict_["bundleId"])
        elif include_empty:
            instance.bundle_id = str()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "bundleId": "bundle_id",
            "password": "password",
        }

    # endregion static methods
