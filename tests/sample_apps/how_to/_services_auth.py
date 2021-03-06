from ._integration_test_case import IntegrationTestCase


class AuthServicesTestCase(IntegrationTestCase):
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

    def test_login_user(self):
        from accelbyte_py_sdk.core import get_env_user_credentials
        from accelbyte_py_sdk.services.auth import login_user

        # arrange
        username, password = get_env_user_credentials()

        # act
        _, error = login_user(username=username, password=password)

        # assert
        self.assertIsNone(error, error)

    def test_login_platform(self):
        import requests
        from accelbyte_py_sdk.services.auth import login_platform

        # arrange
        client_id = "test.client"
        client_secret = "UTBcWwt5"
        grant_type = "authorization_code"
        phant_auth_host = "https://phantauth.net"
        platform_id = "phantauth"
        redirect_uri = "http://localhost"
        token_type = "authorization"
        username = "test.serversdk1"

        response = requests.get(
            url="{host}/user/{username}/token/{tokenType}".format_map(
                {
                    "host": phant_auth_host,
                    "username": username,
                    "tokenType": token_type,
                }
            )
        )
        if not response.ok:
            self.skipTest(reason=f"Failed to get PhantAuth Code.")

        phant_auth_code = response.text
        self.assertTrue(phant_auth_code)

        response = requests.post(
            url="{host}/auth/token".format_map(
                {
                    "host": phant_auth_host,
                }
            ),
            data={
                "grant_type": grant_type,
                "client_id": client_id,
                "client_secret": client_secret,
                "redirect_uri": redirect_uri,
                "code": phant_auth_code,
            },
        )
        if not response.ok:
            self.skipTest(reason=f"Failed to get PhantAuth Token.")

        phant_auth_token = response.json()
        self.assertTrue(phant_auth_token)

        phant_auth_token_id = phant_auth_token["id_token"]

        # act
        _, error = login_platform(
            platform_id=platform_id, platform_token=phant_auth_token_id
        )

        # assert
        self.assertIsNone(error, error)

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
