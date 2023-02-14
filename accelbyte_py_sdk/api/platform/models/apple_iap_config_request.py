# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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

    bundle_id: str  # REQUIRED
    password: str  # OPTIONAL

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
            result["bundleId"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AppleIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "bundleId" in dict_ and dict_["bundleId"] is not None:
            instance.bundle_id = str(dict_["bundleId"])
        elif include_empty:
            instance.bundle_id = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AppleIAPConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AppleIAPConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AppleIAPConfigRequest,
        List[AppleIAPConfigRequest],
        Dict[Any, AppleIAPConfigRequest],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "bundleId": "bundle_id",
            "password": "password",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bundleId": True,
            "password": False,
        }

    # endregion static methods
