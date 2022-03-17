import asyncio
import logging
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
        options["config_params"] = ([], {"dotenv_file": str(dotenv_file), "set_env_var": True})

    return options


class IntegrationTestCase(ABC, TestCase):

    logger: logging.Logger = LOGGER
    username: Optional[str] = None
    password: Optional[str] = None

    def init_sdk(self):
        from accelbyte_py_sdk import initialize
        from accelbyte_py_sdk import is_initialized
        from accelbyte_py_sdk.core import get_client_id
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.core import get_http_client

        # initialize
        self.assertFalse(is_initialized(), msg="AccelByte Python SDK is already initialized.")
        initialize(options=get_init_options())
        self.assertTrue(is_initialized(), msg="AccelByte Python SDK is not initialized.")
        client_id, error = get_client_id()
        self.assertIsNone(error, msg=f"Client ID not found. {str(error)}")

        # setup http log formatter
        http_client = get_http_client()
        http_client.request_log_formatter = format_request_response_as_yaml
        http_client.response_log_formatter = format_request_response_as_yaml

        # get values from env
        self.username, self.password = get_env_user_credentials()
        self.assertTrue(self.username, msg="User not found.")

    # noinspection PyMethodMayBeStatic
    def reset_sdk(self):
        # pylint: disable=no-self-use
        accelbyte_py_sdk.reset()

    def login_client(self):
        from accelbyte_py_sdk.services.auth import login_client

        _, error = login_client()
        self.assertIsNone(error, msg=f"Failed to log in the client. {str(error)}")

    def login_user(self):
        from accelbyte_py_sdk.services.auth import login_user

        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, msg=f"Failed to log in the user. {str(error)}")

    def log(self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None):
        if condition is not None and condition is False:
            return
        level = level if level is not None else logging.INFO
        self.logger.log(level=level, msg=msg)

    def log_critical(self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None):
        self.log(msg=msg, level=logging.CRITICAL, condition=condition)

    def log_debug(self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None):
        self.log(msg=msg, level=logging.DEBUG, condition=condition)

    def log_error(self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None):
        self.log(msg=msg, level=logging.ERROR, condition=condition)

    def log_info(self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None):
        self.log(msg=msg, level=logging.INFO, condition=condition)

    def log_warning(self, msg: object, level: Optional[int] = None, condition: Optional[bool] = None):
        self.log(msg=msg, level=logging.WARNING, condition=condition)

    def setUp(self) -> None:
        self.init_sdk()
        self.login_user()

    def tearDown(self) -> None:
        self.reset_sdk()


class AsyncIntegrationTestCase(ABC, IsolatedAsyncioTestCase):

    logger: logging.Logger = LOGGER
    username: Optional[str] = None
    password: Optional[str] = None

    ws_client: Optional[WebsocketsWSClient] = None
    messages: Queue = Queue()

    def init_sdk(self):
        from accelbyte_py_sdk import initialize
        from accelbyte_py_sdk import is_initialized
        from accelbyte_py_sdk.core import get_client_id
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.core import get_http_client

        # initialize
        self.assertFalse(is_initialized(), msg="AccelByte Python SDK is already initialized.")
        initialize(options=get_init_options())
        self.assertTrue(is_initialized(), msg="AccelByte Python SDK is not initialized.")
        client_id, error = get_client_id()
        self.assertIsNone(error, msg=f"Client ID not found. {str(error)}")

        # setup http log formatter
        http_client = get_http_client()
        http_client.request_log_formatter = format_request_response_as_yaml
        http_client.response_log_formatter = format_request_response_as_yaml

        # get values from env
        self.username, self.password = get_env_user_credentials()
        self.assertTrue(self.username, msg="User not found.")

    # noinspection PyMethodMayBeStatic
    def reset_sdk(self):
        # pylint: disable=no-self-use
        accelbyte_py_sdk.reset()

    def login_client(self):
        from accelbyte_py_sdk.services.auth import login_client

        _, error = login_client()
        self.assertIsNone(error, msg=f"Failed to log in the client. {str(error)}")

    def login_user(self):
        from accelbyte_py_sdk.services.auth import login_user

        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, msg=f"Failed to log in the user. {str(error)}")

    def log(self, msg: object, level: Optional[int] = None):
        level = level if level is not None else logging.INFO
        self.logger.log(level=level, msg=msg)

    def log_critical(self, msg: object, level: Optional[int] = None):
        self.log(msg=msg, level=logging.CRITICAL)

    def log_debug(self, msg: object, level: Optional[int] = None):
        self.log(msg=msg, level=logging.DEBUG)

    def log_error(self, msg: object, level: Optional[int] = None):
        self.log(msg=msg, level=logging.ERROR)

    def log_info(self, msg: object, level: Optional[int] = None):
        self.log(msg=msg, level=logging.INFO)

    def log_warning(self, msg: object, level: Optional[int] = None):
        self.log(msg=msg, level=logging.WARNING)

    async def asyncSetUp(self) -> None:
        asyncio.get_running_loop().set_debug(False)

        from accelbyte_py_sdk.core import get_access_token
        from accelbyte_py_sdk.core import get_base_url

        self.init_sdk()
        self.login_user()

        base_url, error = get_base_url()
        self.assertIsNone(error, msg=f"Failed to get the base url. {str(error)}")

        access_token, error = get_access_token()
        self.assertIsNone(error, msg=f"Failed to get the access token. {str(error)}")

        self.ws_client = WebsocketsWSClient(
            uri=base_url,
            access_token=access_token
        )

        self.ws_client.listeners.append(self.on_receive)

        await self.ws_client.connect()

    async def asyncTearDown(self) -> None:
        if self.ws_client is not None:
            await self.ws_client.disconnect()
            self.ws_client = None
        self.reset_sdk()

    async def on_receive(self, message: str):
        self.messages.put(message)

    def _setupAsyncioLoop(self):
        assert self._asyncioTestLoop is None, 'asyncio test loop already initialized'
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        loop.set_debug(False)  # overrode to disable this log
        self._asyncioTestLoop = loop
        fut = loop.create_future()
        self._asyncioCallsTask = loop.create_task(self._asyncioLoopRunner(fut))
        loop.run_until_complete(fut)
