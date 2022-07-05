# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
from typing import Dict, Tuple, Union

from ._headerstr import HeaderStr
from ._utils import create_basic_authentication
from ._utils import generate_amazon_xray_trace_id

import accelbyte_py_sdk

HEADER_AUTHORIZATION_KEY: str = "Authorization"
HEADER_COOKIE_KEY: str = "Cookie"
HEADER_USER_AGENT_KEY: str = "User-Agent"
HEADER_X_AMAZON_TRACE_ID_KEY: str = "X-Amzn-Trace-Id"


class Header(dict):
    def add_authorization(self, authorization: str) -> Header:
        self[HEADER_AUTHORIZATION_KEY] = authorization
        return self

    def add_basic_authorization(self, username: str, password: str) -> Header:
        return self.add_authorization(create_basic_authentication(username, password))

    def add_basic_authorization2(self, auth: Tuple[str, str]) -> Header:
        return self.add_basic_authorization(*auth)

    def add_bearer_authorization(self, token: str) -> Header:
        return self.add_authorization(f"Bearer {token}")

    def add_amazon_xray_trace_id(
        self, amazon_xray_trace_id: Union[None, str] = None
    ) -> Header:
        if amazon_xray_trace_id is None:
            amazon_xray_trace_id = generate_amazon_xray_trace_id()
        self[HEADER_X_AMAZON_TRACE_ID_KEY] = amazon_xray_trace_id
        return self

    def add_cookie(
        self, key: str, value: str, replace_existing: bool = False
    ) -> Header:
        if HEADER_COOKIE_KEY in self:
            cookie_value = self[HEADER_COOKIE_KEY]
            if f"{key}=" in cookie_value and replace_existing:
                headerstr = HeaderStr.create_from_str(cookie_value)
                headerstr[key] = value
                self[HEADER_COOKIE_KEY] = str(headerstr)
            else:
                self[HEADER_COOKIE_KEY] = cookie_value + f"; {key}={value}"
        else:
            self[HEADER_COOKIE_KEY] = f"{key}={value}"
        return self

    def add_user_agent(
        self,
        user_agent: Union[None, str] = None,
        app_info: Union[None, Union[str, Tuple[str, str]]] = None,
    ) -> Header:
        if user_agent is None:
            product = accelbyte_py_sdk.__product__
            product_version = accelbyte_py_sdk.__version__
            user_agent = f"{product}/{product_version}"
            if app_info is not None:
                app_name = None
                app_version = None
                if isinstance(app_info, tuple):
                    app_name, app_version = app_info
                elif isinstance(app_info, str):
                    app_name = app_info
                if app_name:
                    user_agent += f" ({app_name}"
                    if app_version:
                        user_agent += f"/{app_version}"
                    user_agent += ")"
        self[HEADER_USER_AGENT_KEY] = user_agent
        return self

    def has_amazon_xray_trace_id(self) -> bool:
        return HEADER_X_AMAZON_TRACE_ID_KEY in self

    def has_authorization(self) -> bool:
        return HEADER_AUTHORIZATION_KEY in self

    def has_cookie(self) -> bool:
        return HEADER_COOKIE_KEY in self

    def has_cookie_key(self, key: str) -> bool:
        return self.has_cookie() and f"{key}=" in self[HEADER_COOKIE_KEY]

    def has_user_agent(self) -> bool:
        return HEADER_USER_AGENT_KEY in self

    @classmethod
    def create_from_dict(cls, dict_: Dict[str, str]):
        instance = cls()
        for k, v in dict_.items():
            instance[k] = v
        return instance
