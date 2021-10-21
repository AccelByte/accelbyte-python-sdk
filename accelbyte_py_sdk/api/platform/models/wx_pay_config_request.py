# Auto-generated at 2021-10-21T08:52:30.811178+08:00
# from: Justice platform Service (3.34.0)

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


class WxPayConfigRequest(Model):
    """A DTO object for updating wxpay config. (WxPayConfigRequest)

    Properties:
        app_id: (appId) OPTIONAL str

        mchid: (mchid) OPTIONAL str

        key: (key) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str
    """

    # region fields

    app_id: str                                                                                    # OPTIONAL
    mchid: str                                                                                     # OPTIONAL
    key: str                                                                                       # OPTIONAL
    return_url: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> WxPayConfigRequest:
        self.app_id = value
        return self

    def with_mchid(self, value: str) -> WxPayConfigRequest:
        self.mchid = value
        return self

    def with_key(self, value: str) -> WxPayConfigRequest:
        self.key = value
        return self

    def with_return_url(self, value: str) -> WxPayConfigRequest:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id") and self.app_id:
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "mchid") and self.mchid:
            result["mchid"] = str(self.mchid)
        elif include_empty:
            result["mchid"] = str()
        if hasattr(self, "key") and self.key:
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = str()
        if hasattr(self, "return_url") and self.return_url:
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: Optional[str] = None,
        mchid: Optional[str] = None,
        key: Optional[str] = None,
        return_url: Optional[str] = None,
    ) -> WxPayConfigRequest:
        instance = cls()
        if app_id is not None:
            instance.app_id = app_id
        if mchid is not None:
            instance.mchid = mchid
        if key is not None:
            instance.key = key
        if return_url is not None:
            instance.return_url = return_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> WxPayConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "mchid" in dict_ and dict_["mchid"] is not None:
            instance.mchid = str(dict_["mchid"])
        elif include_empty:
            instance.mchid = str()
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "appId": "app_id",
            "mchid": "mchid",
            "key": "key",
            "returnUrl": "return_url",
        }

    # endregion static methods
