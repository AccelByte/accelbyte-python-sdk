from typing import Any, Tuple, Union
from unittest import TestCase

import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository
from accelbyte_py_sdk.core import MyTokenRepository
from accelbyte_py_sdk.core import Operation
from accelbyte_py_sdk.core import Header
from accelbyte_py_sdk.core import HttpClient
from accelbyte_py_sdk.core import HttpRawResponse
from accelbyte_py_sdk.core import HttpResponse
from accelbyte_py_sdk.core import get_config_repository
from accelbyte_py_sdk.core import get_base_url
from accelbyte_py_sdk.core import get_client_auth
from accelbyte_py_sdk.core import get_client_id
from accelbyte_py_sdk.core import get_client_secret
from accelbyte_py_sdk.core import get_namespace
from accelbyte_py_sdk.core import get_token_repository
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.core import get_http_client


class TestHttpClient(HttpClient):

    def create_request(
            self,
            operation: Operation,
            base_url: Union[None, str] = None,
            headers: Union[None, Header] = None,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        return None, HttpResponse.create_unhandled_error()

    def send_request(
            self,
            request: Any,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        return None, HttpResponse.create_unhandled_error()

    def handle_response(
            self,
            raw_response: Any,
            **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        return None, HttpResponse.create_unhandled_error()


class CoreTestCase(TestCase):

    def setUp(self) -> None:
        self.assertFalse(accelbyte_py_sdk.is_initialized())

    def tearDown(self) -> None:
        accelbyte_py_sdk.reset()

    def test_initialize(self):
        accelbyte_py_sdk.initialize()
        self.assertIsNotNone(get_config_repository())
        self.assertIsNotNone(get_http_client())
        self.assertIsNotNone(get_token_repository())

    def test_initialize_with_str_config_option(self):
        options = {"config": "EnvironmentConfigRepository"}
        accelbyte_py_sdk.initialize(options=options)
        config_repo = get_config_repository()
        self.assertIsNotNone(config_repo)
        self.assertEqual("EnvironmentConfigRepository", type(config_repo).__name__)

    def test_initialize_with_str_config_option_throws_value_error_when_not_recognized(self):
        options = {"config": "spam&eggs"}
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_str_token_option(self):
        options = {"token": "InMemoryTokenRepository"}
        accelbyte_py_sdk.initialize(options=options)
        token_repo = get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual("InMemoryTokenRepository", type(token_repo).__name__)

    def test_initialize_with_str_token_option_throws_value_error_when_not_recognized(self):
        options = {"token": "spam&eggs"}
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_str_http_option(self):
        options = {"http": "RequestsHttpClient"}
        accelbyte_py_sdk.initialize(options=options)
        http_client = get_http_client()
        self.assertIsNotNone(http_client)
        self.assertEqual("RequestsHttpClient", type(http_client).__name__)

    def test_initialize_with_str_http_option_throws_value_error_when_not_recognized(self):
        options = {"http": "spam&eggs"}
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_instance_config_option(self):
        config = MyConfigRepository(
            base_url="http://0.0.0.0:8080",
            client_id="admin",
            client_secret="pass",
            namespace="spam&eggs"
        )
        options = {"config": config}
        accelbyte_py_sdk.initialize(options=options)
        config_repo = get_config_repository()
        self.assertIsNotNone(config_repo)
        self.assertEqual("MyConfigRepository", type(config_repo).__name__)
        self.assertEqual("http://0.0.0.0:8080", config_repo.get_base_url())
        self.assertEqual("admin", config_repo.get_client_id())
        self.assertEqual("pass", config_repo.get_client_secret())
        self.assertEqual("spam&eggs", config_repo.get_namespace())
        self.assertEqual(("http://0.0.0.0:8080", None), get_base_url())
        self.assertEqual((("admin", "pass"), None), get_client_auth())
        self.assertEqual(("admin", None), get_client_id())
        self.assertEqual(("pass", None), get_client_secret())
        self.assertEqual(("spam&eggs", None), get_namespace())

    def test_initialize_with_instance_config_option_throws_type_error_when_not_recognized(self):
        options = {"config": {}}
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_instance_token_option(self):
        token = MyTokenRepository(token={"access_token": "spam&eggs"})
        options = {"token": token}
        accelbyte_py_sdk.initialize(options=options)
        token_repo = get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual("MyTokenRepository", type(token_repo).__name__)
        self.assertEqual({"access_token": "spam&eggs"}, token_repo.get_token())
        self.assertEqual(("spam&eggs", None), get_access_token())

    def test_initialize_with_instance_token_option_throws_type_error_when_not_recognized(self):
        options = {"token": {}}
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_instance_http_option(self):
        http_ = TestHttpClient()
        options = {"http": http_}
        accelbyte_py_sdk.initialize(options=options)
        http_client = get_http_client()
        self.assertIsNotNone(http_client)
        self.assertEqual("TestHttpClient", type(http_client).__name__)

    def test_initialize_with_instance_http_option_throws_type_error_when_not_recognized(self):
        options = {"http": {}}
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options=options)

    def test_get_config_repository_throws_value_error_when_none(self):
        self.assertRaises(ValueError, get_config_repository)

    def test_get_token_repository_throws_value_error_when_none(self):
        self.assertRaises(ValueError, get_token_repository)

    def test_get_http_client_throws_value_error_when_none(self):
        self.assertRaises(ValueError, get_http_client)
