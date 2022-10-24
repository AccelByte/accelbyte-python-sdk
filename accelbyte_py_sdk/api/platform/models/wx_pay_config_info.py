# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class WxPayConfigInfo(Model):
    """A DTO object for wxpay config. (WxPayConfigInfo)

    Properties:
        app_id: (appId) OPTIONAL str

        cert_path: (certPath) OPTIONAL str

        key: (key) OPTIONAL str

        mchid: (mchid) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str
    """

    # region fields

    app_id: str  # OPTIONAL
    cert_path: str  # OPTIONAL
    key: str  # OPTIONAL
    mchid: str  # OPTIONAL
    return_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> WxPayConfigInfo:
        self.app_id = value
        return self

    def with_cert_path(self, value: str) -> WxPayConfigInfo:
        self.cert_path = value
        return self

    def with_key(self, value: str) -> WxPayConfigInfo:
        self.key = value
        return self

    def with_mchid(self, value: str) -> WxPayConfigInfo:
        self.mchid = value
        return self

    def with_return_url(self, value: str) -> WxPayConfigInfo:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "cert_path"):
            result["certPath"] = str(self.cert_path)
        elif include_empty:
            result["certPath"] = ""
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "mchid"):
            result["mchid"] = str(self.mchid)
        elif include_empty:
            result["mchid"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: Optional[str] = None,
        cert_path: Optional[str] = None,
        key: Optional[str] = None,
        mchid: Optional[str] = None,
        return_url: Optional[str] = None,
    ) -> WxPayConfigInfo:
        instance = cls()
        if app_id is not None:
            instance.app_id = app_id
        if cert_path is not None:
            instance.cert_path = cert_path
        if key is not None:
            instance.key = key
        if mchid is not None:
            instance.mchid = mchid
        if return_url is not None:
            instance.return_url = return_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> WxPayConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "certPath" in dict_ and dict_["certPath"] is not None:
            instance.cert_path = str(dict_["certPath"])
        elif include_empty:
            instance.cert_path = ""
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "mchid" in dict_ and dict_["mchid"] is not None:
            instance.mchid = str(dict_["mchid"])
        elif include_empty:
            instance.mchid = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, WxPayConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[WxPayConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[WxPayConfigInfo, List[WxPayConfigInfo], Dict[Any, WxPayConfigInfo]]:
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
            "appId": "app_id",
            "certPath": "cert_path",
            "key": "key",
            "mchid": "mchid",
            "returnUrl": "return_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": False,
            "certPath": False,
            "key": False,
            "mchid": False,
            "returnUrl": False,
        }

    # endregion static methods
