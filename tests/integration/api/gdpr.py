from random import randint
from typing import Optional
from uuid import uuid4

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.iam.models import AccountCreateUserRequestV4


class GDPRTestCase(IntegrationTestCase):
    did_configure: bool = False
    user_namespace: str = "accelbyte"
    uid: str = str(randint(0, 1_000_000)).rjust(7, "0")
    user_id: Optional[str] = None
    scope: str = "commerce account social publishing analytics"
    unique_display_name = f"testPythonServerSDKUser_{uid}"
    username = f"testPythonServerSDKUser_{uid}"
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
        unique_display_name=unique_display_name,
    )

    # noinspection PyMethodMayBeStatic
    def do_create_user(
        self, body: AccountCreateUserRequestV4, namespace: Optional[str] = None
    ):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.iam import public_create_user_v4

        body.username = f"testPythonServerSDKUser_{uuid4().hex[0:7]}"
        body.email_address = f"{body.username}@test.com"
        result, error = public_create_user_v4(body=body, namespace=namespace)

        if error is None:
            user_id = result.user_id
        else:
            user_id = None

        return result, error, user_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration

        if self.user_id is not None:
            self.delete_user(user_id=self.user_id, namespace=self.user_namespace)
            self.user_id = None
        if self.did_configure:
            _, error = delete_admin_email_configuration(
                emails=[self.model_user_create_request.email_address]
            )
            self.log_warning(
                msg=f"Failed to tear down admin email configuration. {str(error)}",
                condition=error is not None,
            )
            self.did_configure = False
        super().tearDown()

    # region test:admin_get_user_personal_data_requests

    def test_admin_get_user_personal_data_requests(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gdpr import admin_get_user_personal_data_requests

        # arrange
        _, error, user_id = self.do_create_user(
            body=self.model_user_create_request, namespace=self.user_namespace
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if error is not None and not user_id:
            self.skipTest(reason=f"Failed to set up user. {str(error)}")
        # DOC-REDACT(end)

        self.user_id = user_id

        # act
        _, error = admin_get_user_personal_data_requests(
            user_id=self.user_id, namespace=self.user_namespace
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_get_user_personal_data_requests

    # region test:admin_submit_user_account_deletion_request

    def test_admin_submit_user_account_deletion_request(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gdpr import admin_submit_user_account_deletion_request
        from accelbyte_py_sdk.api.gdpr import admin_cancel_user_account_deletion_request

        # arrange
        _, error, user_id = self.do_create_user(
            body=self.model_user_create_request, namespace=self.user_namespace
        )
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if error is not None and not user_id:
            self.skipTest(reason=f"Failed to set up user. {str(error)}")
        # DOC-REDACT(end)

        self.user_id = user_id

        # act
        _, error = admin_submit_user_account_deletion_request(
            user_id=self.user_id, namespace=self.user_namespace
        )

        # assert
        self.assertIsNone(error, error)

        # clean up
        #   the GDPR deletion is an async process, this request will cancel the
        #   previous request since we are going to delete the user we created
        #   in the tear down step
        _, _ = admin_cancel_user_account_deletion_request(
            user_id=self.user_id, namespace=self.user_namespace
        )

    # endregion test:admin_submit_user_account_deletion_request

    # region test:delete_admin_email_configuration

    def test_delete_admin_email_configuration(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

        # arrange
        _, error = save_admin_email_configuration(
            body=[self.model_user_create_request.email_address]
        )
        self.log_warning(
            msg=f"Failed to set up admin email configuration {str(error)}",
            condition=error is not None,
        )
        self.did_configure = error is None

        # act
        _, error = delete_admin_email_configuration(
            emails=[self.model_user_create_request.email_address]
        )

        # assert
        self.assertIsNone(error, error)
        self.did_configure = error is not None

    # endregion test:delete_admin_email_configuration

    # region test:get_admin_email_configuration

    def test_get_admin_email_configuration(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gdpr import get_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

        # arrange
        _, error = save_admin_email_configuration(
            body=[self.model_user_create_request.email_address]
        )
        self.log_warning(
            msg=f"Failed to set up admin email configuration {str(error)}",
            condition=error is not None,
        )
        self.did_configure = error is None

        # act
        _, error = get_admin_email_configuration()

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_admin_email_configuration

    # region test:save_admin_email_configuration

    def test_save_admin_email_configuration(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

        # arrange
        _, _ = delete_admin_email_configuration(
            emails=[self.model_user_create_request.email_address]
        )

        # act
        _, error = save_admin_email_configuration(
            body=[self.model_user_create_request.email_address]
        )
        self.did_configure = error is None

        # assert
        self.assertIsNone(error, error)

    # endregion test:save_admin_email_configuration

    # region test:update_admin_email_configuration

    def test_update_admin_email_configuration(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
        from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration

        # arrange
        _, error = save_admin_email_configuration(
            body=[self.model_user_create_request.email_address]
        )
        self.log_warning(
            msg=f"Failed to set up admin email configuration {str(error)}",
            condition=error is not None,
        )
        self.did_configure = error is None

        # act
        _, error = update_admin_email_configuration(
            body=[self.model_user_create_request.email_address]
        )
        self.did_configure = error is None

        # assert
        self.assertIsNone(error, error)

    # endregion test:update_admin_email_configuration

    # end of file
