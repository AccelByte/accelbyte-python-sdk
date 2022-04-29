from __future__ import annotations

from typing import Any, Dict, List, Optional
from unittest import TestCase

from accelbyte_py_sdk import initialize
from accelbyte_py_sdk.core import DictConfigRepository
from accelbyte_py_sdk.core import HttpResponse
from accelbyte_py_sdk.core import Model
from accelbyte_py_sdk.core import MyTokenRepository
from accelbyte_py_sdk.core import Operation
from accelbyte_py_sdk.core import get_http_client
from accelbyte_py_sdk.core import create_proto_from_operation


class TestConfigRepository(DictConfigRepository):

    def __init__(self, data: Optional[Dict[Any, Any]] = None):
        if data is None:
            data = {}
        super().__init__(data)


class TestTokenRepository(MyTokenRepository):

    def __init__(self, token: Any = None):
        if token is None:
            token = {}
        super().__init__(token)


class TestModel(Model):

    def __init__(
            self,
            *,
            a: Any = None,
            b: Any = None,
            c: Any = None,
            **kwargs
    ):
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
        self.assertEqual(b"{\"greeting\": \"Hello World!\"}", request.body)

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
        self.assertIn('foomanchoo', request_body_str)

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
            config_repo=TestConfigRepository({"appName": "Test", "appVersion": "1.0.0", "autoAddAmazonTraceId": True}),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/foo", request.url)
        self.assertEqual(f"AccelBytePythonSDK/{sdk_version} (Test/1.0.0)", request.headers.get("User-Agent"))

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
        result, error = TestOperation().parse_response(200, content_type="application/json", content=json_obj)

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
                namespace="abc!@#$%^&*()",
                user_id="{}[]<>:;,.?|\\\"'"
            ),
            config_repo=TestConfigRepository(),
            token_repo=TestTokenRepository(),
            base_url="http://0.0.0.0:8080",
        )
        self.assertIsNone(error)

        # act
        request = get_http_client().create_request(proto=proto)

        # assert
        self.assertEqual("http://0.0.0.0:8080/admin/namespaces/abc!@#$%25%5E&*()/user/%7B%7D%5B%5D%3C%3E:;,.?%7C%5C%22'", request.url)

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
        self.assertEqual("http://0.0.0.0:8080/foo?filter=a%40t,p%25PCent&status=%23ABC%21", request.url)


class HttpBinRequestTestCase(TestCase):

    reachable: bool = True
    base_url: str = "https://httpbin.org"

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
        self.assertEqual("https://httpbin.org/redirect-to?url=http%3A%2F%2F0.0.0.0%3A8080%3Fdata%3Dfoo", request.url)
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        data, error = _post_run_request(
            operation=operation,
            response=response,
            error=error
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
                pre_processed_response, err = self.pre_process_response(code=code, content_type=content_type, content=content)
                if err is not None:
                    return None, None if err.is_no_content() else err
                code, content_type, content = pre_processed_response

                if code == 200:
                    return content, None

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertEqual("", result)

    def test_response_200_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class HttpBinJsonModel(Model):

            slideshow: Dict[str, Any]

            @classmethod
            def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> HttpBinJsonModel:
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

            def __init__(self,):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 200:
                    return HttpBinJsonModel.create_from_dict(content), None

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
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
            def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> HttpBinJsonModel:
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

            def __init__(self, ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 201:
                    return HttpBinJsonModel.create_from_dict(content), None

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 201  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsInstance(result, HttpBinJsonModel)
        self.assertIsNotNone(result.slideshow)

    def test_response_204_json_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):

            def __init__(self, ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 204:
                    return None, None

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 204                                     # monkey-patch
        raw_response.headers["Content-Type"] = "text/html; charset=utf-8"  # monkey-patch
        raw_response.json = lambda: None                                   # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(error)
        self.assertIsNone(result)

    def test_response_200_binary_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):

            def __init__(self,):
                self.url = "/image/jpeg"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 200:
                    return content, None

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
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
            def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> HttpBinJsonModel:
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

            def __init__(self, ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 403:
                    return None, HttpBinJsonModel.create_from_dict(content)

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 403  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
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
            def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> HttpBinJsonModel:
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

            def __init__(self, ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 404:
                    return None, HttpBinJsonModel.create_from_dict(content)

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 404  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
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
            def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> HttpBinJsonModel:
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

            def __init__(self, ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 503:
                    return None, HttpBinJsonModel.create_from_dict(content)

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 503  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, HttpBinJsonModel)
        self.assertIsNotNone(error.slideshow)

    def test_response_403_html_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):

            def __init__(self, ):
                self.url = "/html"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 403:
                    return None, content

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 403  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, str)

    def test_response_404_html_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):

            def __init__(self, ):
                self.url = "/html"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 404:
                    return None, content

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 404  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, str)

    def test_response_503_html_body(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):

            def __init__(self, ):
                self.url = "/html"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                if code == 503:
                    return None, content

                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 503  # monkey-patch
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, str)

    def test_response_undocumented(self):
        from accelbyte_py_sdk.core._core import _post_run_request

        class TestOperation(Operation):

            def __init__(self, ):
                self.url = "/json"
                self.method = "GET"

            def get_all_params(self) -> dict:
                return {}

            def parse_response(self, code: int, content_type: str, content: Any):
                return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

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
        raw_response, error = http_client.send_request(request, allow_redirects=not operation.has_redirects())
        self.assertIsNone(error)
        raw_response.status_code = 200
        response, error = http_client.handle_response(raw_response)
        self.assertIsNone(error)

        # act
        result, error = _post_run_request(
            operation=TestOperation(),
            response=response,
            error=error
        )

        # assert
        self.assertIsNone(result)
        self.assertIsNotNone(error)
        self.assertIsInstance(error, HttpResponse)
        self.assertEqual("error", error.content_type)
