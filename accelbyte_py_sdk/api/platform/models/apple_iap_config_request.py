# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum


class VersionEnum(StrEnum):
    V1 = "V1"
    V2 = "V2"


class AppleIAPConfigRequest(Model):
    """Apple IAP config request (AppleIAPConfigRequest)

    Properties:
        bundle_id: (bundleId) REQUIRED str

        app_apple_id: (appAppleId) OPTIONAL int

        issuer_id: (issuerId) OPTIONAL str

        key_id: (keyId) OPTIONAL str

        password: (password) OPTIONAL str

        version: (version) OPTIONAL Union[str, VersionEnum]
    """

    # region fields

    bundle_id: str  # REQUIRED
    app_apple_id: int  # OPTIONAL
    issuer_id: str  # OPTIONAL
    key_id: str  # OPTIONAL
    password: str  # OPTIONAL
    version: Union[str, VersionEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_bundle_id(self, value: str) -> AppleIAPConfigRequest:
        self.bundle_id = value
        return self

    def with_app_apple_id(self, value: int) -> AppleIAPConfigRequest:
        self.app_apple_id = value
        return self

    def with_issuer_id(self, value: str) -> AppleIAPConfigRequest:
        self.issuer_id = value
        return self

    def with_key_id(self, value: str) -> AppleIAPConfigRequest:
        self.key_id = value
        return self

    def with_password(self, value: str) -> AppleIAPConfigRequest:
        self.password = value
        return self

    def with_version(self, value: Union[str, VersionEnum]) -> AppleIAPConfigRequest:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bundle_id"):
            result["bundleId"] = str(self.bundle_id)
        elif include_empty:
            result["bundleId"] = ""
        if hasattr(self, "app_apple_id"):
            result["appAppleId"] = int(self.app_apple_id)
        elif include_empty:
            result["appAppleId"] = 0
        if hasattr(self, "issuer_id"):
            result["issuerId"] = str(self.issuer_id)
        elif include_empty:
            result["issuerId"] = ""
        if hasattr(self, "key_id"):
            result["keyId"] = str(self.key_id)
        elif include_empty:
            result["keyId"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "version"):
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = Union[str, VersionEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        bundle_id: str,
        app_apple_id: Optional[int] = None,
        issuer_id: Optional[str] = None,
        key_id: Optional[str] = None,
        password: Optional[str] = None,
        version: Optional[Union[str, VersionEnum]] = None,
        **kwargs,
    ) -> AppleIAPConfigRequest:
        instance = cls()
        instance.bundle_id = bundle_id
        if app_apple_id is not None:
            instance.app_apple_id = app_apple_id
        if issuer_id is not None:
            instance.issuer_id = issuer_id
        if key_id is not None:
            instance.key_id = key_id
        if password is not None:
            instance.password = password
        if version is not None:
            instance.version = version
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
        if "appAppleId" in dict_ and dict_["appAppleId"] is not None:
            instance.app_apple_id = int(dict_["appAppleId"])
        elif include_empty:
            instance.app_apple_id = 0
        if "issuerId" in dict_ and dict_["issuerId"] is not None:
            instance.issuer_id = str(dict_["issuerId"])
        elif include_empty:
            instance.issuer_id = ""
        if "keyId" in dict_ and dict_["keyId"] is not None:
            instance.key_id = str(dict_["keyId"])
        elif include_empty:
            instance.key_id = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = Union[str, VersionEnum]()
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
            "appAppleId": "app_apple_id",
            "issuerId": "issuer_id",
            "keyId": "key_id",
            "password": "password",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bundleId": True,
            "appAppleId": False,
            "issuerId": False,
            "keyId": False,
            "password": False,
            "version": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "version": ["V1", "V2"],
        }

    # endregion static methods
