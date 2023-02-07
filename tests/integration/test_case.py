import asyncio
import logging
import random
import string
import time

from abc import ABC
from queue import Queue
from typing import Any, Optional, Tuple
from unittest import IsolatedAsyncioTestCase
from unittest import TestCase

import accelbyte_py_sdk
from accelbyte_py_sdk import AccelByteSDK
from accelbyte_py_sdk.core import EnvironmentConfigRepository, InMemoryTokenRepository
from accelbyte_py_sdk.core import WebsocketsWSClient

from .utils import format_request_response_as_yaml
from .utils import get_init_options
from .values import LOGGER


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

    def get_user_id(self, sdk: Optional[AccelByteSDK] = None) -> Optional[str]:
        if (
            not self.sdk_initialized or
            not self.user_found or
            not self.logged_in
        ):
            return None

        from accelbyte_py_sdk.core import get_token_repository

        token_repo = get_token_repository(sdk=sdk)
        token = token_repo.get_token()
        return token.user_id

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

    @staticmethod
    def create_user_sdk(
        username: str, password: str, existing_sdk: Optional[AccelByteSDK] = None
    ) -> Tuple[Optional[AccelByteSDK], Any]:
        from accelbyte_py_sdk.services.auth import login_user

        sdk = AccelByteSDK()
        sdk.initialize(
            options={
                "config": existing_sdk.get_config_repository()
                if existing_sdk is not None
                else EnvironmentConfigRepository(),
                "token": InMemoryTokenRepository(),
            }
        )

        result, error = login_user(
            username=username,
            password=password,
            sdk=sdk,
        )
        if error:
            return None, error

        return sdk, None

    @staticmethod
    def delete_user(
        user_id: str,
        namespace: Optional[str] = None,
        sdk: Optional[AccelByteSDK] = None,
    ):
        import accelbyte_py_sdk.api.iam as iam_service

        _, _ = iam_service.admin_delete_user_information_v3(
            user_id=user_id,
            namespace=namespace,
            sdk=sdk,
        )

    @staticmethod
    def generate_user(
        country: str = "US",
        date_of_birth: str = "1990-01-01",
        email_domain: str = "test.com",
        user_prefix: str = "python_sdk_",
        namespace: Optional[str] = None,
        sdk: Optional[AccelByteSDK] = None,
    ) -> Tuple[Optional[Tuple[str, str, str]], Any]:
        import accelbyte_py_sdk.api.iam as iam_service
        import accelbyte_py_sdk.api.iam.models as iam_models
        from accelbyte_py_sdk.core import generate_id

        username = f"{user_prefix}{generate_id(8)}"
        password = SDKTestCaseUtils.generate_password(16)
        email_address = f"{username}@{email_domain}"

        result, error = iam_service.public_create_user_v4(
            body=iam_models.AccountCreateUserRequestV4.create_from_dict(
                {
                    "authType": "EMAILPASSWD",
                    "country": country,
                    "emailAddress": email_address,
                    "username": username,
                    "password": password,
                    # optional
                    "dateOfBirth": date_of_birth,
                }
            ),
            namespace=namespace,
            sdk=sdk,
        )
        if error:
            return None, error

        if not (user_id := getattr(result, "user_id", None)):
            return None, "userId not found"

        return (username, password, user_id), None

    @staticmethod
    def generate_password(length: int) -> str:
        strings = [
            string.ascii_lowercase,
            string.ascii_uppercase,
            string.digits,
            "!@#$%^&*()_+-=",
        ]

        si = 0
        result = ""
        for _ in range(length):
            result += random.choice(strings[si])
            si += 1
            if si == len(strings):
                si = 0

        return result


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
