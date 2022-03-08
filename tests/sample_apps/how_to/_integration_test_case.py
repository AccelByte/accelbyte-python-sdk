import logging
from abc import ABC
from queue import Queue
from typing import Optional
from unittest import IsolatedAsyncioTestCase
from unittest import TestCase

import accelbyte_py_sdk
from accelbyte_py_sdk.core import WebsocketsWSClient

options = {
    "config": "DotEnvFileConfigRepository",
    "config_params": ([], {"dotenv_file": "how_to.env", "set_env_var": True}),
    "log_files": {
        "http": {"filename": "http.log", "capacity": 3, "level": logging.INFO}
    }
}


class IntegrationTestCase(ABC, TestCase):

    username: Optional[str] = None
    password: Optional[str] = None

    def setUp(self) -> None:
        from accelbyte_py_sdk import initialize
        from accelbyte_py_sdk import is_initialized
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_client

        # initialize
        self.assertFalse(is_initialized())
        initialize(options=options)
        self.assertTrue(is_initialized())

        # get values from env
        self.username, self.password = get_env_user_credentials()

        # login
        _, error = login_client()
        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        accelbyte_py_sdk.reset()


class AsyncIntegrationTestCase(ABC, IsolatedAsyncioTestCase):

    username: Optional[str] = None
    password: Optional[str] = None
    ws_client: Optional[WebsocketsWSClient] = None
    messages: Queue = Queue()

    async def asyncSetUp(self) -> None:
        from accelbyte_py_sdk import initialize
        from accelbyte_py_sdk import is_initialized
        from accelbyte_py_sdk.core import get_access_token
        from accelbyte_py_sdk.core import get_base_url
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user

        # initialize
        self.assertFalse(is_initialized())
        initialize(options=options)
        self.assertTrue(is_initialized())

        # get values from env
        self.username, self.password = get_env_user_credentials()

        # login
        _, error = login_user(
            username=self.username,
            password=self.password
        )
        self.assertIsNone(error, error)

        x_base_url, error = get_base_url()
        self.assertIsNone(error, error)

        access_token, error = get_access_token()
        self.assertIsNone(error, error)

        self.ws_client = WebsocketsWSClient(
            uri=x_base_url,
            access_token=access_token
        )

        self.ws_client.listeners.append(self.on_receive)

        await self.ws_client.connect()

    async def asyncTearDown(self) -> None:
        if self.ws_client is not None:
            await self.ws_client.disconnect()
            self.ws_client = None

    async def on_receive(self, message: str):
        self.messages.put(message)
