from random import randint
from pathlib import Path
from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.iam.models import AccountCreateUserRequestV4


class IAMTestCase(IntegrationTestCase):
    exported_filename: str = "exported"
    user_id: Optional[str] = None
    scope: str = "commerce account social publishing analytics"
    username = f"testPythonServerSDKUser_{str(randint(0, 1_000_000)).rjust(7, '0')}"
    model_user_create_request = AccountCreateUserRequestV4.create(
        auth_type="EMAILPASSWD",
        code="",
        country="US",
        date_of_birth="1990-01-01",
        display_name="Python Extend SDK Test",
        email_address=f"{username}@test.com",
        username=username,
        password="q!w@e#r$azsxdcfv1",
        password_md5_sum="",
        reach_minimum_age=True,
    )

    # noinspection PyMethodMayBeStatic
    def do_create_user(self, body: AccountCreateUserRequestV4):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.iam import public_create_user_v4

        result, error = public_create_user_v4(body=body)

        if error is None:
            user_id = result.user_id
        else:
            user_id = None

        return result, error, user_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.iam import admin_delete_user_information_v3

        if self.user_id is not None:
            _, error = admin_delete_user_information_v3(user_id=self.user_id)
            self.log_warning(
                msg=f"Failed to tear down user. {str(error)}",
                condition=error is not None,
            )
            self.user_id = None

        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # region test:create_user

    def test_create_user(self):
        # arrange
        # NOTE(elmer): can't delete, need user id

        # act
        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.user_id = user_id

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_user

    # region test:delete_user

    def test_delete_user(self):
        from accelbyte_py_sdk.api.iam import admin_delete_user_information_v3

        # arrange
        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.log_warning(
            msg=f"Failed to set up user. {str(error)}", condition=error is not None
        )
        self.user_id = user_id

        # act
        _, error = admin_delete_user_information_v3(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)
        self.user_id = None

    # endregion test:delete_user

    # region test:admin_get_user_by_user_id_v3

    def test_admin_get_user_by_user_id_v3(self):
        from accelbyte_py_sdk.api.iam import admin_get_user_by_user_id_v3

        # arrange
        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.log_warning(
            msg=f"Failed to set up user. {str(error)}", condition=error is not None
        )
        self.user_id = user_id

        # act
        _, error = admin_get_user_by_user_id_v3(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_get_user_by_user_id_v3

    # region test:admin_list_users_v3

    def test_admin_list_users_v3(self):
        from accelbyte_py_sdk.api.iam import admin_list_users_v3

        # arrange
        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.log_warning(
            msg=f"Failed to set up user. {str(error)}", condition=error is not None
        )
        self.user_id = user_id

        # act
        result, error = admin_list_users_v3()

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)

    # endregion test:admin_list_users_v3

    # region test:admin_update_user_v4

    def test_admin_update_user_v4(self):
        from accelbyte_py_sdk.api.iam import update_user
        from accelbyte_py_sdk.api.iam import admin_update_user_v4
        from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
        from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequestV3

        # arrange
        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.log_warning(
            msg=f"Failed to set up user. {str(error)}", condition=error is not None
        )
        self.user_id = user_id

        # act
        result, error = admin_update_user_v4(
            body=ModelUserUpdateRequestV3.create(country="ID"), user_id=self.user_id
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelUserResponseV3)
        self.assertEqual(result.country, "ID")

    # endregion test:admin_update_user_v4

    # region test:token_grant_v3

    def test_token_grant_v3(self):
        from accelbyte_py_sdk.api.iam import authorize_v3
        from accelbyte_py_sdk.api.iam import token_grant_v3
        from accelbyte_py_sdk.api.iam import user_authentication_v3
        from accelbyte_py_sdk.core import create_pkce_verifier_and_challenge_s256
        from accelbyte_py_sdk.core import get_client_id
        from accelbyte_py_sdk.core import get_env_user_credentials

        # arrange
        client_id, error = get_client_id()
        self.assertIsNone(error, error)

        (
            code_verifier,
            code_challenge,
            code_challenge_method,
        ) = create_pkce_verifier_and_challenge_s256()

        request_id, error = authorize_v3(
            response_type="code",
            client_id=client_id,
            scope=self.scope,
            code_challenge=code_challenge,
            code_challenge_method=code_challenge_method,
        )
        self.assertIsNone(error, error)
        self.assertIsNotNone(request_id)

        username, password = get_env_user_credentials()

        code, error = user_authentication_v3(
            user_name=username,
            password=password,
            request_id=request_id,
            client_id=client_id,
        )
        self.assertIsNone(error, error)
        self.assertIsNotNone(code)

        # act
        _, error = token_grant_v3(
            grant_type="authorization_code",
            code=code,
            code_verifier=code_verifier,
            redirect_uri="",
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:token_grant_v3

    # region test:user_authentication_v3

    def test_user_authentication_v3(self):
        from accelbyte_py_sdk.api.iam import authorize_v3
        from accelbyte_py_sdk.api.iam import user_authentication_v3
        from accelbyte_py_sdk.core import create_pkce_verifier_and_challenge_s256
        from accelbyte_py_sdk.core import get_client_id
        from accelbyte_py_sdk.core import get_env_user_credentials

        # arrange
        client_id, error = get_client_id()
        self.assertIsNone(error, error)

        (
            code_verifier,
            code_challenge,
            code_challenge_method,
        ) = create_pkce_verifier_and_challenge_s256()

        request_id, error = authorize_v3(
            response_type="code",
            client_id=client_id,
            scope=self.scope,
            code_challenge=code_challenge,
            code_challenge_method=code_challenge_method,
        )
        self.assertIsNone(error, error)
        self.assertIsNotNone(request_id)

        username, password = get_env_user_credentials()

        # act
        _, error = user_authentication_v3(
            user_name=username,
            password=password,
            request_id=request_id,
            client_id=client_id,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:user_authentication_v3

    # region test:authorize_v3

    def test_authorize_v3(self):
        from accelbyte_py_sdk.api.iam import authorize_v3
        from accelbyte_py_sdk.core import create_pkce_verifier_and_challenge_s256
        from accelbyte_py_sdk.core import get_client_id

        # arrange
        client_id, error = get_client_id()
        self.assertIsNone(error, error)

        (
            code_verifier,
            code_challenge,
            code_challenge_method,
        ) = create_pkce_verifier_and_challenge_s256()

        # act
        _, error = authorize_v3(
            response_type="code",
            client_id=client_id,
            scope=self.scope,
            code_challenge=code_challenge,
            code_challenge_method=code_challenge_method,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:authorize_v3

    # region test:admin_download_my_backup_codes_v4

    def test_admin_download_my_backup_codes_v4(self):
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")

        from accelbyte_py_sdk.api.iam import admin_download_my_backup_codes_v4
        from accelbyte_py_sdk.api.iam.models import RestErrorResponse

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = admin_download_my_backup_codes_v4()
        if error and isinstance(error, RestErrorResponse):
            if error.error_code == 10191:  # email not verified
                self.skipTest(reason=error.error_message)
            if error.error_code == 10192:  # factor not enabled
                self.skipTest(reason=error.error_message)

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:admin_download_my_backup_codes_v4

    # region test:public_download_my_backup_codes_v4

    def test_public_download_my_backup_codes_v4(self):
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")

        from accelbyte_py_sdk.api.iam import public_download_my_backup_codes_v4
        from accelbyte_py_sdk.api.iam.models import RestErrorResponse

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = public_download_my_backup_codes_v4()
        if error and isinstance(error, RestErrorResponse):
            if error.error_code == 10191:  # email not verified
                self.skipTest(reason=error.error_message)
            if error.error_code == 10192:  # factor not enabled
                self.skipTest(reason=error.error_message)

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:public_download_my_backup_codes_v4

    # end of file
