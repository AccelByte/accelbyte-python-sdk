from __future__ import annotations
from typing import Tuple, Union

from ._utils import create_basic_authentication
from ._utils import generate_amazon_xray_trace_id


class Header(dict):

    def add_authorization(self, authorization: str) -> Header:
        self["Authorization"] = authorization
        return self

    def add_basic_authorization(self, username: str, password: str) -> Header:
        return self.add_authorization(create_basic_authentication(username, password))

    def add_basic_authorization2(self, auth: Tuple[str, str]) -> Header:
        return self.add_basic_authorization(*auth)

    def add_bearer_authorization(self, token: str) -> Header:
        return self.add_authorization(f"Bearer {token}")

    def add_amazon_xray_trace_id(self, amazon_xray_trace_id: Union[None, str] = None) -> Header:
        if amazon_xray_trace_id is None:
            amazon_xray_trace_id = generate_amazon_xray_trace_id()
        self["X-Amzn-TraceId"] = amazon_xray_trace_id
        return self
