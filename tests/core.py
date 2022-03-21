import base64
import re
from typing import Any, Tuple, List, Union, Dict, Optional
from unittest import TestCase

import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository
from accelbyte_py_sdk.core import MyTokenRepository
from accelbyte_py_sdk.core import RequestsHttpClient
from accelbyte_py_sdk.core import Model
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
from accelbyte_py_sdk.core import get_app_name
from accelbyte_py_sdk.core import get_app_version
from accelbyte_py_sdk.core import get_token_repository
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.core import get_http_client
from accelbyte_py_sdk.core import remove_token
from accelbyte_py_sdk.core import create_basic_authentication
from accelbyte_py_sdk.core import get_query_from_http_redirect_response


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


class TestModel(Model):

    date_of_birth: str

    def with_date_of_birth(self, value: str):
        self.date_of_birth = value
        return self

    def is_valid(self) -> bool:
        if not re.match(r"^(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$", self.date_of_birth):
            return False
        return True

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "dateOfBirth": "date_of_birth"
        }


class TestOperation(Operation):

    _url: str = "/test/profiles"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: TestModel
    namespace: str

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params()
        )

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def is_valid(self) -> bool:
        # required checks
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        # pattern checks
        if hasattr(self, "body") and not self.body.is_valid():
            return False
        return True

    def with_body(self, value: TestModel):
        self.body = value
        return self

    def with_namespace(self, value: str):
        self.namespace = value
        return self

    def parse_response(self, code: int, content_type: str, content: Any):
        return None, None

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }


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

    def test_initialize_with_str_config_with_params_option(self):
        options = {
            "config": "MyConfigRepository",
            "config_params": (["http://0.0.0.0:8080", "admin", "pass"], {"namespace": "spam&eggs"})
        }
        accelbyte_py_sdk.initialize(options=options)
        config_repo = get_config_repository()
        self.assertIsNotNone(config_repo)
        self.assertEqual("MyConfigRepository", type(config_repo).__name__)
        self.assertEqual("http://0.0.0.0:8080", config_repo.get_base_url())
        self.assertEqual("admin", config_repo.get_client_id())
        self.assertEqual("pass", config_repo.get_client_secret())
        self.assertEqual("spam&eggs", config_repo.get_namespace())

    def test_initialize_with_str_config_with_params_option_throws_value_error_when_params_is_invalid(self):
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options={"config": "MyConfigRepository"})
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options={"config": "MyConfigRepository", "config_params": ()})
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options={"config": "MyConfigRepository", "config_params": ([], {})})
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options={"config": "MyConfigRepository", "config_params": (["http://0.0.0.0:8080"], {})})

    def test_initialize_with_str_token_option(self):
        options = {"token": "InMemoryTokenRepository"}
        accelbyte_py_sdk.initialize(options=options)
        token_repo = get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual("InMemoryTokenRepository", type(token_repo).__name__)

    def test_initialize_with_str_token_option_throws_value_error_when_not_recognized(self):
        options = {"token": "spam&eggs"}
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_str_token_with_params_option(self):
        options = {"token": "MyTokenRepository", "token_params": ([{"access_token": "spam&eggs"}], {})}
        accelbyte_py_sdk.initialize(options=options)
        token_repo = get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual("MyTokenRepository", type(token_repo).__name__)
        self.assertEqual({"access_token": "spam&eggs"}, token_repo.get_token())
        self.assertEqual(("spam&eggs", None), get_access_token())

    def test_initialize_with_str_token_with_params_option_throws_value_error_when_not_recognized(self):
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options={"token": "MyTokenRepository", "token_params": ()})
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options={"token": "MyTokenRepository", "token_params": (["duplicate"], {"token": {}})})

    def test_initialize_with_str_http_option(self):
        options = {"http": "RequestsHttpClient"}
        accelbyte_py_sdk.initialize(options=options)
        http_client = get_http_client()
        self.assertIsNotNone(http_client)
        self.assertEqual("RequestsHttpClient", type(http_client).__name__)

    def test_initialize_with_str_http_option_throws_value_error_when_not_recognized(self):
        options = {"http": "spam&eggs"}
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options=options)

    def test_initialize_with_str_http_with_params_option(self):
        options = {
            "http": "RequestsHttpClient",
            "http_params": ([], {"allow_redirects": False})
        }
        accelbyte_py_sdk.initialize(options=options)
        http_client = get_http_client()
        self.assertIsNotNone(http_client)
        self.assertEqual("RequestsHttpClient", type(http_client).__name__)
        self.assertTrue(isinstance(http_client, RequestsHttpClient) and not http_client.allow_redirects)

    def test_initialize_with_str_http_with_params_option_throws_value_error_when_not_recognized(self):
        self.assertRaises(ValueError, accelbyte_py_sdk.initialize, options={"http": "RequestsHttpClient", "http_params": ()})
        self.assertRaises(TypeError, accelbyte_py_sdk.initialize, options={"http": "RequestsHttpClient", "http_params": (["duplicate"], {"allow_redirects": "incorrect"})})

    def test_initialize_with_instance_config_option(self):
        config = MyConfigRepository(
            base_url="http://0.0.0.0:8080",
            client_id="admin",
            client_secret="pass",
            namespace="spam&eggs",
            app_name="TestApp",
            app_version="0.1.0",
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
        self.assertEqual(("TestApp", None), get_app_name())
        self.assertEqual(("0.1.0", None), get_app_version())

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

    def test_get_client_auth_allows_empty_secret(self):
        config = MyConfigRepository(
            base_url="http://0.0.0.0:8080",
            client_id="admin",
            client_secret=""
        )
        options = {"config": config}
        accelbyte_py_sdk.initialize(options=options)
        self.assertEqual((("admin", ""), None), get_client_auth())
        self.assertEqual(("admin", None), get_client_id())
        self.assertEqual(("", None), get_client_secret())

    def test_remove_token(self):
        token = MyTokenRepository(token={"access_token": "spam&eggs"})
        options = {"token": token}
        accelbyte_py_sdk.initialize(options=options)
        token_repo = get_token_repository()
        self.assertIsNotNone(token_repo)
        self.assertEqual("MyTokenRepository", type(token_repo).__name__)
        self.assertEqual({"access_token": "spam&eggs"}, token_repo.get_token())
        self.assertEqual(("spam&eggs", None), get_access_token())
        remove_token()
        access_token, error = get_access_token()
        self.assertIsNone(access_token)
        self.assertIsNotNone(error)

    def test_create_basic_authentication(self):
        basic_authentication = create_basic_authentication("username", "password")
        self.assertTrue(basic_authentication.startswith("Basic "))
        basic_authentication = basic_authentication.removeprefix("Basic ")
        basic_authentication = base64.b64decode(basic_authentication).decode("utf-8")
        username, password = basic_authentication.split(":", maxsplit=1)
        self.assertEqual("username", username)
        self.assertEqual("password", password)

    def test_get_query_from_http_redirect_response(self):
        http_reponse = HttpResponse.create_redirect(302, "https://localhost:8080/?order-spam-with=eggs")
        order_spam_with, error = get_query_from_http_redirect_response(http_reponse, "order-spam-with")
        self.assertEqual("eggs", order_spam_with)
        self.assertIsNone(error, error)

    def test_get_query_from_http_redirect_response_returns_cant_find_location_in_header_error_when_response_is_not_location_type(self):
        http_response = HttpResponse.create_error(404, "Not Found")
        order_spam_with, error = get_query_from_http_redirect_response(http_response, "order-spam-with")
        self.assertIsNone(order_spam_with)
        self.assertEqual("[404] error: Can't find 'Location' in Header.", str(error))

    def test_get_query_from_http_redirect_response_returns_cant_find_query_key_error_when_location_dont_contain_it(self):
        http_reponse = HttpResponse.create_redirect(302, "")
        order_spam_with, error = get_query_from_http_redirect_response(http_reponse, "order-spam-with")
        self.assertIsNone(order_spam_with)
        self.assertEqual("[302] error: Can't find 'order-spam-with' in query.", str(error))

    def test_get_query_from_http_redirect_response_returns_custom_error_when_location_dont_contain_it(self):
        http_reponse = HttpResponse.create_redirect(302, "?error=out_of_stock&error_description=no+spam+left")
        order_spam_with, error = get_query_from_http_redirect_response(http_reponse, "order-spam-with")
        self.assertIsNone(order_spam_with)
        self.assertEqual("[302] error: [out_of_stock] no spam left", str(error))

    def test_header_add_authorization(self):
        header = Header()
        header.add_authorization("spam&eggs")
        self.assertTrue("Authorization" in header)
        self.assertEqual("spam&eggs", header["Authorization"])

    def test_header_add_authorization_overwrites_existing_value(self):
        header = Header()
        header.add_authorization("spam&eggs")
        self.assertTrue("Authorization" in header)
        self.assertEqual("spam&eggs", header["Authorization"])
        header.add_authorization("bacon&eggs")
        self.assertEqual("bacon&eggs", header["Authorization"])

    def test_header_add_basic_authorization(self):
        header = Header()
        header.add_basic_authorization("username", "password")
        self.assertTrue("Authorization" in header)
        self.assertEqual(create_basic_authentication("username", "password"), header["Authorization"])

    def test_header_add_basic_authorization2(self):
        header = Header()
        header.add_basic_authorization2(("username", "password"))
        self.assertTrue("Authorization" in header)
        self.assertEqual(create_basic_authentication("username", "password"), header["Authorization"])

    def test_header_add_bearer_authorization(self):
        header = Header()
        header.add_bearer_authorization("spam&eggs")
        self.assertTrue("Authorization" in header)
        self.assertEqual("Bearer spam&eggs", header["Authorization"])

    def test_header_add_user_agent_directly(self):
        header = Header()
        header.add_user_agent(user_agent="spam&eggs")
        self.assertTrue("User-Agent" in header)
        self.assertEqual("spam&eggs", header["User-Agent"])

    def test_header_add_user_agent_from_app_info_name(self):
        product = accelbyte_py_sdk.__product__
        product_version = accelbyte_py_sdk.__version__
        header = Header()
        header.add_user_agent(app_info="AppName")
        self.assertTrue("User-Agent" in header)
        self.assertEqual(f"{product}/{product_version} (AppName)", header["User-Agent"])

    def test_header_add_user_agent_from_app_info_name_version(self):
        product = accelbyte_py_sdk.__product__
        product_version = accelbyte_py_sdk.__version__
        header = Header()
        header.add_user_agent(app_info=("AppName", "0.1.0"))
        self.assertTrue("User-Agent" in header)
        self.assertEqual(f"{product}/{product_version} (AppName/0.1.0)", header["User-Agent"])

    def test_url_creation_with_path_params(self):
        full_url = Operation.create_full_url(
            url="/test/namespaces/{namespace}/items/{item}",
            base_url="http://0.0.0.0:8080",
            path_params={
                "namespace": "foo",
                "item": "bar"
            }
        )
        self.assertEqual("http://0.0.0.0:8080/test/namespaces/foo/items/bar", full_url)

    def test_url_creation_with_query_params(self):
        full_url = Operation.create_full_url(
            url="/test",
            base_url="http://0.0.0.0:8080",
            query_params={
                "status": "active",
                "query": ["a", "b"]
            }
        )
        self.assertEqual("http://0.0.0.0:8080/test?status=active&query=a,b", full_url)

    def test_url_creation_with_query_params_with_collection_format_map(self):
        full_url = Operation.create_full_url(
            url="/test",
            base_url="http://0.0.0.0:8080",
            query_params={
                "status": "active",
                "query": ["a", "b"]
            },
            collection_format_map={
                "query": "multi"
            }
        )
        self.assertEqual("http://0.0.0.0:8080/test?status=active&query=a&query=b", full_url)

    def test_model_is_valid(self):
        invalid_model = TestModel().with_date_of_birth("01-01-2000")
        self.assertFalse(invalid_model.is_valid())

        valid_model = TestModel().with_date_of_birth("2000-01-01")
        self.assertTrue(valid_model.is_valid())

    def test_operation_is_valid(self):
        invalid_operation = TestOperation()
        self.assertFalse(invalid_operation.is_valid())

        invalid_operation = TestOperation().with_namespace("namespace").with_body(TestModel().with_date_of_birth("01-01-2000"))
        self.assertFalse(invalid_operation.is_valid())

        valid_operation = TestOperation().with_namespace("namespace").with_body(TestModel().with_date_of_birth("2000-01-01"))
        self.assertTrue(valid_operation.is_valid())
