[//]: # (Code generated. DO NOT EDIT.)

# Common Use Cases

## Achievement

Source: [achievement.py](../tests/integration/api/achievement.py)

### Admin Create New Achievement

```python
def test_admin_create_new_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_delete_achievement

    _, error = admin_delete_achievement(
        achievement_code=self.models_achievement_request.achievement_code
    )
    self.exist = error is not None

    result, error = admin_create_new_achievement(
        body=self.models_achievement_request
    )
    self.exist = error is None

    self.assertIsNone(error, error)
```
### Admin Delete Achievement

```python
def test_admin_delete_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_delete_achievement

    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    result, error = admin_delete_achievement(
        achievement_code=self.models_achievement_request.achievement_code
    )
    self.exist = error is not None

    self.assertIsNone(error, error)
```
### Admin Get Achievement

```python
def test_admin_get_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_get_achievement

    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    _, error = admin_get_achievement(
        achievement_code=self.models_achievement_request.achievement_code
    )

    self.assertIsNone(error, error)
```
### Export Achievements

```python
def test_export_achievements(self):
    from accelbyte_py_sdk.api.achievement import export_achievements

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    result, error = export_achievements()

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Admin List Achievements

```python
def test_admin_list_achievements(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_list_achievements

    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    _, error = admin_list_achievements()

    self.assertIsNone(error, error)
```
### Admin Update Achievement

```python
def test_admin_update_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_update_achievement
    from accelbyte_py_sdk.api.achievement.models import (
        ModelsAchievementUpdateRequest,
    )

    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    result, error = admin_update_achievement(
        achievement_code=self.models_achievement_request.achievement_code,
        body=ModelsAchievementUpdateRequest.create(
            default_language="ID",
            description={"ID": "KETERANGAN"},
            goal_value=1,
            hidden=False,
            incremental=False,
            locked_icons=[],
            name={"ID": "NAMA"},
            stat_code=self.stat_code[::-1],
            tags=["MENANDAI"],
            unlocked_icons=[],
        ),
    )

    self.assertIsNone(error, error)
    self.assertIn("ID", result.name)
    self.assertEqual("NAMA", result.name["ID"])
```
## AMS

Source: [ams.py](../tests/integration/api/ams.py)

### Info Regions

```python
def test_info_regions(self):
    from accelbyte_py_sdk.api.ams import info_regions


    _, error = info_regions()

    self.assertIsNone(error, error)
```
### Info Supported Instances

```python
def test_info_supported_instances(self):
    from accelbyte_py_sdk.api.ams import info_supported_instances


    _, error = info_supported_instances()

    self.assertIsNone(error, error)
```
### Image List

```python
def test_image_list(self):
    from accelbyte_py_sdk.api.ams import image_list


    _, error = image_list()

    self.assertIsNone(error, error)
```
## Basic

Source: [basic.py](../tests/integration/api/basic.py)

### Create My Profile

```python
def test_create_my_profile(self):
    self.login_user()  # force re-login: token is revoked

    _, error = self.do_create_my_profile(body=self.user_profile_private_create)

    self.assertIsNone(error, error)
```
### Delete User Profile

```python
def test_delete_user_profile(self):
    from accelbyte_py_sdk.api.basic import delete_user_profile

    result, error = self.do_create_my_profile(body=self.user_profile_private_create)
    user_id = result.user_id

    result, error = delete_user_profile(user_id=user_id)

    self.assertIsNone(error, error)
```
### Get User Profile

```python
def test_get_user_profile(self):
    from accelbyte_py_sdk.api.basic import public_get_user_profile_info

    result, error = self.do_create_my_profile(body=self.user_profile_private_create)
    user_id = result.user_id

    result, error = public_get_user_profile_info(user_id=user_id)

    self.assertIsNone(error, error)
```
### Public Update User Profile

```python
def test_public_update_user_profile(self):
    from accelbyte_py_sdk.api.basic import public_update_user_profile
    from accelbyte_py_sdk.api.basic.models import UserProfileUpdate

    result, error = self.do_create_my_profile(body=self.user_profile_private_create)
    user_id = result.user_id

    result, error = public_update_user_profile(
        user_id=user_id,
        body=UserProfileUpdate.create(first_name="Pertama", last_name="Terakhir"),
    )

    self.assertIsNone(error, error)
    self.assertEqual("Pertama", result.first_name)
    self.assertEqual("Terakhir", result.last_name)
```
## Challenge

Source: [challenge.py](../tests/integration/api/challenge.py)

### Get Challenges

```python
def test_get_challenges(self):
    from accelbyte_py_sdk.api.challenge import get_challenges


    response, error = get_challenges()

    self.assertIsNone(error, error)
```
### Public Get User Rewards

```python
def test_public_get_user_rewards(self):
    from accelbyte_py_sdk.api.challenge import public_get_user_rewards


    response, error = public_get_user_rewards()

    self.assertIsNone(error, error)
```
### Challenge And Goal

```python
def test_challenge_and_goal(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.challenge import (
        admin_get_challenge,
        admin_delete_challenge,
        admin_delete_goal,
    )

    challenge_code = f"python-{generate_id(6)}-challenge"
    challenge_name = "Python Challenge Test"
    goal_code = f"python-{generate_id(6)}-goal"
    goal_name = "Python Goal Test"
    new_challenge_name = "Python Challenge Test UPDATED"

    new_challenge, error = self.do_create_challenge(challenge_code, challenge_name)
    self.assertIsNone(error)
    self.assertEqual(challenge_name, new_challenge.name)

    challenge_data, error = admin_get_challenge(challenge_code=challenge_code)
    self.assertIsNone(error)
    self.assertEqual(challenge_name, challenge_data.name)

    updated_challenge, error = self.do_update_challenge_name(
        challenge_code, new_challenge_name
    )
    self.assertIsNone(error)
    self.assertEqual(new_challenge_name, updated_challenge.name)

    new_goal, error = self.do_create_goal(goal_code, goal_name, challenge_code)
    self.assertIsNone(error)

    _, error = admin_delete_goal(challenge_code=challenge_code, code=goal_code)
    self.assertIsNone(error)

    _, error = admin_delete_challenge(challenge_code=challenge_code)
    self.assertIsNone(error)
```
## Chat

Source: [chat.py](../tests/integration/api/chat.py)

### Admin Profanity Create

```python
def test_admin_profanity_create(self):

    _, error, profanity_id = self.do_create_profanity(body=self.dict_insert_request)
    self.profanity_id = profanity_id

    self.assertIsNone(error, error)
```
### Admin Profanity Query

```python
def test_admin_profanity_query(self):
    from accelbyte_py_sdk.api.chat import admin_profanity_query

    result, error, profanity_id = self.do_create_profanity(
        body=self.dict_insert_request
    )
    self.profanity_id = profanity_id

    _, error = admin_profanity_query(start_with=self.profanity_prefix)

    self.assertIsNone(error, error)
```
### Admin Profanity Delete

```python
def test_admin_profanity_delete(self):
    from accelbyte_py_sdk.api.chat import admin_profanity_delete

    result, error, profanity_id = self.do_create_profanity(
        body=self.dict_insert_request
    )
    self.profanity_id = profanity_id

    _, error = admin_profanity_delete(id_=self.profanity_id)

    self.assertIsNone(error, error)
    self.profanity_id = None
```
### Admin Profanity Update

```python
def test_admin_profanity_update(self):
    from accelbyte_py_sdk.api.chat import admin_profanity_update
    from accelbyte_py_sdk.api.chat.models import ModelsDictionaryUpdateRequest

    result, error, profanity_id = self.do_create_profanity(
        body=self.dict_insert_request
    )
    self.profanity_id = profanity_id

    _, error = admin_profanity_update(
        body=ModelsDictionaryUpdateRequest.create_from_dict(
            {
                "falseNegative": [],
                "falsePositive": [],
                "word": f"{self.profanity_prefix}{uuid4().hex}",
                "wordType": "FALSEPOSITIVE",
            }
        ),
        id_=self.profanity_id,
    )

    self.assertIsNone(error, error)
```
## Cloud Save

Source: [cloudsave.py](../tests/integration/api/cloudsave.py)

### Delete Game Record Handler V1

```python
def test_delete_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )
    self.log_warning(
        msg=f"Failed to set up game record handler. {str(error)}",
        condition=error is not None,
    )

    _, error = delete_game_record_handler_v1(key=self.post_game_record_handler_key)

    self.assertIsNone(error, error)
```
### Get Game Record Handler V1

```python
def test_get_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )
    self.log_warning(
        msg=f"Failed to set up game record handler. {str(error)}",
        condition=error is not None,
    )

    _, error = get_game_record_handler_v1(key=self.post_game_record_handler_key)

    self.assertIsNone(error, error)
```
### Post Game Record Handler V1

```python
def test_post_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

    _, _ = delete_game_record_handler_v1(key=self.post_game_record_handler_key)

    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )

    self.assertIsNone(error, error)
```
### Put Game Record Handler V1

```python
def test_put_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import put_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordRequest
    from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordResponse

    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )
    self.log_warning(
        msg=f"Failed to set up game record handler. {str(error)}",
        condition=error is not None,
    )

    _, error = put_game_record_handler_v1(
        body=ModelsGameRecordRequest.create(dict_={"foo": "baz"}),
        key=self.post_game_record_handler_key,
    )

    self.assertIsNone(error, error)

    result, error = get_game_record_handler_v1(
        key=self.post_game_record_handler_key
    )
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsGameRecordResponse)
    self.assertIsNotNone(result.value)
    self.assertIn("foo", result.value)
    self.assertEqual("baz", result.value["foo"])
```
### Delete Player Record Handler V1

```python
def test_delete_player_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import delete_player_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1

    self.user_id = self.get_user_id()

    _, error = post_player_record_handler_v1(
        body=self.models_player_record_request,
        key=self.post_player_record_handler_key,
        user_id=self.user_id,
    )
    self.log_warning(
        msg=f"Failed to set up player record handler. {str(error)}",
        condition=error is not None,
    )

    _, error = delete_player_record_handler_v1(
        key=self.post_player_record_handler_key, user_id=self.user_id
    )

    self.assertIsNone(error, error)
```
### Create Player Record Handler V1

```python
def test_create_player_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1

    self.user_id = self.get_user_id()

    _, error = post_player_record_handler_v1(
        body=self.models_player_record_request,
        key=self.post_player_record_handler_key,
        user_id=self.user_id,
    )
    self.log_warning(
        msg=f"Failed to set up player record handler. {str(error)}",
        condition=error is not None,
    )

    self.assertIsNone(error, error)
```
### Get Player Record Handler V1

```python
def test_get_player_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import get_player_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1

    self.user_id = self.get_user_id()

    _, error = post_player_record_handler_v1(
        body=self.models_player_record_request,
        key=self.post_player_record_handler_key,
        user_id=self.user_id,
    )
    self.log_warning(
        msg=f"Failed to set up player record handler. {str(error)}",
        condition=error is not None,
    )

    _, error = get_player_record_handler_v1(
        key=self.post_player_record_handler_key, user_id=self.user_id
    )

    self.assertIsNone(error, error)
```
### Put Player Record Handler V1

```python
def test_put_player_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import get_player_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import put_player_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordRequest
    from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordResponse

    self.user_id = self.get_user_id()

    _, error = post_player_record_handler_v1(
        body=self.models_player_record_request,
        key=self.post_player_record_handler_key,
        user_id=self.user_id,
    )
    self.log_warning(
        msg=f"Failed to set up player record handler. {str(error)}",
        condition=error is not None,
    )

    _, error = put_player_record_handler_v1(
        body=ModelsPlayerRecordRequest.create(dict_={"foo": "baz"}),
        key=self.post_player_record_handler_key,
        user_id=self.user_id,
    )

    self.assertIsNone(error, error)

    result, error = get_player_record_handler_v1(
        key=self.post_player_record_handler_key, user_id=self.user_id
    )
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsPlayerRecordResponse)
    self.assertIsNotNone(result.value)
    self.assertIn("foo", result.value)
    self.assertEqual("baz", result.value["foo"])
```
## Custom Service Manager

Source: [csm.py](../tests/integration/api/csm.py)

### Csm

```python
def test_csm(self):
    from accelbyte_py_sdk.core import generate_id
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

        self.assertTrue(
            is_app_ready,
            (
                f"After waiting for {check_interval * check_retry}s, "
                f"app {app_name} is not ready. Last status: {last_app_status}"
            ),
        )

        # secrets

        result, error = csm_service.save_secret_v2(
            app=app_name,
            body=csm_models.ApimodelSaveConfigurationV2Request.create(
                config_name=env_sec_key,
                value=env_sec_value,
                source="plaintext",
                apply_mask=True,
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

        result, error = csm_service.update_secret_v2(
            app=app_name,
            body=csm_models.ApimodelUpdateConfigurationV2Request.create(
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

        raise e from None
    finally:
        _, _ = csm_service.delete_app_v2(
            app=app_name,
            forced="true",
        )
```
## Game Telemetry

Source: [gametelemetry.py](../tests/integration/api/gametelemetry.py)

### Save Events V1

```python
def test_save_events_v1(self):

    from accelbyte_py_sdk.api.gametelemetry import (
        protected_save_events_game_telemetry_v1_protected_events_post,
    )
    from accelbyte_py_sdk.api.gametelemetry.models import TelemetryBody


    result, error = protected_save_events_game_telemetry_v1_protected_events_post(
        body=[
            TelemetryBody.create(
                event_name="pythonevent",
                event_namespace="test",
                payload={"foo": "bar"},
            )
        ]
    )

    self.assertIsNone(error)
```
## GDPR

Source: [gdpr.py](../tests/integration/api/gdpr.py)

### Admin Get User Personal Data Requests

```python
def test_admin_get_user_personal_data_requests(self):

    from accelbyte_py_sdk.api.gdpr import admin_get_user_personal_data_requests

    _, error, user_id = self.do_create_user(
        body=self.model_user_create_request, namespace=self.user_namespace
    )

    self.user_id = user_id

    _, error = admin_get_user_personal_data_requests(
        user_id=self.user_id, namespace=self.user_namespace
    )

    self.assertIsNone(error, error)
```
### Admin Submit User Account Deletion Request

```python
def test_admin_submit_user_account_deletion_request(self):

    from accelbyte_py_sdk.api.gdpr import admin_submit_user_account_deletion_request
    from accelbyte_py_sdk.api.gdpr import admin_cancel_user_account_deletion_request

    _, error, user_id = self.do_create_user(
        body=self.model_user_create_request, namespace=self.user_namespace
    )

    self.user_id = user_id

    _, error = admin_submit_user_account_deletion_request(
        user_id=self.user_id, namespace=self.user_namespace
    )

    self.assertIsNone(error, error)

    # clean up
    #   the GDPR deletion is an async process, this request will cancel the
    #   previous request since we are going to delete the user we created
    #   in the tear down step
    _, _ = admin_cancel_user_account_deletion_request(
        user_id=self.user_id, namespace=self.user_namespace
    )
```
### Delete Admin Email Configuration

```python
def test_delete_admin_email_configuration(self):

    from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration
    from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

    _, error = save_admin_email_configuration(
        body=[self.model_user_create_request.email_address]
    )
    self.log_warning(
        msg=f"Failed to set up admin email configuration {str(error)}",
        condition=error is not None,
    )
    self.did_configure = error is None

    _, error = delete_admin_email_configuration(
        emails=[self.model_user_create_request.email_address]
    )

    self.assertIsNone(error, error)
    self.did_configure = error is not None
```
### Get Admin Email Configuration

```python
def test_get_admin_email_configuration(self):

    from accelbyte_py_sdk.api.gdpr import get_admin_email_configuration
    from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

    _, error = save_admin_email_configuration(
        body=[self.model_user_create_request.email_address]
    )
    self.log_warning(
        msg=f"Failed to set up admin email configuration {str(error)}",
        condition=error is not None,
    )
    self.did_configure = error is None

    _, error = get_admin_email_configuration()

    self.assertIsNone(error, error)
```
### Save Admin Email Configuration

```python
def test_save_admin_email_configuration(self):

    from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration
    from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration

    _, _ = delete_admin_email_configuration(
        emails=[self.model_user_create_request.email_address]
    )

    _, error = save_admin_email_configuration(
        body=[self.model_user_create_request.email_address]
    )
    self.did_configure = error is None

    self.assertIsNone(error, error)
```
### Update Admin Email Configuration

```python
def test_update_admin_email_configuration(self):

    from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
    from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration

    _, error = save_admin_email_configuration(
        body=[self.model_user_create_request.email_address]
    )
    self.log_warning(
        msg=f"Failed to set up admin email configuration {str(error)}",
        condition=error is not None,
    )
    self.did_configure = error is None

    _, error = update_admin_email_configuration(
        body=[self.model_user_create_request.email_address]
    )
    self.did_configure = error is None

    self.assertIsNone(error, error)
```
## Group

Source: [group.py](../tests/integration/api/group.py)

### Create New Group Public V1

```python
def test_create_new_group_public_v1(self):

    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.group_id = group_id

    self.assertIsNone(error, error)
```
### Delete Group Public V1

```python
def test_delete_group_public_v1(self):
    from accelbyte_py_sdk.api.group import delete_group_public_v1

    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.log_warning(
        msg=f"Failed to set up group. {str(error)}", condition=error is not None
    )
    self.group_id = group_id

    _, error = delete_group_public_v1(
        group_id=self.group_id, namespace=self.group_namespace
    )

    self.assertIsNone(error, error)
    self.group_id = None
```
### Get Single Group Public V1

```python
def test_get_single_group_public_v1(self):
    from accelbyte_py_sdk.api.group import get_single_group_public_v1

    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.log_warning(
        msg=f"Failed to set up group. {str(error)}", condition=error is not None
    )
    self.group_id = group_id

    _, error = get_single_group_public_v1(
        group_id=self.group_id, namespace=self.group_namespace
    )

    self.assertIsNone(error, error)
```
### Update Single Group V1

```python
def test_update_single_group_v1(self):
    from accelbyte_py_sdk.api.group import update_single_group_v1
    from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
    from accelbyte_py_sdk.api.group.models import (
        ModelsUpdateGroupRequestV1CustomAttributes,
    )

    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.log_warning(
        msg=f"Failed to set up group. {str(error)}", condition=error is not None
    )
    self.group_id = group_id

    result, error = update_single_group_v1(
        body=ModelsUpdateGroupRequestV1.create(
            custom_attributes=ModelsUpdateGroupRequestV1CustomAttributes.create(
                dict_={}
            ),
            group_description="KETERANGAN",
            group_icon="",
            group_name="NAMA_GRUP",
            group_region="us-west-1",
            group_type="PRIVATE",
        ),
        group_id=self.group_id,
        namespace=self.group_namespace,
    )

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsGroupResponseV1)
    self.assertIsNotNone(result.group_name)
    self.assertEqual("NAMA_GRUP", result.group_name)
```
## IAM

Source: [iam.py](../tests/integration/api/iam.py)

### Create User

```python
def test_create_user(self):

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.user_id = user_id

    self.assertIsNone(error, error)
```
### Delete User

```python
def test_delete_user(self):
    from accelbyte_py_sdk.api.iam import admin_delete_user_information_v3

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id

    _, error = admin_delete_user_information_v3(user_id=self.user_id)

    self.assertIsNone(error, error)
    self.user_id = None
```
### Admin Get User By User Id V3

```python
def test_admin_get_user_by_user_id_v3(self):
    from accelbyte_py_sdk.api.iam import admin_get_user_by_user_id_v3

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id

    _, error = admin_get_user_by_user_id_v3(user_id=self.user_id)

    self.assertIsNone(error, error)
```
### Admin List Users V3

```python
def test_admin_list_users_v3(self):
    from accelbyte_py_sdk.api.iam import admin_list_users_v3

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id

    result, error = admin_list_users_v3()

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
```
### Admin Update User V4

```python
def test_admin_update_user_v4(self):
    from accelbyte_py_sdk.api.iam import update_user
    from accelbyte_py_sdk.api.iam import admin_update_user_v4
    from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
    from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequestV3

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id

    result, error = admin_update_user_v4(
        body=ModelUserUpdateRequestV3.create(country="ID"), user_id=self.user_id
    )

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelUserResponseV3)
    self.assertEqual(result.country, "ID")
```
### Token Grant V3

```python
def test_token_grant_v3(self):
    from accelbyte_py_sdk.api.iam import authorize_v3
    from accelbyte_py_sdk.api.iam import token_grant_v3
    from accelbyte_py_sdk.api.iam import user_authentication_v3
    from accelbyte_py_sdk.core import create_pkce_verifier_and_challenge_s256
    from accelbyte_py_sdk.core import get_client_id
    from accelbyte_py_sdk.core import get_env_user_credentials

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

    _, error = token_grant_v3(
        grant_type="authorization_code",
        code=code,
        code_verifier=code_verifier,
        redirect_uri="",
    )

    self.assertIsNone(error, error)
```
### User Authentication V3

```python
def test_user_authentication_v3(self):
    from accelbyte_py_sdk.api.iam import authorize_v3
    from accelbyte_py_sdk.api.iam import user_authentication_v3
    from accelbyte_py_sdk.core import create_pkce_verifier_and_challenge_s256
    from accelbyte_py_sdk.core import get_client_id
    from accelbyte_py_sdk.core import get_env_user_credentials

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

    _, error = user_authentication_v3(
        user_name=username,
        password=password,
        request_id=request_id,
        client_id=client_id,
    )

    self.assertIsNone(error, error)
```
### Authorize V3

```python
def test_authorize_v3(self):
    from accelbyte_py_sdk.api.iam import authorize_v3
    from accelbyte_py_sdk.core import create_pkce_verifier_and_challenge_s256
    from accelbyte_py_sdk.core import get_client_id

    client_id, error = get_client_id()
    self.assertIsNone(error, error)

    (
        code_verifier,
        code_challenge,
        code_challenge_method,
    ) = create_pkce_verifier_and_challenge_s256()

    _, error = authorize_v3(
        response_type="code",
        client_id=client_id,
        scope=self.scope,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
    )

    self.assertIsNone(error, error)
```
### Admin Download My Backup Codes V4

```python
def test_admin_download_my_backup_codes_v4(self):

    from accelbyte_py_sdk.api.iam import admin_download_my_backup_codes_v4
    from accelbyte_py_sdk.api.iam.models import RestErrorResponse

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    result, error = admin_download_my_backup_codes_v4()

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Public Download My Backup Codes V4

```python
def test_public_download_my_backup_codes_v4(self):

    from accelbyte_py_sdk.api.iam import public_download_my_backup_codes_v4
    from accelbyte_py_sdk.api.iam.models import RestErrorResponse

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    result, error = public_download_my_backup_codes_v4()

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Role Override

```python
def test_role_override(self):

    from accelbyte_py_sdk.api import iam as iam_service
    from accelbyte_py_sdk.api.iam import models as iam_models

    role_identity_to_update: str = "USER"
    resource_to_check: str = "NAMESPACE:{namespace}:PROFILE"
    action_to_check: int = 7
    updated_action_to_check: int = 2
    check_count: int = 20
    check_interval: float = 1.0

    def find_and_check_resource_action_from_role(
        role_id_: str, resource_to_check_: str
    ) -> int:
        result_, error_ = iam_service.admin_get_role_namespace_permission_v3(
            role_id=role_id_
        )
        self.assertIsNone(error_, error_)

        result_action_: int = -1
        for permission in result_.permissions:
            if permission.resource == resource_to_check_:
                result_action_ = permission.action
                break

        return result_action_

    result, error = iam_service.admin_get_roles_v4(admin_role=False)
    self.assertIsNone(error, error)
    self.assertTrue(result.data, result.data)

    user_role_id: str = ""
    for role in result.data:
        if role.role_name.upper() == role_identity_to_update:
            user_role_id = role.role_id
            break
    self.assertTrue(user_role_id)

    action = find_and_check_resource_action_from_role(
        user_role_id, resource_to_check
    )
    self.assertEqual(action_to_check, action)

    # configure role override
    result, error = iam_service.admin_update_role_override_config_v3(
        body=iam_models.ModelRoleOverrideUpdateRequest.create(
            additions=[],
            exclusions=[
                iam_models.AccountcommonOverrideRolePermission.create(
                    resource=resource_to_check,
                    actions=[1, 4],
                ),
            ],
            overrides=[],
            replacements=[],
        ),
        identity=role_identity_to_update,
    )
    self.assertIsNone(error, error)

    result, error = iam_service.admin_change_role_override_config_status_v3(
        body=iam_models.ModelRoleOverrideStatsUpdateRequest.create(
            active=True,
        ),
        identity=role_identity_to_update,
    )
    self.assertIsNone(error, error)
    self.assertTrue(result.active)

    # wait for role override to apply
    try:
        valid: bool = False
        current_count: int = 0
        while current_count < check_count:
            self.log_info(f"checking updated permissions [{current_count+1}]")
            action = find_and_check_resource_action_from_role(
                user_role_id, resource_to_check
            )
            if action == updated_action_to_check:
                valid = True
                break

            current_count += 1
            time.sleep(check_interval)
    finally:
        # deactivate role override
        _, error = iam_service.admin_change_role_override_config_status_v3(
            body=iam_models.ModelRoleOverrideStatsUpdateRequest.create(
                active=False
            ),
            identity=role_identity_to_update,
        )
        if error:
            self.log_warning(msg=f"failed to deactivate role override: {error}")
```
## Inventory

Source: [inventory.py](../tests/integration/api/inventory.py)

### Inventory Crud

```python
def test_inventory_crud(self):

    inventory_config = self.do_create_inventory_config()

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id


    body = (
        ApimodelsCreateInventoryReq()
        .with_inventory_configuration_code(inventory_config.code)
        .with_user_id(self.user_id)
    )
    result, error = admin_create_inventory(body=body, namespace=self.namespace)


    self.assertIsNone(error, error)
    self.assertIsNotNone(result)


    inventory_id = result.id_
    body = ApimodelsUpdateInventoryReq().with_inc_max_slots(2)
    result, error = admin_update_inventory(
        body=body, inventory_id=inventory_id, namespace=self.namespace
    )


    self.assertIsNone(error, error)
    self.assertIsNotNone(result)


    result, error = admin_get_inventory(
        inventory_id=inventory_id, namespace=self.namespace
    )


    self.assertIsNone(error, error)
    self.assertIsNotNone(result)


    _, error = delete_inventory(
        body=ApimodelsDeleteInventoryReq.create(message="deleting"),
        inventory_id=inventory_id,
        namespace=self.namespace,
    )


    self.assertIsNone(error, error)

def tearDown(self) -> None:
    self.do_delete_inventory_config()
```
## Leaderboard

Source: [leaderboard.py](../tests/integration/api/leaderboard.py)

### Create Leaderboard Configuration Admin V1

```python
def test_create_leaderboard_configuration_admin_v1(self):
    from accelbyte_py_sdk.api.leaderboard import (
        create_leaderboard_configuration_admin_v1,
    )

    self.init_leaderboard_config()

    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )

    self.assertIsNone(error, error)
```
### Delete Leaderboard Configuration Admin V1

```python
def test_delete_leaderboard_configuration_admin_v1(self):
    from accelbyte_py_sdk.api.leaderboard import (
        create_leaderboard_configuration_admin_v1,
    )
    from accelbyte_py_sdk.api.leaderboard import (
        delete_leaderboard_configuration_admin_v1,
    )

    self.init_leaderboard_config()
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )
    self.assertIsNone(error, error)

    _, error = delete_leaderboard_configuration_admin_v1(
        leaderboard_code=self.models_leaderboard_config_req.leaderboard_code
    )

    self.assertIsNone(error, error)
```
### Get Leaderboard Configuration Admin V1

```python
def test_get_leaderboard_configuration_admin_v1(self):
    from accelbyte_py_sdk.api.leaderboard import (
        create_leaderboard_configuration_admin_v1,
    )
    from accelbyte_py_sdk.api.leaderboard import (
        get_leaderboard_configuration_admin_v1,
    )

    self.init_leaderboard_config()
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )
    self.assertIsNone(error, error)

    _, error = get_leaderboard_configuration_admin_v1(
        leaderboard_code=self.models_leaderboard_config_req.leaderboard_code
    )

    self.assertIsNone(error, error)
```
### Update User

```python
def test_update_user(self):
    from accelbyte_py_sdk.api.leaderboard import (
        create_leaderboard_configuration_admin_v1,
    )
    from accelbyte_py_sdk.api.leaderboard import (
        update_leaderboard_configuration_admin_v1,
    )
    from accelbyte_py_sdk.api.leaderboard.models import (
        ModelsGetLeaderboardConfigResp,
    )
    from accelbyte_py_sdk.api.leaderboard.models import (
        ModelsUpdateLeaderboardConfigReq,
    )

    self.init_leaderboard_config()
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )
    self.assertIsNone(error, error)

    result, error = update_leaderboard_configuration_admin_v1(
        body=ModelsUpdateLeaderboardConfigReq.create(
            daily=self.models_leaderboard_config_req.daily,
            descending=self.models_leaderboard_config_req.descending,
            icon_url=self.models_leaderboard_config_req.icon_url,
            monthly=self.models_leaderboard_config_req.monthly,
            name=self.models_leaderboard_config_req.name,
            season_period=self.models_leaderboard_config_req.season_period,
            start_time=self.models_leaderboard_config_req.start_time,
            stat_code=f"{self.leaderboard_code}2",
            weekly=self.models_leaderboard_config_req.weekly,
        ),
        leaderboard_code=self.models_leaderboard_config_req.leaderboard_code,
    )

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsGetLeaderboardConfigResp)
    self.assertEqual(result.stat_code, f"{self.leaderboard_code}2")
```
## Legal

Source: [legal.py](../tests/integration/api/legal.py)

### Bulk Accept Versioned Policy

```python
def test_bulk_accept_versioned_policy(self):
    from accelbyte_py_sdk.api.legal import bulk_accept_versioned_policy
    from accelbyte_py_sdk.api.legal import retrieve_agreements_public
    from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
    from accelbyte_py_sdk.api.legal.models import LocalizedPolicyVersionObject
    from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

    result, error = retrieve_agreements_public()
    self.assertIsNotNone(result)
    self.assertIsInstance(result, list)


    accepted_agreement: RetrieveAcceptedAgreementResponse = result[0]
    self.assertIsInstance(accepted_agreement, RetrieveAcceptedAgreementResponse)

    policy_id: str = accepted_agreement.policy_id
    self.assertIsNotNone(policy_id)

    localized_policy_version: LocalizedPolicyVersionObject = (
        accepted_agreement.localized_policy_version
    )
    self.assertIsNotNone(localized_policy_version)

    localized_policy_version_id: str = localized_policy_version.id_
    self.assertIsNotNone(localized_policy_version_id)

    accept_agreement_request = AcceptAgreementRequest.create(
        is_accepted=True,
        localized_policy_version_id=localized_policy_version_id,
        policy_id=policy_id,
        policy_version_id=policy_id,
    )

    _, error = bulk_accept_versioned_policy(body=[accept_agreement_request])

    self.assertIsNone(error, error)
```
### Change Preference Consent

```python
def test_change_preference_consent(self):
    from accelbyte_py_sdk.api.legal import change_preference_consent
    from accelbyte_py_sdk.api.legal import retrieve_agreements_public
    from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
    from accelbyte_py_sdk.api.legal.models import LocalizedPolicyVersionObject
    from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

    result, error = retrieve_agreements_public()
    self.assertIsNotNone(result)
    self.assertIsInstance(result, list)

    accepted_agreement: RetrieveAcceptedAgreementResponse = next(
        (
            agreement
            for agreement in result
            if isinstance(agreement, RetrieveAcceptedAgreementResponse)
            and agreement.policy_type == "Marketing Preference"
        ),
        None,
    )

    policy_id: str = accepted_agreement.policy_id
    self.assertIsNotNone(policy_id)

    localized_policy_version: LocalizedPolicyVersionObject = (
        accepted_agreement.localized_policy_version
    )
    self.assertIsNotNone(localized_policy_version)

    localized_policy_version_id: str = localized_policy_version.id_
    self.assertIsNotNone(localized_policy_version_id)

    accept_agreement_request = AcceptAgreementRequest.create(
        is_accepted=True,
        localized_policy_version_id=localized_policy_version_id,
        policy_id=policy_id,
        policy_version_id=policy_id,
    )

    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id

    _, error = change_preference_consent(
        user_id=self.user_id, body=[accept_agreement_request]
    )

    self.assertIsNone(error, error)
```
### Retrieve Agreements Public

```python
def test_retrieve_agreements_public(self):
    from accelbyte_py_sdk.api.legal import retrieve_agreements_public


    result, error = retrieve_agreements_public()
    self.assertIsNone(error, error)

    self.assertIsNotNone(result)
    self.assertIsInstance(result, list)
```
### Create Policy

```python
def test_create_policy(self):
    from accelbyte_py_sdk.api.legal import (
        create_policy,
        create_policy_version,
        create_localized_policy_version,
        retrieve_all_legal_policies,
        retrieve_all_policy_types,
        retrieve_single_policy_version,
        retrieve_localized_policy_versions,
    )
    from accelbyte_py_sdk.api.legal.models import (
        CreateBasePolicyRequest,
        CreatePolicyVersionRequest,
        CreateLocalizedPolicyVersionRequest,
    )

    # try to find policy

    base_policy_name: str = "Python Extend SDK Test Policy"

    result, error = retrieve_all_legal_policies()

    target_policy_id: str = ""

    for policy in result:
        if policy.base_policy_name == base_policy_name and len(policy.policies) > 0:
            target_policy_id = policy.policies[0].id_
            break

    # policy does not exist, so we create it

    if not target_policy_id:
        result, error = retrieve_all_policy_types(limit=100, offset=0)

        marketing_pref_policy_type_id: str = ""

        for policy_type in result:
            if (
                policy_type.policy_type_name.strip().lower()
                == "marketing preference"
            ):
                marketing_pref_policy_type_id = policy_type.id_
                break


        result, error = create_policy(
            body=CreateBasePolicyRequest.create(
                type_id=marketing_pref_policy_type_id,
                base_policy_name=base_policy_name,
                description="Testing Python Extend SDK Legal Endpoints.",
                namespace=self.namespace,
                tags=["python", "extend_sdk", "test"],
                affected_countries=["ID"],
            ),
        )

        target_policy_id = result.policy_id

    # try to find policy version

    result, error = retrieve_single_policy_version(
        policy_id=target_policy_id,
    )

    target_policy_version_id: str = ""

    if len(result) == 0:
        result, error = create_policy_version(
            policy_id=target_policy_id,
            body=CreatePolicyVersionRequest.create(
                description="Testing Python Extend SDK Legal Endpoints.",
                display_version="1.0.0",
                is_committed=False,
            ),
        )
        if error:
            self.skipTest(reason=f"Failed to create policy version: {error}")
            return

        target_policy_version_id = result.id_
    else:
        target_policy_version_id = result[0].id_

    result, error = retrieve_localized_policy_versions(
        policy_version_id=target_policy_version_id,
    )
    if error:
        self.skipTest(reason=f"Failed to get localized policy versions: {error}")
        return

    target_localized_policy_version_id: str = ""

    if len(result) == 0:
        result, error = create_localized_policy_version(
            policy_version_id=target_policy_version_id,
            body=CreateLocalizedPolicyVersionRequest.create(
                content_type="Python Extend SDK Legal Content for ID.",
                description="Testing Python Extend SDK Legal Endpoints.",
                locale_code="ID",
            ),
        )

        if error:
            self.skipTest(
                reason=f"Failed to create localized policy version: {error}"
            )
            return

        target_localized_policy_version_id = result.id_
    else:
        target_localized_policy_version_id = result[0].id_

    self.assertTrue(target_policy_id, target_policy_id)
    self.assertTrue(target_policy_version_id, target_policy_version_id)
    self.assertTrue(
        target_localized_policy_version_id, target_localized_policy_version_id
    )
```
## Lobby

Source: [lobby.py](../tests/integration/api/lobby.py)

### Free Form Notification

```python
def test_free_form_notification(self):
    from accelbyte_py_sdk.api.lobby import free_form_notification
    from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest


    _, error = free_form_notification(
        body=ModelFreeFormNotificationRequest.create(
            message="MESSAGE", topic="TOPIC"
        )
    )

    self.assertIsNone(error, error)
```
### Admin Export Config V1

```python
def test_admin_export_config_v1(self):
    from accelbyte_py_sdk.api.lobby import admin_export_config_v1

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    result, error = admin_export_config_v1()

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Send And Receive Notifications

```python
async def test_send_and_receive_notifications(self):
    from accelbyte_py_sdk.api.lobby.wss_models import PartyCreateRequest
    from accelbyte_py_sdk.api.lobby.wss_models import parse_wsm


    party_create_request = PartyCreateRequest()
    party_create_request_wsm = party_create_request.to_wsm()
    await self.ws_client.send(party_create_request_wsm)

    elapsed = 0.0
    interval = 0.016
    timeout = 10.0
    wsm = None
    wsm_type = None
    while True:
        await asyncio.sleep(interval)
        elapsed += interval
        if not self.messages.empty():
            message = self.messages.get_nowait()
            if message is not None:
                wsm, error = parse_wsm(message)
                self.assertIsNone(error, error)
                wsm_type = wsm.get_type()
                if wsm_type == "partyCreateResponse":
                    break
        if elapsed > timeout:
            break

    self.assertIsNotNone(wsm)
    self.assertIsNotNone(wsm_type)
    self.assertEqual("partyCreateResponse", wsm_type)
```
### Refresh Token Request

```python
async def test_refresh_token_request(self):
    from accelbyte_py_sdk.core import SDK, get_token_repository
    from accelbyte_py_sdk.services.auth import refresh_login_async
    from accelbyte_py_sdk.api.lobby.wss_models import parse_wsm

    generate_user_result, error = self.generate_user()

    username, password, user_id = generate_user_result
    self.user_id = user_id

    user_sdk, error = self.create_user_sdk(
        username=username,
        password=password,
        existing_sdk=SDK,
    )

    token_repo = user_sdk.get_token_repository()

    token_repo.register_observer(self.ws_client)

    old_access_token = token_repo.get_access_token()
    refresh_token = token_repo.get_refresh_token()
    self.assertTrue(old_access_token)
    self.assertTrue(refresh_token)

    result, error = await refresh_login_async(refresh_token, sdk=user_sdk)
    if error:
        self.fail(error)

    await asyncio.sleep(1)

    new_access_token = token_repo.get_access_token()

    elapsed = 0.0
    interval = 0.016
    timeout = 60.0
    wsm = None
    wsm_type = None
    while True:
        await asyncio.sleep(interval)
        elapsed += interval
        if not self.messages.empty():
            message = self.messages.get_nowait()
            if message is not None:
                wsm, error = parse_wsm(message)
                self.assertIsNone(error, f"error: {error}\nmessage: {message}\n")
                wsm_type = wsm.get_type()
                if wsm_type == "refreshTokenResponse":
                    break

    self.assertTrue(new_access_token)
    self.assertNotEqual(old_access_token, new_access_token)
    self.assertIsNotNone(wsm)
    self.assertIsNotNone(wsm_type)
    self.assertEqual("refreshTokenResponse", wsm_type)

    # clean up
    token_repo.unregister_observer(self.ws_client)
```
## Login Queue

Source: [loginqueue.py](../tests/integration/api/loginqueue.py)

### Admin Get Configuration

```python
def test_admin_get_configuration(self):

    from accelbyte_py_sdk.api.loginqueue import admin_get_configuration


    config, error = admin_get_configuration()

    self.assertIsNone(error, error)
```
### Admin Update Configuration

```python
def test_admin_update_configuration(self):

    from accelbyte_py_sdk.api.loginqueue import admin_update_configuration
    from accelbyte_py_sdk.api.loginqueue.models import ApimodelsConfigurationRequest


    config, error = admin_update_configuration(
        body=ApimodelsConfigurationRequest.create_from_dict(
            {
                "maxLoginRate": 100,
            }
        )
    )

    self.assertIsNone(error, error)
```
## Match V2

Source: [match2.py](../tests/integration/api/match2.py)

### Create And Get Ruleset

```python
def test_create_and_get_ruleset(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.match2 import rule_set_details

    rid = generate_id(8)
    rule_set_name = f"python_sdk_ruleset_{rid}"

    error = Match2TestCase.do_create_rule_set(rule_set_name=rule_set_name)
    if error is None:
        self.rule_set_name = rule_set_name

    result, error = rule_set_details(ruleset=rule_set_name)

    self.assertIsNone(error, error)
    self.assertEqual(rule_set_name, result.name)
```
### Create And Get Match Pool

```python
def test_create_and_get_match_pool(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.match2 import rule_set_details

    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"

    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    if error is None:
        self.match_pool_name = match_pool_name
        self.rule_set_name = rule_set_name
        self.session_template_name = session_template_name

    result, error = rule_set_details(ruleset=rule_set_name)

    self.assertIsNone(error, error)
    self.assertEqual(rule_set_name, result.name)
```
### Create Match Pool

```python
def test_create_match_pool(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.match2 import match_pool_details

    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"

    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    if error is None:
        self.match_pool_name = match_pool_name
        self.rule_set_name = rule_set_name
        self.session_template_name = session_template_name

    result, error = match_pool_details(pool=match_pool_name)

    self.assertIsNone(error, error)
    self.assertEqual(match_pool_name, result.name)
```
### Delete Match Pool

```python
def test_delete_match_pool(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.match2 import delete_match_pool

    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"
    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    self.match_pool_name = match_pool_name
    self.rule_set_name = rule_set_name
    self.session_template_name = session_template_name

    _, error = delete_match_pool(pool=match_pool_name)
    if error is None:
        self.match_pool_name = None

    self.assertIsNone(error, error)
```
### Create Delete Match Ticket

```python
def test_create_delete_match_ticket(self):
    from accelbyte_py_sdk.core import SDK
    from accelbyte_py_sdk.core import generate_id
    import accelbyte_py_sdk.api.match2 as match2_service
    import accelbyte_py_sdk.api.match2.models as match2_models
    import accelbyte_py_sdk.api.session as session_service
    import accelbyte_py_sdk.api.session.models as session_models

    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"
    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    self.match_pool_name = match_pool_name
    self.rule_set_name = rule_set_name
    self.session_template_name = session_template_name

    generate_user_result, error = self.generate_user()

    username, password, user_id = generate_user_result
    self.user_id = user_id

    user_sdk, error = self.create_user_sdk(
        username=username,
        password=password,
        existing_sdk=SDK,
    )

    result, error = session_service.public_create_party(
        body=session_models.ApimodelsCreatePartyRequest.create_from_dict(
            {
                "configurationName": session_template_name,
                "members": [
                    {"ID": user_id},
                ],
            }
        ),
        sdk=user_sdk,
    )

    result, error = match2_service.create_match_ticket(
        body=match2_models.ApiMatchTicketRequest.create_from_dict(
            {
                "matchPool": match_pool_name,
                "sessionID": party_id,
            }
        ),
        sdk=user_sdk,
    )

    self.assertIsNone(error, error)

    if not (match_ticket_id := getattr(result, "match_ticket_id", None)):
        self.fail(msg="unable to find match ticket id")

    _, error = match2_service.delete_match_ticket(
        ticketid=match_ticket_id,
        sdk=user_sdk,
    )

    self.assertIsNone(error, error)

    _, error = session_service.public_party_leave(
        party_id=party_id,
        sdk=user_sdk,
    )

    self.assertIsNone(error, error)
```
### Match Pool List

```python
def test_match_pool_list(self):
    from accelbyte_py_sdk.api.match2 import match_pool_list


    _, error = match_pool_list()

    self.assertIsNone(error, error)
```
### Match Function List

```python
def test_match_function_list(self):
    from accelbyte_py_sdk.api.match2 import match_function_list


    result, error = match_function_list()

    self.assertIsNone(error, error)
```
## Platform

Source: [platformx.py](../tests/integration/api/platformx.py)

### Create Store

```python
def test_create_store(self):

    _, error, store_id = self.do_create_store(body=self.store_create)
    self.store_id = store_id

    self.assertIsNone(error, error)
```
### Delete Store

```python
def test_delete_store(self):
    from accelbyte_py_sdk.api.platform import delete_store

    _, error, store_id = self.do_create_store(body=self.store_create)
    self.log_warning(
        msg=f"Failed to set up store. {str(error)}", condition=error is not None
    )
    self.store_id = store_id

    _, error = delete_store(store_id=self.store_id)

    self.assertIsNone(error, error)
    self.store_id = None
```
### Export Import Rewards

```python
def test_export_import_rewards(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.platform import export_rewards
    from accelbyte_py_sdk.api.platform import import_rewards

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    result, error = export_rewards()

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)


    with open(file=str(exported_file_path)) as file:
        result, error = import_rewards(replace_existing=True, file=file)

    self.assertIsNone(error, error)
```
### Export Store

```python
def test_export_store(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.platform import export_store_1
    from accelbyte_py_sdk.api.platform.models import ExportStoreRequest

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    _, error, store_id = self.do_create_store(body=self.store_create)
    self.store_id = store_id

    result, error = export_store_1(store_id=store_id)

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Get Store

```python
def test_get_store(self):
    from accelbyte_py_sdk.api.platform import get_store

    _, error, store_id = self.do_create_store(body=self.store_create)
    self.log_warning(
        msg=f"Failed to set up store. {str(error)}", condition=error is not None
    )
    self.store_id = store_id

    _, error = get_store(store_id=self.store_id)

    self.assertIsNone(error, error)
```
### Import Store

```python
def test_import_store(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.platform import export_store_1
    from accelbyte_py_sdk.api.platform import import_store_1

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    _, error, store_id = self.do_create_store(body=self.store_create)
    self.store_id = store_id

    result, error = export_store_1(store_id=self.store_id)

    exported_file_path.write_bytes(result)

    with exported_file_path.open("rb") as exported_file:
        result, error = import_store_1(file=exported_file, store_id=store_id)

    self.assertIsNone(error, error)
```
### Update Store

```python
def test_update_store(self):
    from accelbyte_py_sdk.api.platform import update_store
    from accelbyte_py_sdk.api.platform.models import StoreInfo
    from accelbyte_py_sdk.api.platform.models import StoreUpdate

    _, error, store_id = self.do_create_store(body=self.store_create)
    self.log_warning(
        msg=f"Failed to set up store. {str(error)}", condition=error is not None
    )
    self.store_id = store_id

    result, error = update_store(
        store_id=self.store_id, body=StoreUpdate.create(title="JUDUL")
    )

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, StoreInfo)
    self.assertIsNotNone(result.title)
    self.assertEqual("JUDUL", result.title)
```
## Season Pass

Source: [seasonpass.py](../tests/integration/api/seasonpass.py)

### Season Crud

```python
def test_season_crud(self):

    seasonStore = self.do_get_store()


    seasonStoreItemTier = self.do_get_store_tier_item(seasonStore.store_id)


    seasonName = "PythonServerSDKTestSeason"
    seasonRequiredExp = 100
    timeNow = datetime.now()
    body = (
        SeasonCreate()
        .with_name(seasonName)
        .with_start(timeNow.replace(microsecond=0).isoformat())
        .with_end((timeNow + timedelta(days=7)).replace(microsecond=0).isoformat())
        .with_default_required_exp(seasonRequiredExp)
        .with_draft_store_id(seasonStore.store_id)
        .with_tier_item_id(seasonStoreItemTier.item_id)
        .with_localizations(
            {"en": Localization().with_title("English").with_description("English")}
        )
    )
    result, error = create_season(namespace=self.namespace, body=body)


    self.assertIsNone(error, error)
    self.assertIsNotNone(result)


    seasonId = result.id_
    updatedSeasonName = "UpdatedPythonServerSDKTestSeason"
    body = SeasonUpdate().with_name(updatedSeasonName)
    result, error = update_season(
        namespace=self.namespace, season_id=seasonId, body=body
    )


    self.assertIsNone(error, error)
    self.assertIsNotNone(result)


    result, error = get_season(namespace=self.namespace, season_id=seasonId)


    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertEqual(updatedSeasonName, result.name)


    result, error = delete_season(namespace=self.namespace, season_id=seasonId)


    self.assertIsNone(error, error)

def tearDown(self) -> None:
    self.do_delete_all_draft_stores()
```
## Session

Source: [session.py](../tests/integration/api/session.py)

### Admin Create Configuration Template V1

```python
def test_admin_create_configuration_template_v1(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.session import admin_create_configuration_template_v1
    from accelbyte_py_sdk.api.session.models import (
        ApimodelsCreateConfigurationTemplateRequest,
    )

    rid = generate_id(8)
    template_name = f"python_sdk_template_{rid}"

    error = self.do_create_configuration_template(template_name=template_name)
    if error is None:
        self.template_name = template_name

    self.assertIsNone(error, error)
```
### Admin Delete Configuration Template V1

```python
def test_admin_delete_configuration_template_v1(self):

    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.session import admin_delete_configuration_template_v1

    rid = generate_id(8)
    template_name = f"python_sdk_template_{rid}"
    error = self.do_create_configuration_template(template_name=template_name)

    _, error = admin_delete_configuration_template_v1(name=template_name)
    if error is None:
        self.template_name = None

    self.assertIsNone(error, error)
```
### Public Query Game Sessions By Attributes

```python
def test_public_query_game_sessions(self):
    from accelbyte_py_sdk.api.session import (
        public_query_game_sessions_by_attributes,
    )


    result, error = public_query_game_sessions_by_attributes(body={})

    self.assertIsNone(error, error)
```
### Game Session Flow

```python
def test_game_session_flow(self):
    from accelbyte_py_sdk.core import SDK, generate_id
    import accelbyte_py_sdk.api.session as session_service
    import accelbyte_py_sdk.api.session.models as session_models

    try:
        rid = generate_id(8)
        template_name = f"python_sdk_template_{rid}"
        error = self.do_create_configuration_template(template_name=template_name)

        generate_user1_result, error = self.generate_user()
        username1, password1, user_id1 = generate_user1_result
        self.user_ids.append(user_id1)

        generate_user2_result, error = self.generate_user()
        username2, password2, user_id2 = generate_user2_result
        self.user_ids.append(user_id2)

        user_sdk1, error = self.create_user_sdk(
            username=username1,
            password=password1,
            existing_sdk=SDK,
        )

        user_sdk2, error = self.create_user_sdk(
            username=username2,
            password=password2,
            existing_sdk=SDK,
        )

        result, error = session_service.create_game_session(
            body=session_models.ApimodelsCreateGameSessionRequest.create_from_dict(
                {
                    "configurationName": template_name,
                }
            ),
            sdk=user_sdk1,
        )
        self.assertIsNone(error, error)

        if not (game_session_id := getattr(result, "id_", None)):
            self.fail(msg=f"unable to find game session id")

        result, error = session_service.join_game_session(
            session_id=game_session_id,
            sdk=user_sdk2,
        )
        self.assertIsNone(error, error)

        result, error = session_service.get_game_session(
            session_id=game_session_id,
        )
        self.assertIsNone(error, error)
        self.assertEqual(len(result.members), 2)
        user_ids = [member.id_ for member in result.members]
        self.assertIn(user_id1, user_ids)
        self.assertIn(user_id2, user_ids)
    finally:
        if game_session_id:
            _, error = session_service.admin_delete_bulk_game_sessions(
                body=session_models.ApimodelsDeleteBulkGameSessionRequest.create(
                    ids=[game_session_id],
                ),
            )
            self.log_warning(
                msg=f"Failed to clean up game sessions: {error}",
                condition=error is not None,
            )
```
### Party Flow

```python
def test_party_flow(self):

    from accelbyte_py_sdk.core import SDK, generate_id
    import accelbyte_py_sdk.api.session as session_service
    import accelbyte_py_sdk.api.session.models as session_models

    try:
        rid = generate_id(8)
        template_name = f"python_sdk_template_{rid}"
        error = self.do_create_configuration_template(template_name=template_name)

        generate_user1_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user1: {error}")
        username1, password1, user_id1 = generate_user1_result
        self.user_ids.append(user_id1)

        generate_user2_result, error = self.generate_user()
        username2, password2, user_id2 = generate_user2_result
        self.user_ids.append(user_id2)

        user_sdk1, error = self.create_user_sdk(
            username=username1,
            password=password1,
            existing_sdk=SDK,
        )

        user_sdk2, error = self.create_user_sdk(
            username=username2,
            password=password2,
            existing_sdk=SDK,
        )

        result, error = session_service.public_create_party(
            body=session_models.ApimodelsCreatePartyRequest.create_from_dict(
                {
                    "configurationName": template_name,
                    "members": [
                        {
                            "ID": user_id1,
                        }
                    ],
                }
            ),
            sdk=user_sdk1,
        )
        self.assertIsNone(error, error)

        if not (party_id := getattr(result, "id_", None)):
            self.fail(msg=f"unable to find party id")

        if not (party_code := getattr(result, "code", None)):
            self.fail(msg=f"unable to find party code")

        result, error = session_service.public_get_party(
            party_id=party_id,
        )
        self.assertIsNone(error, error)

        result, error = session_service.public_party_join_code(
            body=session_models.ApimodelsJoinByCodeRequest.create_from_dict(
                {
                    "code": party_code,
                }
            ),
            sdk=user_sdk2,
        )
        self.assertIsNone(error, error)

        result, error = session_service.public_get_party(
            party_id=party_id,
            sdk=user_sdk1,
        )
        self.assertIsNone(error, error)
        self.assertEqual(len(result.members), 2)
        user_ids = [member.id_ for member in result.members]
        self.assertIn(user_id1, user_ids)
        self.assertIn(user_id2, user_ids)

        result, error = session_service.admin_query_parties(
            leader_id=user_id1,
        )
        self.assertIsNone(error, error)
        party_ids = [party.id_ for party in result.data]
        self.assertIn(party_id, party_ids)
    finally:
        if party_id:
            result, error = session_service.public_party_leave(
                party_id=party_id,
                sdk=user_sdk2,
            )
            self.log_warning(
                msg=f"Failed to leave party: {error}",
                condition=error is not None,
            )
```

## Social

Source: [social.py](../tests/integration/api/social.py)

### Create Stat

```python
def test_create_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import delete_stat

    _, error = delete_stat(stat_code=self.stat_create.stat_code)
    self.exist = error is not None

    _, error = create_stat(body=self.stat_create)
    self.exist = error is None

    self.assertIsNone(error, error)
```
### Delete Stat

```python
def test_delete_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import delete_stat

    _, error = create_stat(body=self.stat_create)
    self.log_warning(
        msg=f"Failed to set up stat. {str(error)}", condition=error is not None
    )
    self.exist = error is None

    _, error = delete_stat(stat_code=self.stat_create.stat_code)
    self.exist = error is not None

    self.assertIsNone(error, error)
```
### Export Import Stat

```python
def test_export_import_stats(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.social import export_stats
    from accelbyte_py_sdk.api.social import import_stats

    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    result, error = export_stats()

    if result is not None:
        exported_file_path.write_bytes(result)

    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)


    with open(file=str(exported_file_path)) as file:
        result, error = import_stats(file=file)

    self.assertIsNone(error, error)
```
### Get Stat

```python
def test_get_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import get_stat

    _, error = create_stat(body=self.stat_create)
    self.log_warning(
        msg=f"Failed to set up stat. {str(error)}", condition=error is not None
    )
    self.exist = error is None

    _, error = get_stat(stat_code=self.stat_create.stat_code)

    self.assertIsNone(error, error)
```
### Get Stats

```python
def test_get_stats(self):
    from accelbyte_py_sdk.api.social import get_stats


    result, error = get_stats()

    self.assertIsNone(error, error)
```
### Query Stats

```python
def test_query_stats(self):
    from accelbyte_py_sdk.api.social import query_stats


    result, error = query_stats(keyword="stat")

    self.assertIsNone(error, error)
```
### Update Stat

```python
def test_update_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import update_stat
    from accelbyte_py_sdk.api.social.models import StatInfo
    from accelbyte_py_sdk.api.social.models import StatUpdate

    _, error = create_stat(body=self.stat_create)
    self.log_warning(
        msg=f"Failed to set up stat. {str(error)}", condition=error is not None
    )
    self.exist = error is None

    result, error = update_stat(
        stat_code=self.stat_create.stat_code,
        body=StatUpdate.create(name="KODE_STATUS"),
    )

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, StatInfo)
    self.assertIsNotNone(result.name)
    self.assertEqual("KODE_STATUS", result.name)
```
### Test User Stat

```python
def test_user_stat(self):
    from accelbyte_py_sdk.api.social import (
        create_stat,
        get_stat,
        delete_tied_stat,
    )
    from accelbyte_py_sdk.api.social import (
        create_user_stat_item,
        delete_user_stat_items,
        get_user_stat_items,
        inc_user_stat_item_value,
    )
    from accelbyte_py_sdk.api.social.models import StatItemInc

    self.exist = False
    _, error = get_stat(stat_code=self.stat_create.stat_code)
    if error:
        _, error = create_stat(body=self.stat_create)
        self.exist = error is not None
    else:
        self.exist = True


    user_id = self.get_user_id()

    # clean-up
    _, _ = delete_user_stat_items(
        stat_code=self.stat_create.stat_code,
        user_id=user_id,
    )

    _, error = create_user_stat_item(
        stat_code=self.stat_create.stat_code,
        user_id=user_id,
    )

    self.assertIsNone(error, error)

    result, error = get_user_stat_items(user_id=user_id)

    self.assertIsNone(error, error)
    self.assertGreater(len(result.data), 0)
    self.assertTrue(
        any(item.stat_code == self.stat_create.stat_code for item in result.data)
    )

    result, error = inc_user_stat_item_value(
        body=StatItemInc.create(inc=1),
        stat_code=self.stat_create.stat_code,
        user_id=user_id,
    )

    self.assertIsNone(error, error)

    _, error = delete_user_stat_items(
        stat_code=self.stat_create.stat_code,
        user_id=user_id,
    )

    self.assertIsNone(error, error)

    # clean-up
    _, error = delete_tied_stat(stat_code=self.stat_create.stat_code)
    if error:
        self.log_warning(msg=f"Failed to tear down tied stat. {error}")
    else:
        self.exist = False
```
## UGC

Source: [ugc.py](../tests/integration/api/ugc.py)

### Admin Create Tag

```python
def test_admin_create_tag(self):

    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.tag_id = tag_id

    self.assertIsNone(error, error)
```
### Admin Delete Tag

```python
def test_admin_delete_tag(self):
    from accelbyte_py_sdk.api.ugc import admin_delete_tag

    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.log_warning(
        msg=f"Failed to set up tag. {str(error)}", condition=error is not None
    )
    self.tag_id = tag_id

    _, error = admin_delete_tag(tag_id=self.tag_id)

    self.assertIsNone(error, error)
    self.tag_id = None
```
### Admin Get Tag

```python
def test_admin_get_tag(self):
    from accelbyte_py_sdk.api.ugc import admin_get_tag

    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.log_warning(
        msg=f"Failed to set up tag. {str(error)}", condition=error is not None
    )
    self.tag_id = tag_id

    _, error = admin_get_tag()

    self.assertIsNone(error, error)
```
### Admin Update Tag

```python
def test_admin_update_tag(self):
    from accelbyte_py_sdk.api.ugc import admin_update_tag
    from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagResponse

    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.log_warning(
        msg=f"Failed to set up tag. {str(error)}", condition=error is not None
    )
    self.tag_id = tag_id

    result, error = admin_update_tag(
        body=ModelsCreateTagRequest.create(tag="MENANDAI"), tag_id=self.tag_id
    )

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsCreateTagResponse)
    self.assertIsNotNone(result.tag)
    self.assertEqual("MENANDAI", result.tag)
```

