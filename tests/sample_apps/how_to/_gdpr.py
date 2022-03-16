from random import randint
from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequest


class GDPRTestCase(IntegrationTestCase):

    user_id: Optional[str] = None
    model_user_create_request = ModelUserCreateRequest.create(
        auth_type="EMAILPASSWD",
        country="US",
        display_name="testPythonServerSDKUser",
        login_id=f"testPythonServerSDKUser{str(randint(0, 10_000)).rjust(5, '0')}@test.com",
        password="q!w@e#r$azsxdcfv"
    )

    def setUp(self) -> None:
        from accelbyte_py_sdk.api.iam import create_user
        from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponse

        super().setUp()

        result, error = create_user(body=self.model_user_create_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelUserCreateResponse)
        self.assertIsNotNone(result.user_id)

        self.user_id = result.user_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.iam import delete_user
        from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration

        if self.user_id is not None:
            _, _ = delete_user(user_id=self.user_id)
            self.user_id = None
        _, _ = delete_admin_email_configuration(emails=[self.model_user_create_request.login_id])
        super().tearDown()

    def test_admin_get_user_personal_data_requests(self):
        from accelbyte_py_sdk.api.gdpr import admin_get_user_personal_data_requests

        # arrange

        # act
        _, error = admin_get_user_personal_data_requests(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)

    def test_admin_submit_user_account_deletion_request(self):
        from accelbyte_py_sdk.api.gdpr import admin_submit_user_account_deletion_request

        # arrange

        # act
        _, error = admin_submit_user_account_deletion_request(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)

    def test_delete_admin_email_configuration(self):
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration

        # arrange
        _, error = save_admin_email_configuration(body=[self.model_user_create_request.login_id])
        self.assertIsNone(error, error)

        # act
        _, error = delete_admin_email_configuration(emails=[self.model_user_create_request.login_id])

        # assert
        self.assertIsNone(error, error)

    def test_get_admin_email_configuration(self):
        from accelbyte_py_sdk.api.gdpr import get_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

        # arrange
        _, error = save_admin_email_configuration(body=[self.model_user_create_request.login_id])
        self.assertIsNone(error, error)

        # act
        _, error = get_admin_email_configuration()

        # assert
        self.assertIsNone(error, error)

    def test_save_admin_email_configuration(self):
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

        # arrange

        # act
        _, error = save_admin_email_configuration(body=[self.model_user_create_request.login_id])

        # assert
        self.assertIsNone(error, error)

    def test_update_admin_email_configuration(self):
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration

        # arrange
        _, error = save_admin_email_configuration(body=[self.model_user_create_request.login_id])
        self.assertIsNone(error, error)

        # act
        _, error = update_admin_email_configuration(body=[self.model_user_create_request.login_id])

        # assert
        self.assertIsNone(error, error)
