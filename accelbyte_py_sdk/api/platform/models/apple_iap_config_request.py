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


class AppleIAPConfigRequest(Model):
    """Apple IAP config request (AppleIAPConfigRequest)

    Properties:
        bundle_id: (bundleId) REQUIRED str

        password: (password) OPTIONAL str
    """

    # region fields

    bundle_id: str                                                                                 # REQUIRED
    password: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_bundle_id(self, value: str) -> AppleIAPConfigRequest:
        self.bundle_id = value
        return self

    def with_password(self, value: str) -> AppleIAPConfigRequest:
        self.password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bundle_id"):
            result["bundleId"] = str(self.bundle_id)
        elif include_empty:
            result["bundleId"] = str()
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        bundle_id: str,
        password: Optional[str] = None,
    ) -> AppleIAPConfigRequest:
        instance = cls()
        instance.bundle_id = bundle_id
        if password is not None:
            instance.password = password
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AppleIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
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
            "bundleId": "bundle_id",
            "password": "password",
        }

    # endregion static methods
