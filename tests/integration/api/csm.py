from random import choices
from string import ascii_uppercase
from time import sleep

from tests.integration.test_case import IntegrationTestCase


class CSMTestCase(IntegrationTestCase):
    # region test:csm

    def test_csm(self):
        from accelbyte_py_sdk.core import generate_id

        import accelbyte_py_sdk.api.iam as iam_service
        import accelbyte_py_sdk.api.csm as csm_service
        import accelbyte_py_sdk.api.csm.models as csm_models

        app_name = f"pythonsdk-test-{generate_id(8)}"

        check_retry = 60
        check_interval = 5.0

        env_sec_key = "AB_PY_SEC_TEST_" + "".join(choices(ascii_uppercase, k=4))
        env_sec_value = generate_id(32)
        env_sec_value_new = generate_id(32)
        env_sec_value_masked = env_sec_value[0:5] + ("*" * 6)
        env_sec_value_new_masked = env_sec_value_new[0:5] + ("*" * 6)

        env_var_key = "AB_PY_KEY_TEST_" + "".join(choices(ascii_uppercase, k=4))
        env_var_value = generate_id(32)
        env_var_value_new = generate_id(32)

        env_extend_app_client_id = "AB_CLIENT_ID"
        env_extend_app_client_id_value = ""

        try:
            result, error = csm_service.create_app_v2(
                app=app_name,
                body=csm_models.ApimodelCreateAppV2Request.create(
                    scenario="function-override",
                    description="Python Extend SDK integration test app.",
                ),
            )
            self.assertIsNone(error, str(error))
            self.assertEqual(result.app_name, app_name)

            is_app_ready = False
            last_app_status = ""

            for i in range(check_retry):
                result, error = csm_service.get_app_v2(app=app_name)
                self.assertIsNone(error, str(error))

                last_app_status = result.app_status

                print(
                    f"[{i + 1}/{check_retry}] Checking status [{result.app_name}]: {last_app_status}"
                )

                if last_app_status == "app-undeployed":
                    is_app_ready = True
                    break

                sleep(check_interval)

            if not is_app_ready:
                self.skipTest(
                    reason=(
                        f"After waiting for {check_interval * check_retry}s, app {app_name} is not ready. "
                        f"Last status: {last_app_status}"
                    )
                )
                return

            # secrets

            result, error = csm_service.save_secret_v2(
                app=app_name,
                body=csm_models.ApimodelSaveSecretConfigurationV2Request.create(
                    config_name=env_sec_key,
                    value=env_sec_value,
                    source="plaintext",
                ),
            )
            self.assertIsNone(error, str(error))
            self.assertEqual(result.config_name, env_sec_key)

            result, error = csm_service.get_list_of_secrets_v2(
                app=app_name, limit=100, offset=0
            )
            self.assertIsNone(error, str(error))
            self.assertTrue(result.data)

            found_env_sec_key = False
            found_env_sec_id = ""
            found_env_sec_value = ""
            for secret in result.data:
                if secret.config_name == env_sec_key:
                    found_env_sec_key = True
                    found_env_sec_id = secret.config_id
                    found_env_sec_value = secret.value
                    break

            self.assertTrue(found_env_sec_key, f"Env secret {env_sec_key} not found.")
            self.assertTrue(found_env_sec_id)
            self.assertEqual(found_env_sec_value, env_sec_value_masked)

            for secret in result.data:
                if secret.config_name == env_extend_app_client_id:
                    env_extend_app_client_id_value = secret.value
                    break

            self.assertIsNotNone(env_extend_app_client_id_value)

            result, error = csm_service.update_secret_v2(
                app=app_name,
                body=csm_models.ApimodelUpdateSecretConfigurationV2Request.create(
                    value=env_sec_value_new
                ),
                config_id=found_env_sec_id,
            )
            self.assertIsNone(error, str(error))
            self.assertEqual(result.value, env_sec_value_new_masked)

            result, error = csm_service.delete_secret_v2(
                app=app_name,
                config_id=found_env_sec_id,
            )
            self.assertIsNone(error, str(error))

            # variables

            result, error = csm_service.save_variable_v2(
                app=app_name,
                body=csm_models.ApimodelSaveConfigurationV2Request.create(
                    config_name=env_var_key,
                    value=env_var_value,
                    source="plaintext",
                ),
            )
            self.assertIsNone(error, str(error))
            self.assertEqual(result.config_name, env_var_key)

            result, error = csm_service.get_list_of_variables_v2(
                app=app_name, limit=100, offset=0
            )
            self.assertIsNone(error, str(error))
            self.assertTrue(result.data)

            found_env_var_key = False
            found_env_var_id = ""
            found_env_var_value = ""
            for variable in result.data:
                if variable.config_name == env_var_key:
                    found_env_var_key = True
                    found_env_var_id = variable.config_id
                    found_env_var_value = variable.value
                    break

            self.assertTrue(found_env_var_key, f"Env variable {env_var_key} not found.")
            self.assertTrue(found_env_var_id)
            self.assertEqual(found_env_var_value, env_var_value)

            result, error = csm_service.update_variable_v2(
                app=app_name,
                body=csm_models.ApimodelUpdateConfigurationV2Request.create(
                    value=env_var_value_new
                ),
                config_id=found_env_var_id,
            )
            self.assertIsNone(error, str(error))
            self.assertEqual(result.value, env_var_value_new)

            result, error = csm_service.delete_variable_v2(
                app=app_name,
                config_id=found_env_var_id,
            )
            self.assertIsNone(error, str(error))
        except AssertionError as e:
            result, error = csm_service.delete_app_v2(
                app=app_name,
                forced="true",
            )
            self.assertIsNone(error, str(error))

            _, error = iam_service.admin_delete_client_v3(
                client_id=env_extend_app_client_id
            )
            self.assertIsNone(error, str(error))

            raise e from None
        finally:
            _, _ = csm_service.delete_app_v2(
                app=app_name,
                forced="true",
            )

            _, _ = iam_service.admin_delete_client_v3(
                client_id=env_extend_app_client_id
            )

    # endregion test:csm
