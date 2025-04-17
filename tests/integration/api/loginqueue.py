from tests.integration.test_case import IntegrationTestCase


class LoginQueueTestCase(IntegrationTestCase):
    # region test:admin_get_configuration

    def test_admin_get_configuration(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.loginqueue import admin_get_configuration

        # arrange

        # act
        config, error = admin_get_configuration()

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_get_configuration

    # region test:admin_update_configuration

    def test_admin_update_configuration(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.loginqueue import admin_update_configuration
        from accelbyte_py_sdk.api.loginqueue.models import ApimodelsConfigurationRequest

        # arrange

        # act
        config, error = admin_update_configuration(
            body=ApimodelsConfigurationRequest.create_from_dict(
                {
                    "maxLoginRate": 100,
                }
            )
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_update_configuration
