import asyncio
import logging
import time

import yaml
from abc import ABC
from pathlib import Path
from queue import Queue
from typing import Optional
from unittest import IsolatedAsyncioTestCase
from unittest import TestCase

import accelbyte_py_sdk
from accelbyte_py_sdk.core import WebsocketsWSClient

LOGGER = logging.getLogger("tests.sample_apps.how_to")


def format_request_response_as_yaml(data: dict) -> str:
    if "headers" in data and "Authorization" in data["headers"]:
        data["headers"]["Authorization"] = "****"
    return f"---\n{yaml.safe_dump(data, sort_keys=False).rstrip()}\n..."


def get_init_options() -> dict:
    from ..how_to import DOTENV_FILE

    options = {
        "log_files": {
            "http": {"filename": "http.log", "capacity": 3, "level": logging.DEBUG}
        }
    }

    dotenv_file = Path(DOTENV_FILE).resolve()
    if dotenv_file.exists():
        options["config"] = "DotEnvFileConfigRepository"
        options["config_params"] = (
            [],
            {"dotenv_file": str(dotenv_file), "set_env_var": True},
        )

    return options


class SDKTestCaseUtils:

    logger: logging.Logger = LOGGER

    sdk_initialized: bool = False
    namespace_found: bool = False
    client_found: bool = False
    user_found: bool = False
    logged_in: bool = False

    namespace: str = ""
    username: str = ""
    password: str = ""

    @classmethod
    def do_setup_class(cls):
        from accelbyte_py_sdk import is_initialized
        from accelbyte_py_sdk.core import get_client_id
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.core import get_http_client
        from accelbyte_py_sdk.core import get_namespace
        from accelbyte_py_sdk.services.auth import login_user

        if not is_initialized():
            accelbyte_py_sdk.initialize(options=get_init_options())

            # setup http log formatter
            http_client = get_http_client()
            http_client.request_log_formatter = format_request_response_as_yaml
            http_client.response_log_formatter = format_request_response_as_yaml

        cls.sdk_initialized = is_initialized()

        namespace, error = get_namespace()
        cls.namespace_found = error is None

        client_id, error = get_client_id()
        cls.client_found = error is None

        username, password = get_env_user_credentials()
        cls.user_found = bool(username)

        _, error = login_user(username=username, password=password)
        cls.logged_in = error is None

        cls.namespace = namespace
        cls.username = username
        cls.password = password

    def do_setup(self, test_case: TestCase):
        test_case.assertTrue(self.sdk_initialized, msg=f"SDK not initialized.")
        test_case.assertTrue(self.namespace_found, msg=f"Namespace not found.")
        test_case.assertTrue(self.client_found, msg=f"Client not found.")
        test_case.assertTrue(self.user_found, msg=f"User not found.")
        test_case.assertTrue(self.logged_in, msg=f"Not logged in.")

    # noinspection PyMethodMayBeStatic
    def do_teardown(self, test_case: TestCase):
        # pylint: disable=no-self-use
        time.sleep(0.5)

    def log(
        self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None
    ):
        if condition is not None and condition is False:
            return
        level = level if level is not None else logging.INFO
        self.logger.log(level=level, msg=msg)

    def log_critical(
        self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None
    ):
        self.log(msg=msg, level=logging.CRITICAL, condition=condition)

    def log_debug(
        self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None
    ):
        self.log(msg=msg, level=logging.DEBUG, condition=condition)

    def log_error(
        self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None
    ):
        self.log(msg=msg, level=logging.ERROR, condition=condition)

    def log_info(
        self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None
    ):
        self.log(msg=msg, level=logging.INFO, condition=condition)

    def log_warning(
        self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None
    ):
        self.log(msg=msg, level=logging.WARNING, condition=condition)

    # noinspection PyMethodMayBeStatic
    def set_http_client_policies(self, /, *, retry=None, backoff=None):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.core import get_http_client

        http_client = get_http_client()
        http_client.retry_policy = retry
        http_client.backoff_policy = backoff


class IntegrationTestCase(ABC, SDKTestCaseUtils, TestCase):

    login_type: Optional[str] = None

    @classmethod
    def setUpClass(cls) -> None:
        cls.do_setup_class()

    def setUp(self) -> None:
        self.beforeSetup()
        self.do_setup(self)
        self.afterSetUp()

    def beforeSetup(self) -> None:
        pass

    def afterSetUp(self) -> None:
        pass

    def tearDown(self) -> None:
        self.beforeTearDown()
        self.do_teardown(self)
        self.afterTearDown()

    def beforeTearDown(self) -> None:
        pass

    def afterTearDown(self) -> None:
        pass


class AsyncIntegrationTestCase(ABC, SDKTestCaseUtils, IsolatedAsyncioTestCase):

    login_type: Optional[str] = None

    ws_client: Optional[WebsocketsWSClient] = None
    messages: Queue = Queue()

    @classmethod
    def setUpClass(cls) -> None:
        cls.do_setup_class()

    async def asyncSetUp(self) -> None:
        await self.beforeAsyncSetUp()
        self.do_setup(self)
        await self.afterAsyncSetUp()

    async def beforeAsyncSetUp(self) -> None:
        pass

    async def afterAsyncSetUp(self) -> None:
        await self.connect()

    async def asyncTearDown(self) -> None:
        await self.beforeAsyncTearDown()
        self.do_teardown(self)
        await self.afterAsyncTearDown()

    async def beforeAsyncTearDown(self) -> None:
        await self.disconnect()

    async def afterAsyncTearDown(self) -> None:
        pass

    async def connect(self):
        from accelbyte_py_sdk.core import get_access_token
        from accelbyte_py_sdk.core import get_base_url

        base_url, error = get_base_url()
        self.assertIsNone(error, msg=f"Failed to get the base url. {str(error)}")

        access_token, error = get_access_token()
        self.assertIsNone(error, msg=f"Failed to get the access token. {str(error)}")

        self.ws_client = WebsocketsWSClient(uri=base_url, access_token=access_token)

        self.ws_client.listeners.append(self.on_receive)

        await self.ws_client.connect()

    async def disconnect(self):
        if self.ws_client is not None:
            await self.ws_client.disconnect()
            self.ws_client = None

    async def on_receive(self, message: str):
        self.messages.put(message)

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
