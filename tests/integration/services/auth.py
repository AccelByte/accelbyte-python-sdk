import logging

from unittest import TestCase

from tests.integration.test_case import IntegrationTestCase
from tests.integration.utils import get_init_options


class AuthServicesTestCase(IntegrationTestCase):
    def setUp(self) -> None:
        self.logger = logging.getLogger("accelbyte_py_sdk")
        self.logger_level = self.logger.level

    def tearDown(self) -> None:
        self.logger.setLevel(self.logger_level)

    # region test:login_client

    def test_login_client(self):
        from accelbyte_py_sdk.core import get_client_auth
        from accelbyte_py_sdk.services.auth import login_client

        # arrange
        client_auth, error = get_client_auth()
        self.assertIsNone(error, error)

        client_id, client_secret = client_auth

        # act
        _, error = login_client(client_id=client_id, client_secret=client_secret)

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_client

    # region test:login_client_public

    def test_login_client_public(self):
        import os
        from accelbyte_py_sdk.services.auth import login_client

        # arrange
        self.logger.setLevel(logging.WARNING)

        client_id = os.environ.get("PUBLIC_AB_CLIENT_ID", None)
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if client_id is None:
            self.skipTest(reason="Failed to get PUBLIC_AB_CLIENT_ID")
        # DOC-REDACT(end)

        # act
        with self.assertLogs(logger=self.logger, level=logging.WARNING) as cm:
            _, error = login_client(client_id=client_id, client_secret=None)
            self.assertIn(
                "The use of a Public OAuth Client is highly discouraged for this use case.",
                [r.msg for r in cm.records],
            )

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_client_public

    # region test:login_user

    def test_login_user(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password)

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_user

    # region test:login_user_with_scope

    def test_login_user_with_scope(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password, scope="account")

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_user_with_scope

    # region test:login_user_with_no_scope

    def test_login_user_with_no_scope(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password, scope="")

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_user_with_no_scope

    # region test:login_platform

    def test_login_platform(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Invalid for AGS.")
        # DOC-REDACT(end)

        import os
        import requests
        from accelbyte_py_sdk.services.auth import login_platform

        # arrange
        phantauth_url = os.environ.get(
            "AB_PHANTAUTH_BASE_URL", "https://phantauth.tools.accelbyte.net"
        )

        client_id = "test.client"
        client_secret = "UTBcWwt5"
        grant_type = "authorization_code"
        phantauth_host = (
            phantauth_url.removesuffix("/")
            if phantauth_url
            else "https://phantauth.net"
        )
        platform_id = "phantauth"
        redirect_uri = "http://localhost"
        token_type = "authorization"
        username = "test.serversdk1"

        response = requests.get(
            url="{host}/user/{username}/token/{tokenType}".format_map(
                {
                    "host": phantauth_host,
                    "username": username,
                    "tokenType": token_type,
                }
            )
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if not response.ok:
            self.skipTest(reason=f"Failed to get PhantAuth Code ({phantauth_host}).")
        # DOC-REDACT(end)

        phantauth_code = response.text
        self.assertTrue(phantauth_code)

        response = requests.post(
            url="{host}/auth/token".format_map(
                {
                    "host": phantauth_host,
                }
            ),
            data={
                "grant_type": grant_type,
                "client_id": client_id,
                "client_secret": client_secret,
                "redirect_uri": redirect_uri,
                "code": phantauth_code,
            },
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if not response.ok:
            self.skipTest(reason=f"Failed to get PhantAuth Token ({phantauth_host}).")
        # DOC-REDACT(end)

        phantauth_token = response.json()
        self.assertTrue(phantauth_token)

        phantauth_token_id = phantauth_token["id_token"]

        # act
        _, error = login_platform(
            platform_id=platform_id, platform_token=phantauth_token_id
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_platform

    # region test:logout

    def test_logout(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user
        from accelbyte_py_sdk.services.auth import logout

        # arrange
        username, password = get_env_user_credentials()

        _, error = login_user(username=username, password=password)
        self.assertIsNone(error, error)

        # act
        _, error = logout()

        # assert
        self.assertIsNone(error, error)
        _, error = login_user(username=username, password=password)
        self.assertIsNone(error, error)

    # endregion test:logout

    # region test:refresh_login

    def test_refresh_login(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.core import get_token_repository
        from accelbyte_py_sdk.services.auth import login_user
        from accelbyte_py_sdk.services.auth import refresh_login

        # arrange
        username, password = get_env_user_credentials()

        _, error = login_user(username=username, password=password)
        self.assertIsNone(error, error)

        token_repo = get_token_repository()
        curr_refresh_token = token_repo.get_refresh_token()

        # act
        token, error = refresh_login(refresh_token=curr_refresh_token)

        # assert
        self.assertIsNone(error, error)

    # endregion test:refresh_login

    # region test:login_user_refresh_if_possible

    def test_login_user_refresh_if_possible(self):
        import accelbyte_py_sdk.services.auth
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user, refresh_login

        # arrange
        counter: int = 0

        def refresh_login_(*args, **kwargs):
            nonlocal counter
            counter += 1
            return refresh_login(*args, **kwargs)

        accelbyte_py_sdk.services.auth._login.refresh_login = (
            refresh_login_  # monkey-patch
        )

        username, password = get_env_user_credentials()

        token, error = login_user(
            username=username, password=password, refresh_if_possible=False
        )
        self.assertIsNone(error, error)

        token.expires_in = 0  # monkey-patch

        # act
        token, error = login_user(
            username=username, password=password, refresh_if_possible=True
        )

        # assert
        self.assertEqual(counter, 1)
        self.assertIsNone(error, error)

    # endregion test:login_user_refresh_if_possible


class Auth2ServicesTestCase(IntegrationTestCase):
    def setUp(self) -> None:
        self.logger = logging.getLogger("accelbyte_py_sdk")
        self.logger_level = self.logger.level

    def tearDown(self) -> None:
        self.logger.setLevel(self.logger_level)

    # region test:login_client_v2

    def test_login_client(self):
        from accelbyte_py_sdk.core import get_client_auth
        from accelbyte_py_sdk.services.auth.v2 import login_client

        # arrange
        client_auth, error = get_client_auth()
        self.assertIsNone(error, error)

        client_id, client_secret = client_auth

        # act
        _, error = login_client(client_id=client_id, client_secret=client_secret)

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_client_v2

    # region test:login_client_public_v2

    def test_login_client_public(self):
        import os
        from accelbyte_py_sdk.services.auth.v2 import login_client

        # arrange
        self.logger.setLevel(logging.WARNING)

        client_id = os.environ.get("PUBLIC_AB_CLIENT_ID", None)
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if client_id is None:
            self.skipTest(reason="Failed to get PUBLIC_AB_CLIENT_ID")
        # DOC-REDACT(end)

        # act
        with self.assertLogs(logger=self.logger, level=logging.WARNING) as cm:
            _, error = login_client(client_id=client_id, client_secret=None)
            self.assertIn(
                "The use of a Public OAuth Client is highly discouraged for this use case.",
                [r.msg for r in cm.records],
            )

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_client_public_v2

    # region test:login_user_v2

    def test_login_user(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth.v2 import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password)

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_user_v2

    # region test:login_user_with_scope_v2

    def test_login_user_with_scope(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth.v2 import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password, scope="account")

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_user_with_scope_v2

    # region test:login_user_with_no_scope_v2

    def test_login_user_with_no_scope(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth.v2 import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password, scope="")

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_user_with_no_scope_v2

    # region test:login_platform_v2

    def test_login_platform(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Invalid for AGS.")
        # DOC-REDACT(end)

        import os
        import requests
        from accelbyte_py_sdk.services.auth.v2 import login_platform

        # arrange
        phantauth_url = os.environ.get(
            "AB_PHANTAUTH_BASE_URL", "https://phantauth.tools.accelbyte.net"
        )

        client_id = "test.client"
        client_secret = "UTBcWwt5"
        grant_type = "authorization_code"
        phantauth_host = (
            phantauth_url.removesuffix("/")
            if phantauth_url
            else "https://phantauth.net"
        )
        platform_id = "phantauth"
        redirect_uri = "http://localhost"
        token_type = "authorization"
        username = "test.serversdk1"

        response = requests.get(
            url="{host}/user/{username}/token/{tokenType}".format_map(
                {
                    "host": phantauth_host,
                    "username": username,
                    "tokenType": token_type,
                }
            )
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if not response.ok:
            self.skipTest(reason=f"Failed to get PhantAuth Code ({phantauth_host}).")
        # DOC-REDACT(end)

        phantauth_code = response.text
        self.assertTrue(phantauth_code)

        response = requests.post(
            url="{host}/auth/token".format_map(
                {
                    "host": phantauth_host,
                }
            ),
            data={
                "grant_type": grant_type,
                "client_id": client_id,
                "client_secret": client_secret,
                "redirect_uri": redirect_uri,
                "code": phantauth_code,
            },
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if not response.ok:
            self.skipTest(reason=f"Failed to get PhantAuth Token ({phantauth_host}).")
        # DOC-REDACT(end)

        phantauth_token = response.json()
        self.assertTrue(phantauth_token)

        phantauth_token_id = phantauth_token["id_token"]

        # act
        _, error = login_platform(
            platform_id=platform_id, platform_token=phantauth_token_id
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:login_platform_v2

    # region test:logout_v2

    def test_logout(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth.v2 import login_user
        from accelbyte_py_sdk.services.auth.v2 import logout

        # arrange
        username, password = get_env_user_credentials()

        _, error = login_user(username=username, password=password)
        self.assertIsNone(error, error)

        # act
        _, error = logout()

        # assert
        self.assertIsNone(error, error)
        _, error = login_user(username=username, password=password)
        self.assertIsNone(error, error)

    # endregion test:logout_v2

    # region test:refresh_login_v2

    def test_refresh_login(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.core import get_token_repository
        from accelbyte_py_sdk.services.auth.v2 import login_user
        from accelbyte_py_sdk.services.auth.v2 import refresh_login

        # arrange
        username, password = get_env_user_credentials()

        _, error = login_user(username=username, password=password)
        self.assertIsNone(error, error)

        token_repo = get_token_repository()
        curr_refresh_token = token_repo.get_refresh_token()

        # act
        token, error = refresh_login(refresh_token=curr_refresh_token)

        # assert
        self.assertIsNone(error, error)

    # endregion test:refresh_login_v2

    # region test:login_user_refresh_if_possible_v2

    def test_login_user_refresh_if_possible(self):
        import accelbyte_py_sdk.services.auth._login_refresh
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth.v2 import login_user, refresh_login

        # arrange
        counter: int = 0

        def login_refresh_internal_(*args, **kwargs):
            nonlocal counter
            counter += 1
            return refresh_login(*args, **kwargs)

        accelbyte_py_sdk.services.auth._login_refresh.login_refresh_internal = (
            login_refresh_internal_  # monkey-patch
        )

        username, password = get_env_user_credentials()

        token, error = login_user(
            username=username, password=password, refresh_if_possible=False
        )
        self.assertIsNone(error, error)

        token.expires_in = 0  # monkey-patch

        # act
        token, error = login_user(
            username=username, password=password, refresh_if_possible=True
        )

        # assert
        self.assertEqual(counter, 1)
        self.assertIsNone(error, error)

    # endregion test:login_user_refresh_if_possible_v2


class AuthRefreshServicesTestCase(TestCase):
    # noinspection PyMethodMayBeStatic
    def setup_sdk(self):
        from accelbyte_py_sdk.core import AccelByteSDK

        sdk = AccelByteSDK()
        sdk.initialize(options=get_init_options())

        return sdk

    # region test:background_refresh_v2

    def test_background_refresh(self):
        import time
        import accelbyte_py_sdk.services.auth.v2 as auth

        # setup
        sdk = self.setup_sdk()

        token_repo = sdk.get_token_repository(raise_when_none=True)

        _, error = auth.login_client(sdk=sdk)
        if error:
            self.fail(msg=f"Failed to login as client. Error: {error}")

        old_token = token_repo.get_access_token()

        # act
        auth.enable_background_refresh(
            sdk=sdk,
            options=auth.BackgroundOptions(enabled=True, max_retry=1, refresh_rate=0.0, interval=1)
        )

        # wait
        time.sleep(1.5)

        # assert
        new_token = token_repo.get_access_token()

        self.assertNotEqual(old_token, new_token)

        # clean-up
        auth.disable_background_refresh(sdk=sdk)

    # endregion test:background_refresh_v2

    # region test:on_demand_refresh_v2

    def test_on_demand_refresh(self):
        import accelbyte_py_sdk.services.auth.v2 as auth
        import accelbyte_py_sdk.api.iam as iam

        # setup
        sdk = self.setup_sdk()

        token_repo = sdk.get_token_repository(raise_when_none=True)

        _, error = auth.login_client(sdk=sdk)
        if error:
            self.fail(msg=f"Failed to login as client. Error: {error}")

        old_token = token_repo.get_access_token()

        # act
        auth.enable_on_demand_refresh(
            sdk=sdk,
            options=auth.OnDemandOptions(enabled=True, max_retry=1, refresh_rate=0.0),
        )

        # wait
        _, error = iam.get_country_location_v3(sdk=sdk)
        if error:
            self.skipTest(reason=f"Failed to call random operation. Error: {error}")

        # assert
        new_token = token_repo.get_access_token()

        self.assertNotEqual(old_token, new_token)

        # clean-up
        auth.disable_on_demand_refresh(sdk=sdk)

    # endregion test:on_demand_refresh_v2

    # end of file
