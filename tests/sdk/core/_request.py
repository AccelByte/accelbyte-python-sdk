from __future__ import annotations

import asyncio
import os
import time
from datetime import datetime, timedelta
from pathlib import Path
from typing import Any, Dict, List, Optional
from unittest import TestCase, IsolatedAsyncioTestCase

import requests

from accelbyte_py_sdk import initialize
from accelbyte_py_sdk import is_initialized
from accelbyte_py_sdk import reset

from accelbyte_py_sdk.core import TokenRepository
from accelbyte_py_sdk.core import DictConfigRepository
from accelbyte_py_sdk.core import MyTokenRepository

from accelbyte_py_sdk.core import HttpResponse
from accelbyte_py_sdk.core import Model
from accelbyte_py_sdk.core import Operation

from accelbyte_py_sdk.core import create_proto_from_operation
from accelbyte_py_sdk.core import get_http_client


class TestConfigRepository(DictConfigRepository):
    def __init__(self, data: Optional[Dict[Any, Any]] = None):
        if data is None:
            data = {}
        super().__init__(data)


class TestTokenRepository(MyTokenRepository):
    def __init__(self, token: Any = None):
        self.counter = 0
        super().__init__(token)

    def store_token(self, token: Any) -> bool:
        if token is not None:
            super().store_token(token=token)
            self.counter += 1
            return True
        return False


class TestModel(Model):
    def __init__(self, *, a: Any = None, b: Any = None, c: Any = None, **kwargs):
        self.a = a
        self.b = b
        self.c = c
        self.kwargs = kwargs

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "a") and self.a:
            result["a"] = self.a
        elif include_empty:
            result["a"] = None
        if hasattr(self, "b") and self.b:
            result["b"] = self.b
        elif include_empty:
            result["b"] = None
        if hasattr(self, "c") and self.c:
            result["c"] = self.c
        elif include_empty:
            result["c"] = None
        for key, value in self.kwargs.items():
            result[key] = value
        return result

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TestModel:
        instance = cls()
        if not dict_:
            return instance
        if "a" in dict_ and dict_["a"] is not None:
            instance.a = str(dict_["a"])
        elif include_empty:
            instance.a = None
        if "b" in dict_ and dict_["b"] is not None:
            instance.b = str(dict_["b"])
        elif include_empty:
            instance.b = None
        if "c" in dict_ and dict_["c"] is not None:
            instance.c = str(dict_["c"])
        elif include_empty:
            instance.c = None
        for key, value in dict_.items():
            if key in ["a", "b", "c"]:
                continue
            setattr(instance, key, value)
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "a": "a",
            "b": "b",
            "c": "c",
        }


class RequestTestCase(TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        if is_initialized():
            reset()

        initialize()

    def test_body_params_serialization(self):
        class TestOperation(Operation):
            def __init__(self, body: TestModel):
                self.url = "/foo"
                self.body = body

            def get_all_params(self) -> dict:
                return {
                    "body": self.get_body_params(),
                }

            def get_body_params(self) -> Any:
                if not hasattr(self, "body") or self.body is None:
                    return None
                return self.body.to_dict()

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "body": "body",
                }

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation(
                body=TestModel(greeting="Hello World!"),
            ),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertEqual(b'{"greeting": "Hello World!"}', request.body)

    def test_form_data_file_upload(self):
        from io import BytesIO

        class TestOperation(Operation):
            def __init__(self, file: Any):
                self.url = "/foo"
                self.file = file

            def get_all_params(self) -> dict:
                return {
                    "form_data": self.get_form_data_params(),
                }

            def get_form_data_params(self) -> dict:
                result = {}
                if hasattr(self, "file"):
                    result["file"] = self.file
                return result

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "file": "file",
                }

        # arrange
        bio = BytesIO(b"foomanchoo")
        proto, error = create_proto_from_operation(
            operation=TestOperation(
                file=bio,
            ),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertIsNotNone(request.body)

        request_body_str = str(request.body)
        self.assertIn('filename="file"', request_body_str)
        self.assertIn("foomanchoo", request_body_str)

    def test_form_data_params_are_url_escaped(self):
        class TestOperation(Operation):
            def __init__(self, status: str):
                self.url = "/foo"
                self.status = status

            def get_all_params(self) -> dict:
                return {
                    "form_data": self.get_form_data_params(),
                }

            def get_form_data_params(self) -> dict:
                result = {}
                if hasattr(self, "status"):
                    result["status"] = self.status
                return result

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "status": "status",
                }

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation(
                status="#ABC!",
            ),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertEqual("status=%23ABC%21", request.body)

    def test_header_cookie_are_escaped(self):
        from accelbyte_py_sdk.core import HeaderStr

        class TestOperation(Operation):
            def __init__(self):
                self.url = "/foo"
                self.cookie = HeaderStr()

            def get_all_params(self) -> dict:
                return {
                    "header": self.get_header_params(),
                }

            def get_header_params(self) -> dict:
                result = {}
                if hasattr(self, "cookie"):
                    result["Cookie"] = str(self.cookie)
                return result

            def with_cookie_access_token(self, value: str):
                if not hasattr(self, "cookie"):
                    self.cookie = HeaderStr()
                self.cookie["access_token"] = value
                return self

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "Cookie": "cookie",
                }

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation().with_cookie_access_token("%20 ABC"),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertEqual(f"access_token=%2520%20ABC", request.headers.get("Cookie"))

    def test_header_user_agent_are_added(self):
        from accelbyte_py_sdk import __version__ as sdk_version

        class TestOperation(Operation):
            def __init__(self):
                self.url = "/foo"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation(),
            config_repo=TestConfigRepository(
                {"appName": "Test", "appVersion": "1.0.0", "autoAddAmazonTraceId": True}
            ),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertEqual(
            f"AccelBytePythonSDK/{sdk_version} (Test/1.0.0)",
            request.headers.get("User-Agent"),
        )

    def test_header_x_amazon_trace_id_are_added(self):
        class TestOperation(Operation):
            def __init__(self):
                self.url = "/foo"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation(),
            config_repo=TestConfigRepository({"autoAddAmazonTraceId": True}),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertIn("X-Amzn-Trace-Id", request.headers)

    def test_model_serialization(self):
        import json

        class TestOperation(Operation):
            def __init__(self):
                self.url = "/foo"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                return TestModel.create_from_dict(content), None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "body": "body",
                }

        # arrange
        json_str = """{
    "a": "foo",
    "b": "bar",
    "c": "baz",
    "d": "qux"
}
"""
        json_obj = json.loads(json_str)

        # act
        result, error = TestOperation().parse_response(
            200, content_type="application/json", content=json_obj
        )

        # assert
        self.assertIsInstance(result, TestModel)
        self.assertEqual("foo", result.a)
        self.assertEqual("bar", result.b)
        self.assertEqual("baz", result.c)
        self.assertTrue(hasattr(result, "d"))
        self.assertEqual("qux", getattr(result, "d"))

    def test_path_params_are_url_escaped(self):
        class TestOperation(Operation):
            def __init__(self, namespace: str, user_id: str):
                self.url = "/admin/namespaces/{namespace}/user/{userId}"
                self.namespace = namespace
                self.user_id = user_id

            def get_all_params(self) -> dict:
                return {
                    "path": self.get_path_params(),
                }

            def get_path_params(self) -> dict:
                result = {}
                if hasattr(self, "namespace"):
                    result["namespace"] = self.namespace
                if hasattr(self, "user_id"):
                    result["userId"] = self.user_id
                return result

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "namespace": "namespace",
                    "userId": "user_id",
                }

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation(
                namespace="abc!@#$%^&*()", user_id="{}[]<>:;,.?|\\\"'"
            ),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual(
            "http://0.0.0.0:8080/admin/namespaces/abc!@#$%25%5E&*()/user/%7B%7D%5B%5D%3C%3E:;,.?%7C%5C%22'",
            request.url,
        )

    def test_query_params_are_url_escaped(self):
        class TestOperation(Operation):
            def __init__(self, filter_: List[str], status: str):
                self.url = "/foo"
                self.filter_ = filter_
                self.status = status

            def get_all_params(self) -> dict:
                return {
                    "query": self.get_query_params(),
                }

            def get_query_params(self) -> dict:
                result = {}
                if hasattr(self, "filter_"):
                    result["filter"] = self.filter_
                if hasattr(self, "status"):
                    result["status"] = self.status
                return result

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "filter": "filter_",
                    "status": "status",
                }

        # arrange
        proto, error = create_proto_from_operation(
            operation=TestOperation(
                filter_=["a@t", "p%PCent"],
                status="#ABC!",
            ),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual(
            "http://0.0.0.0:8080/foo?filter=a%40t,p%25PCent&status=%23ABC%21",
            request.url,
        )


class HttpBinRequestTestCase(TestCase):

    reachable: bool = True
    base_url: str = "http://localhost"

    @classmethod
    def setUpClass(cls) -> None:
        import requests

        cls.reachable = True

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            response = requests.get(cls.base_url)
            if response.status_code != 200:
                cls.reachable = False
        except:
            cls.reachable = False

        if is_initialized():
            reset()

        if cls.reachable:
            initialize()

    def setUp(self) -> None:
        if not self.reachable:
            self.skipTest(reason=f"'{self.base_url}' unreachable.")

    def test_response_location_header(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(self, redirect_url: str):
                self.url = "/redirect-to"
                self.method = "GET"
                self.redirect_url = redirect_url
                self.location_query = "data"

            def get_all_params(self) -> dict:
                return {
                    "query": self.get_query_params(),
                }

            def get_query_params(self) -> dict:
                result = {}
                if hasattr(self, "redirect_url"):
                    result["url"] = self.redirect_url
                return result

            def has_redirects(self) -> bool:
                return True

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 302:
                    return HttpResponse.create_redirect(code, content), None
                else:
                    return None, None

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "url": "redirect_url",
                }

            @staticmethod
            def get_required_map() -> Dict[str, bool]:
                return {
                    "redirect_url": True,
                }

        # arrange
        operation = TestOperation(redirect_url="http://0.0.0.0:8080?data=foo")
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual(
            "https://httpbin.org/redirect-to?url=http%3A%2F%2F0.0.0.0%3A8080%3Fdata%3Dfoo",
            request.url,
        )
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        data, error = _post_run_request(
            operation=operation, response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertEqual("foo", data)

    def test_response_empty_body(self):
        from requests import Request
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                pre_processed_response, err = self.pre_process_response(
                    code=code, content_type=content_type, content=content
                )
                if err is not None:
                    return None, None if err.is_no_content() else err
                code, content_type, content = pre_processed_response

                if code == 200:
                    return content, None

                admin_get_bans_type_v3ocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        request = Request(method="GET", url=f"{self.base_url}/status/200").prepare()
        http_client = get_http_client()
        raw_response, error = http_client.send_request(request)
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertEqual("", result)

    def test_response_200_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class HttpBinJsonModel(Model):

            slideshow: Dict[str, Any]

            @classmethod
            def create_from_dict(
                cls, dict_: dict, include_empty: bool = False
            ) -> HttpBinJsonModel:
                instance = cls()
                if not dict_:
                    return instance
                if "slideshow" in dict_ and dict_["slideshow"] is not None:
                    instance.slideshow = dict(dict_["slideshow"])
                elif include_empty:
                    instance.slideshow = {}
                return instance

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "slideshow": "slideshow",
                }

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 200:
                    return HttpBinJsonModel.create_from_dict(content), None

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsInstance(result, HttpBinJsonModel)
        self.assertIsNotNone(result.slideshow)

    def test_response_201_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class HttpBinJsonModel(Model):

            slideshow: Dict[str, Any]

            @classmethod
            def create_from_dict(
                cls, dict_: dict, include_empty: bool = False
            ) -> HttpBinJsonModel:
                instance = cls()
                if not dict_:
                    return instance
                if "slideshow" in dict_ and dict_["slideshow"] is not None:
                    instance.slideshow = dict(dict_["slideshow"])
                elif include_empty:
                    instance.slideshow = {}
                return instance

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "slideshow": "slideshow",
                }

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 201:
                    return HttpBinJsonModel.create_from_dict(content), None

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 201  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsInstance(result, HttpBinJsonModel)
        self.assertIsNotNone(result.slideshow)

    def test_response_204_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 204:
                    return None, None

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 204  # monkey-patch
        raw_response.headers[
            "Content-Type"
        ] = "text/html; charset=utf-8"  # monkey-patch
        raw_response.json = lambda: None  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsNone(result)

    def test_response_200_binary_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/image/jpeg"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 200:
                    return content, None

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/image/jpeg", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsNotNone(result)
        self.assertTrue(len(result) > 0)

    def test_response_403_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class HttpBinJsonModel(Model):

            slideshow: Dict[str, Any]

            @classmethod
            def create_from_dict(
                cls, dict_: dict, include_empty: bool = False
            ) -> HttpBinJsonModel:
                instance = cls()
                if not dict_:
                    return instance
                if "slideshow" in dict_ and dict_["slideshow"] is not None:
                    instance.slideshow = dict(dict_["slideshow"])
                elif include_empty:
                    instance.slideshow = {}
                return instance

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "slideshow": "slideshow",
                }

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 403:
                    return None, HttpBinJsonModel.create_from_dict(content)

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 403  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, HttpBinJsonModel)
        self.assertIsNotNone(error.slideshow)

    def test_response_404_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class HttpBinJsonModel(Model):

            slideshow: Dict[str, Any]

            @classmethod
            def create_from_dict(
                cls, dict_: dict, include_empty: bool = False
            ) -> HttpBinJsonModel:
                instance = cls()
                if not dict_:
                    return instance
                if "slideshow" in dict_ and dict_["slideshow"] is not None:
                    instance.slideshow = dict(dict_["slideshow"])
                elif include_empty:
                    instance.slideshow = {}
                return instance

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "slideshow": "slideshow",
                }

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 404:
                    return None, HttpBinJsonModel.create_from_dict(content)

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 404  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, HttpBinJsonModel)
        self.assertIsNotNone(error.slideshow)

    def test_response_503_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class HttpBinJsonModel(Model):

            slideshow: Dict[str, Any]

            @classmethod
            def create_from_dict(
                cls, dict_: dict, include_empty: bool = False
            ) -> HttpBinJsonModel:
                instance = cls()
                if not dict_:
                    return instance
                if "slideshow" in dict_ and dict_["slideshow"] is not None:
                    instance.slideshow = dict(dict_["slideshow"])
                elif include_empty:
                    instance.slideshow = {}
                return instance

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {
                    "slideshow": "slideshow",
                }

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 503:
                    return None, HttpBinJsonModel.create_from_dict(content)

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 503  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, HttpBinJsonModel)
        self.assertIsNotNone(error.slideshow)

    def test_response_403_html_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/html"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 403:
                    return None, content

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/html", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 403  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, str)

    def test_response_404_html_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/html"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 404:
                    return None, content

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/html", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 404  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, str)

    def test_response_503_html_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/html"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 503:
                    return None, content

                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/html", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 503  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, str)

    def test_response_undocumented(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):
            def __init__(
                self,
            ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                return self.handle_undocumented_response(
                    code=code, content_type=content_type, content=content
                )

            @staticmethod
            def get_field_info() -> Dict[str, str]:
                return {}

        # arrange
        operation = TestOperation()
        proto, error = create_proto_from_operation(
            operation=operation,
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="https://httpbin.org",
        )
        self.assertIsNone(error)
        http_client = get_http_client()
        request = http_client.create_request(proto=proto)
        self.assertEqual("https://httpbin.org/json", request.url)
        raw_response, error = http_client.send_request(
            request, allow_redirects=not operation.has_redirects()
        )
        self.assertIsNone(error)
        raw_response.status_code = 200
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(), response=response, error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, HttpResponse)
        self.assertEqual("application/json", result.content_type)


class MockServerRequestTestCase(TestCase):

    reachable: bool = True
    base_url: str = "http://localhost:8080"
    ready_endpoint: str = f"{base_url}/ready"

    @classmethod
    def setUpClass(cls) -> None:
        import requests

        cls.reachable = True

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            response = requests.get(cls.ready_endpoint)
            if not response.ok:
                cls.reachable = False
        except:
            cls.reachable = False

        if is_initialized():
            reset()

    def setUp(self) -> None:
        if not self.reachable:
            self.skipTest(reason=f"'{self.base_url}' unreachable.")
        if is_initialized():
            reset()
        self.reset_overwrite_response()
        initialize(
            options={
                "config": "MyConfigRepository",
                "config_params": (
                    [self.base_url, "admin", "admin"],
                    {"namespace": "test"},
                ),
                "token": TestTokenRepository(),
                "http": "RequestsHttpClient",
            }
        )

    def tearDown(self) -> None:
        if is_initialized():
            reset()

    # noinspection PyMethodMayBeStatic
    def force_expiry_at(self, token_repo: TokenRepository, seconds: int):
        token = token_repo.get_token()
        expires_in = token_repo.get_expires_in()
        now_utc = datetime.utcnow()

        new_time_utc = now_utc + timedelta(seconds=seconds)
        new_timestamp = int(new_time_utc.timestamp())
        token.access_token = f"expiresAt:{new_timestamp}"

        new_issued_time_utc = (
            now_utc - timedelta(seconds=expires_in) + timedelta(seconds=seconds)
        )
        token_repo._token_issued_time = new_issued_time_utc

    def configure_overwrite_response(self, config: dict):
        response = requests.post(
            f"{self.base_url}/configure-overwrite-response", json=config
        )
        self.assertTrue(response.ok)

    def reset_overwrite_response(self):
        response = requests.post(f"{self.base_url}/reset-overwrite-response")
        self.assertTrue(response.ok)

    def validate_bearer_token(self, bearer_token: str) -> bool:
        response = requests.get(
            f"{self.base_url}/validate-bearer-auth",
            headers={"Authorization": f"Bearer {bearer_token.removeprefix('Bearer ')}"},
        )
        return response.ok

    def test_http_backoff_policy_constant(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import ConstantHttpBackoffPolicy
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 0:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.backoff_policy = ConstantHttpBackoffPolicy(0.5)
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(1)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        start = time.perf_counter()
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )
        duration = time.perf_counter() - start

        # assert
        self.assertEqual(0, n_retries)
        self.assertAlmostEqual(0.5, duration, delta=0.1)
        self.assertIsNone(error)

    def test_http_backoff_policy_exponential(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import ExponentialHttpBackoffPolicy
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.backoff_policy = ExponentialHttpBackoffPolicy(
            initial=0.25, multiplier=2.0
        )
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(5)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        start = time.perf_counter()
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )
        duration = time.perf_counter() - start

        # assert
        self.assertEqual(2, n_retries)
        self.assertAlmostEqual(0.25 + 0.5 + 1.0, duration, delta=0.5)
        self.assertIsNone(error)

    def test_http_retry_policy_n_retries(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(3)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )

        # assert
        self.assertEqual(2, n_retries)
        self.assertIsNone(error)

    def test_http_retry_policy_status_codes(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import StatusCodesHttpRetryPolicy

        status_codes = []

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            status_codes.append(response.status_code)
            if response.status_code == 500:
                self.configure_overwrite_response(
                    {"enabled": True, "overwrite": True, "status": 400}
                )
            elif response.status_code == 400:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, StatusCodesHttpRetryPolicy(400, 500)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 500}
        )

        # act
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )

        # assert
        self.assertEqual([500, 400], status_codes)
        self.assertIsNone(error)

    def test_http_retry_policy_files_read_once(self):
        from accelbyte_py_sdk.api.lobby import admin_import_config_v1
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_reads: int = 0
        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(3)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        tmp_file = Path("test.dat")
        try:
            size = 1024 * 1024 * 1024
            with tmp_file.open("wb") as tmp_handle:
                tmp_handle.write(os.urandom(size))
            with tmp_file.open("rb") as tmp_handle:
                old_read = tmp_handle.read

                def new_read(*args, **kwargs):
                    nonlocal n_reads
                    n_reads += 1
                    return old_read(*args, **kwargs)

                tmp_handle.read = (
                    new_read  # monkey-patch, to count how many reads we are doing
                )

                _, error = admin_import_config_v1(
                    file=tmp_handle,
                    x_additional_headers={"Authorization": "Bearer foo"},
                )
        finally:
            tmp_file.unlink(missing_ok=True)

        # assert
        self.assertEqual(2, n_retries)
        self.assertEqual(1, n_reads)
        self.assertIsNone(error)

    def test_auto_refresh_token_login_client(self):
        import accelbyte_py_sdk.core as core
        import accelbyte_py_sdk.services.auth as auth
        import accelbyte_py_sdk.api.iam as iam

        # arrange
        token_repo = core.get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual(0, token_repo.counter)

        result, error = auth.login_client(auto_refresh=True)
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        token = token_repo.get_token()

        # act & assert
        original_access_token = token.access_token
        self.force_expiry_at(token_repo, 5)
        modified_access_token = token.access_token
        self.assertEqual(1, token_repo.counter)
        self.assertNotEqual(original_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(modified_access_token))

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)

        time.sleep(5)

        token = token_repo.get_token()
        new_access_token = token.access_token
        self.assertEqual(2, token_repo.counter)
        self.assertNotEqual(new_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(new_access_token))

    def test_auto_refresh_token_login_user(self):
        import accelbyte_py_sdk.core as core
        import accelbyte_py_sdk.services.auth as auth
        import accelbyte_py_sdk.api.iam as iam

        # arrange
        token_repo = core.get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual(0, token_repo.counter)

        result, error = auth.login_user("admin", "admin", auto_refresh=True)
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        token = token_repo.get_token()

        # act & assert

        original_access_token = token.access_token
        self.force_expiry_at(token_repo, 5)
        modified_access_token = token.access_token
        self.assertEqual(1, token_repo.counter)
        self.assertNotEqual(original_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(modified_access_token))

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)

        time.sleep(5)

        token = token_repo.get_token()
        new_access_token = token.access_token
        self.assertEqual(2, token_repo.counter)
        self.assertNotEqual(new_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(new_access_token))


class AsyncMockServerRequestTestCase(IsolatedAsyncioTestCase):

    reachable: bool = True
    base_url: str = "http://localhost:8080"
    ready_endpoint: str = f"{base_url}/ready"

    @classmethod
    def setUpClass(cls) -> None:
        import requests

        cls.reachable = True

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            response = requests.get(cls.ready_endpoint)
            if not response.ok:
                cls.reachable = False
        except:
            cls.reachable = False

        if is_initialized():
            reset()

    async def asyncSetUp(self) -> None:
        if not self.reachable:
            self.skipTest(reason=f"'{self.base_url}' unreachable.")
        if is_initialized():
            reset()
        self.reset_overwrite_response()
        initialize(
            options={
                "config": "MyConfigRepository",
                "config_params": (
                    [self.base_url, "admin", "admin"],
                    {"namespace": "test"},
                ),
                "token": TestTokenRepository(),
                "http": "HttpxHttpClient",
            }
        )

    async def asyncTearDown(self) -> None:
        if is_initialized():
            reset()

    # noinspection PyMethodMayBeStatic
    def force_expiry_at(self, token_repo: TokenRepository, seconds: int):
        token = token_repo.get_token()
        expires_in = token_repo.get_expires_in()
        now_utc = datetime.utcnow()

        new_time_utc = now_utc + timedelta(seconds=seconds)
        new_timestamp = int(new_time_utc.timestamp())
        token.access_token = f"expiresAt:{new_timestamp}"

        new_issued_time_utc = (
            now_utc - timedelta(seconds=expires_in) + timedelta(seconds=seconds)
        )
        token_repo._token_issued_time = new_issued_time_utc

    def configure_overwrite_response(self, config: dict):
        response = requests.post(
            f"{self.base_url}/configure-overwrite-response", json=config
        )
        self.assertTrue(response.ok)

    def reset_overwrite_response(self):
        response = requests.post(f"{self.base_url}/reset-overwrite-response")
        self.assertTrue(response.ok)

    def validate_bearer_token(self, bearer_token: str) -> bool:
        response = requests.get(
            f"{self.base_url}/validate-bearer-auth",
            headers={"Authorization": f"Bearer {bearer_token.removeprefix('Bearer ')}"},
        )
        return response.ok

    def test_http_backoff_policy_constant(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import ConstantHttpBackoffPolicy
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 0:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.backoff_policy = ConstantHttpBackoffPolicy(0.5)
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(1)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        start = time.perf_counter()
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )
        duration = time.perf_counter() - start

        # assert
        self.assertEqual(0, n_retries)
        self.assertAlmostEqual(0.5, duration, places=1)
        self.assertIsNone(error)

    async def test_http_backoff_policy_constant_async(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated_async
        from accelbyte_py_sdk.core import ConstantHttpBackoffPolicy
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 0:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.backoff_policy = ConstantHttpBackoffPolicy(0.5)
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(1)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        start = time.perf_counter()
        result, error = await get_user_friends_updated_async(
            x_additional_headers={"Authorization": "Bearer foo"}
        )
        duration = time.perf_counter() - start

        # assert
        self.assertEqual(0, n_retries)
        self.assertAlmostEqual(0.5, duration, delta=0.1)
        self.assertIsNone(error)

    def test_http_backoff_policy_exponential(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import ExponentialHttpBackoffPolicy
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.backoff_policy = ExponentialHttpBackoffPolicy(
            initial=0.25, multiplier=2.0
        )
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(5)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        start = time.perf_counter()
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )
        duration = time.perf_counter() - start

        # assert
        self.assertEqual(2, n_retries)
        self.assertAlmostEqual(0.25 + 0.5 + 1.0, duration, delta=0.5)
        self.assertIsNone(error)

    async def test_http_backoff_policy_exponential_async(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated_async
        from accelbyte_py_sdk.core import ExponentialHttpBackoffPolicy
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.backoff_policy = ExponentialHttpBackoffPolicy(
            initial=0.25, multiplier=2.0
        )
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(5)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        start = time.perf_counter()
        result, error = await get_user_friends_updated_async(
            x_additional_headers={"Authorization": "Bearer foo"}
        )
        duration = time.perf_counter() - start

        # assert
        self.assertEqual(2, n_retries)
        self.assertAlmostEqual(0.25 + 0.5 + 1.0, duration, delta=0.5)
        self.assertIsNone(error)

    def test_http_retry_policy_n_retries(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(3)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )

        # assert
        self.assertEqual(2, n_retries)
        self.assertIsNone(error)

    async def test_http_retry_policy_n_retries_async(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated_async
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import MaxRetriesHttpRetryPolicy

        n_retries: int = 0

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            nonlocal n_retries
            n_retries = retries
            if retries == 2:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, MaxRetriesHttpRetryPolicy(3)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 400}
        )

        # act
        result, error = await get_user_friends_updated_async(
            x_additional_headers={"Authorization": "Bearer foo"}
        )

        # assert
        self.assertEqual(2, n_retries)
        self.assertIsNone(error)

    def test_http_retry_policy_status_codes(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import StatusCodesHttpRetryPolicy

        status_codes = []

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            status_codes.append(response.status_code)
            if response.status_code == 500:
                self.configure_overwrite_response(
                    {"enabled": True, "overwrite": True, "status": 400}
                )
            elif response.status_code == 400:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, StatusCodesHttpRetryPolicy(400, 500)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 500}
        )

        # act
        result, error = get_user_friends_updated(
            x_additional_headers={"Authorization": "Bearer foo"}
        )

        # assert
        self.assertEqual([500, 400], status_codes)
        self.assertIsNone(error)

    async def test_http_retry_policy_status_codes_async(self):
        from accelbyte_py_sdk.api.lobby import get_user_friends_updated_async
        from accelbyte_py_sdk.core import CompositeHttpRetryPolicy
        from accelbyte_py_sdk.core import StatusCodesHttpRetryPolicy

        status_codes = []

        def watcher_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapse: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            status_codes.append(response.status_code)
            if response.status_code == 500:
                self.configure_overwrite_response(
                    {"enabled": True, "overwrite": True, "status": 400}
                )
            elif response.status_code == 400:
                self.reset_overwrite_response()
            return True

        # arrange
        http_client = get_http_client()
        http_client.retry_policy = CompositeHttpRetryPolicy(
            watcher_retry_policy, StatusCodesHttpRetryPolicy(400, 500)
        )
        self.assertTrue(is_initialized())

        self.configure_overwrite_response(
            {"enabled": True, "overwrite": True, "status": 500}
        )

        # act
        result, error = await get_user_friends_updated_async(
            x_additional_headers={"Authorization": "Bearer foo"}
        )

        # assert
        self.assertEqual([500, 400], status_codes)
        self.assertIsNone(error)

    def test_auto_refresh_token_login_client(self):
        import accelbyte_py_sdk.core as core
        import accelbyte_py_sdk.services.auth as auth
        import accelbyte_py_sdk.api.iam as iam

        # arrange
        token_repo = core.get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual(0, token_repo.counter)

        result, error = auth.login_client(auto_refresh=True)
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        token = token_repo.get_token()

        # act & assert
        original_access_token = token.access_token
        self.force_expiry_at(token_repo, 5)
        modified_access_token = token.access_token
        self.assertEqual(1, token_repo.counter)
        self.assertNotEqual(original_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(modified_access_token))

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)

        time.sleep(5)

        token = token_repo.get_token()
        new_access_token = token.access_token
        self.assertEqual(2, token_repo.counter)
        self.assertNotEqual(new_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(new_access_token))

    async def test_auto_refresh_token_login_client_async(self):
        import accelbyte_py_sdk.core as core
        import accelbyte_py_sdk.services.auth as auth
        import accelbyte_py_sdk.api.iam as iam

        # arrange
        token_repo = core.get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual(0, token_repo.counter)

        result, error = await auth.login_client_async(auto_refresh=True)
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        result, error = await iam.admin_get_bans_type_v3_async()
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        token = token_repo.get_token()

        # act & assert
        original_access_token = token.access_token
        self.force_expiry_at(token_repo, 5)
        modified_access_token = token.access_token
        self.assertEqual(1, token_repo.counter)
        self.assertNotEqual(original_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(modified_access_token))

        result, error = await iam.admin_get_bans_type_v3_async()
        self.assertIsNone(error)

        time.sleep(5)

        token = token_repo.get_token()
        new_access_token = token.access_token
        self.assertEqual(2, token_repo.counter)
        self.assertNotEqual(new_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(new_access_token))

    def test_auto_refresh_token_login_user(self):
        import accelbyte_py_sdk.core as core
        import accelbyte_py_sdk.services.auth as auth
        import accelbyte_py_sdk.api.iam as iam

        # arrange
        token_repo = core.get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual(0, token_repo.counter)

        result, error = auth.login_user("admin", "admin", auto_refresh=True)
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        token = token_repo.get_token()

        # act & assert

        original_access_token = token.access_token
        self.force_expiry_at(token_repo, 5)
        modified_access_token = token.access_token
        self.assertEqual(1, token_repo.counter)
        self.assertNotEqual(original_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(modified_access_token))

        result, error = iam.admin_get_bans_type_v3()
        self.assertIsNone(error)

        time.sleep(5)

        token = token_repo.get_token()
        new_access_token = token.access_token
        self.assertEqual(2, token_repo.counter)
        self.assertNotEqual(new_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(new_access_token))

    async def test_auto_refresh_token_login_user_async(self):
        import accelbyte_py_sdk.core as core
        import accelbyte_py_sdk.services.auth as auth
        import accelbyte_py_sdk.api.iam as iam

        # arrange
        token_repo = core.get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual(0, token_repo.counter)

        result, error = await auth.login_user_async("admin", "admin", auto_refresh=True)
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        result, error = await iam.admin_get_bans_type_v3_async()
        self.assertIsNone(error)
        self.assertEqual(1, token_repo.counter)
        self.assertFalse(
            token_repo.has_token_expired(multiplier=auth.DEFAULT_REFRESH_RATE)
        )

        token = token_repo.get_token()

        # act & assert

        original_access_token = token.access_token
        self.force_expiry_at(token_repo, 5)
        modified_access_token = token.access_token
        self.assertEqual(1, token_repo.counter)
        self.assertNotEqual(original_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(modified_access_token))

        result, error = await iam.admin_get_bans_type_v3_async()
        self.assertIsNone(error)

        time.sleep(5)

        token = token_repo.get_token()
        new_access_token = token.access_token
        self.assertEqual(2, token_repo.counter)
        self.assertNotEqual(new_access_token, modified_access_token)
        self.assertTrue(self.validate_bearer_token(new_access_token))

    # noinspection PyUnresolvedReferences
    def _setupAsyncioLoop(self):
        assert self._asyncioTestLoop is None, "asyncio test loop already initialized"
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        loop.set_debug(False)  # overrode to disable this log
        self._asyncioTestLoop = loop
        fut = loop.create_future()
        self._asyncioCallsTask = loop.create_task(self._asyncioLoopRunner(fut))
        loop.run_until_complete(fut)
