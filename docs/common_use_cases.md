# Common Use Cases

## Achievement

Source: [achievement.py](../tests/integration/api/achievement.py)

### Admin Create New Achievement

```python
def test_admin_create_new_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_delete_achievement

    # arrange
    _, error = admin_delete_achievement(
        achievement_code=self.models_achievement_request.achievement_code
    )
    self.exist = error is not None

    # act
    result, error = admin_create_new_achievement(
        body=self.models_achievement_request
    )
    self.exist = error is None

    # assert
    self.assertIsNone(error, error)
```
### Admin Delete Achievement

```python
def test_admin_delete_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_delete_achievement

    # arrange
    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    # act
    result, error = admin_delete_achievement(
        achievement_code=self.models_achievement_request.achievement_code
    )
    self.exist = error is not None

    # assert
    self.assertIsNone(error, error)
```
### Admin Get Achievement

```python
def test_admin_get_achievement(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_get_achievement

    # arrange
    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    # act
    _, error = admin_get_achievement(
        achievement_code=self.models_achievement_request.achievement_code
    )

    # assert
    self.assertIsNone(error, error)
```
### Export Achievements

```python
def test_export_achievements(self):
    from accelbyte_py_sdk.api.achievement import export_achievements

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    # act
    result, error = export_achievements()

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Admin List Achievements

```python
def test_admin_list_achievements(self):
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement import admin_list_achievements

    # arrange
    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    # act
    _, error = admin_list_achievements()

    # assert
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

    # arrange
    _, error = admin_create_new_achievement(body=self.models_achievement_request)
    self.log_warning(
        msg=f"Failed to set up achievement. {str(error)}",
        condition=error is not None,
    )
    self.exist = error is None

    # act
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

    # assert
    self.assertIsNone(error, error)
    self.assertIn("ID", result.name)
    self.assertEqual("NAMA", result.name["ID"])
```
## Basic

Source: [basic.py](../tests/integration/api/basic.py)

### Create My Profile

```python
def test_create_my_profile(self):
    # arrange

    # act
    _, error = self.do_create_my_profile(body=self.user_profile_private_create)

    # assert
    self.assertIsNone(error, error)
```
### Delete User Profile

```python
def test_delete_user_profile(self):
    from accelbyte_py_sdk.api.basic import delete_user_profile

    # arrange
    result, error = self.do_create_my_profile(body=self.user_profile_private_create)
    self.log_warning(
        msg=f"Failed to set up user profile. {str(error)}",
        condition=error is not None,
    )
    user_id = result.user_id

    # act
    result, error = delete_user_profile(user_id=user_id)

    # assert
    self.assertIsNone(error, error)
```
### Get User Profile

```python
def test_get_user_profile(self):
    from accelbyte_py_sdk.api.basic import public_get_user_profile_info

    # arrange
    result, error = self.do_create_my_profile(body=self.user_profile_private_create)
    self.log_warning(
        msg=f"Failed to set up user profile. {str(error)}",
        condition=error is not None,
    )
    user_id = result.user_id

    # act
    result, error = public_get_user_profile_info(user_id=user_id)

    # assert
    self.assertIsNone(error, error)
```
### Public Update User Profile

```python
def test_public_update_user_profile(self):
    from accelbyte_py_sdk.api.basic import public_update_user_profile
    from accelbyte_py_sdk.api.basic.models import UserProfileUpdate

    # arrange
    result, error = self.do_create_my_profile(body=self.user_profile_private_create)
    self.log_warning(
        msg=f"Failed to set up user profile. {str(error)}",
        condition=error is not None,
    )
    user_id = result.user_id

    # act
    result, error = public_update_user_profile(
        user_id=user_id,
        body=UserProfileUpdate.create(first_name="Pertama", last_name="Terakhir"),
    )

    # assert
    self.assertIsNone(error, error)
    self.assertEqual("Pertama", result.first_name)
    self.assertEqual("Terakhir", result.last_name)
```
## Cloud Save

Source: [cloudsave.py](../tests/integration/api/cloudsave.py)

### Delete Game Record Handler V1

```python
def test_delete_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

    # arrange
    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )
    self.log_warning(
        msg=f"Failed to set up game record handler. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = delete_game_record_handler_v1(key=self.post_game_record_handler_key)

    # assert
    self.assertIsNone(error, error)
```
### Get Game Record Handler V1

```python
def test_get_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

    # arrange
    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )
    self.log_warning(
        msg=f"Failed to set up game record handler. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = get_game_record_handler_v1(key=self.post_game_record_handler_key)

    # assert
    self.assertIsNone(error, error)
```
### Post Game Record Handler V1

```python
def test_post_game_record_handler_v1(self):
    from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1
    from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

    # arrange
    _, _ = delete_game_record_handler_v1(key=self.post_game_record_handler_key)

    # act
    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )

    # assert
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

    # arrange
    _, error = post_game_record_handler_v1(
        body=self.models_game_record_request, key=self.post_game_record_handler_key
    )
    self.log_warning(
        msg=f"Failed to set up game record handler. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = put_game_record_handler_v1(
        body=ModelsGameRecordRequest.create(dict_={"foo": "baz"}),
        key=self.post_game_record_handler_key,
    )

    # assert
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
## DS Log Manager

Source: [dslogmanager.py](../tests/integration/api/dslogmanager.py)

### Check Server Logs

```python
def test_check_server_logs(self):
    from accelbyte_py_sdk.api.dslogmanager import check_server_logs

    # arrange
    pod_name = self.pre_fetch_pod_name()
    if not pod_name:
        self.skipTest(reason="Can't get a pod name to use.")

    if not self.pre_fetch_terminated_servers():
        self.skipTest(reason="No terminated servers to use.")

    # act
    _, error = check_server_logs(pod_name=self.pod_name)

    # assert
    self.assertIsNone(error, error)
```
### Download Server Logs

```python
def test_download_server_logs(self):
    from accelbyte_py_sdk.api.dslogmanager import download_server_logs

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)
    pod_name = self.pre_fetch_pod_name()
    if not pod_name:
        self.skipTest(reason="Can't get a pod name to use.")

    if not self.pre_fetch_terminated_servers():
        self.skipTest(reason="No terminated servers to use.")

    # act
    result, error = download_server_logs(pod_name=self.pod_name)

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### List Terminated Servers

```python
def test_list_terminated_servers(self):
    from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers

    # arrange

    # act
    _, error = list_terminated_servers(limit=20)

    # assert
    self.assertIsNone(error, error)
```
## DSMC

Source: [dsmc.py](../tests/integration/api/dsmc.py)

### Export Config

```python
def test_export_config_v1(self):
    from accelbyte_py_sdk.api.dsmc import export_config_v1

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    # act
    result, error = export_config_v1()

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Claim Server

```python
def test_claim_server(self):
    from accelbyte_py_sdk.api.dsmc import claim_server
    from accelbyte_py_sdk.api.dsmc import create_session
    from accelbyte_py_sdk.api.dsmc.models import ModelsClaimSessionRequest
    from accelbyte_py_sdk.api.dsmc.models import ResponseError

    # arrange
    _, error = create_session(
        body=self.models_create_session_request,
        namespace=self.models_create_session_request.namespace,
    )
    if error is not None:
        self.skipTest(reason=f"Failed to set up DSMC session. {str(error)}")

    time.sleep(5)

    # act
    _, error = claim_server(
        body=ModelsClaimSessionRequest.create(
            session_id=self.models_create_session_request.session_id
        )
    )

    # assert
    if error is not None and isinstance(error, ResponseError):
        error_message = error.error_message.lower()
        if "server is not ready" in error_message:
            self.skipTest(reason=f"Server is not ready yet.")
        elif "server is already claimed" in error_message:
            self.skipTest(reason=f"Server was already claimed.")
        else:
            self.fail(msg=error)
    else:
        self.assertIsNone(error, error)
```
### Create Session

```python
def test_create_session(self):
    from accelbyte_py_sdk.api.dsmc import create_session
    from accelbyte_py_sdk.api.dsmc import delete_session

    # arrange
    if self.session_id is not None:
        _, _ = delete_session(session_id=self.session_id)

    # act
    _, error = create_session(
        body=self.models_create_session_request,
        namespace=self.models_create_session_request.namespace,
    )

    # assert
    self.assertIsNone(error, error)
```
### Get Session

```python
def test_get_session(self):
    from accelbyte_py_sdk.api.dsmc import create_session
    from accelbyte_py_sdk.api.dsmc import get_session

    # arrange
    _, error = create_session(
        body=self.models_create_session_request,
        namespace=self.models_create_session_request.namespace,
    )
    self.log_warning(
        msg=f"Failed to set up DSMC session. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = get_session(session_id=self.models_create_session_request.session_id)

    # assert
    self.assertIsNone(error, error)
```
## Game Telemetry

Source: [gametelemetry.py](../tests/integration/api/gametelemetry.py)

### Get Playtime V1

```python
def test_get_playtime_v1(self):
    from accelbyte_py_sdk.api.gametelemetry import (
        protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get,
    )

    # arrange

    # act
    (
        result,
        error,
    ) = protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(
        steam_id=self.steam_id
    )

    # assert
    self.assertIsNone(error)

    if not isinstance(result, int):
        self.skipTest(reason="Playtime not of type int.")
```
### Save Events V1

```python
def test_save_events_v1(self):
    from datetime import datetime
    from accelbyte_py_sdk.api.gametelemetry import (
        protected_save_events_game_telemetry_v1_protected_events_post,
    )
    from accelbyte_py_sdk.api.gametelemetry.models import TelemetryBody

    # arrange

    # act
    result, error = protected_save_events_game_telemetry_v1_protected_events_post(
        body=[
            TelemetryBody.create(
                event_name="pythonevent",
                event_namespace="test",
                payload={"foo": "bar"},
            )
        ]
    )

    # assert
    self.assertIsNone(error)
```
### Update Playtime V1

```python
def test_update_playtime_v1(self):
    from accelbyte_py_sdk.api.gametelemetry import (
        protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put,
    )
    from accelbyte_py_sdk.core import HttpResponse

    # act
    (
        result,
        error,
    ) = protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
        playtime="4",
        steam_id=self.steam_id,
    )

    # assert
    if (
        error is not None
        and isinstance(error, HttpResponse)
        and "user not found" in str(error.content).lower()
    ):
        self.skipTest(reason="User was not found.")
    else:
        self.assertIsNone(error, error)
```
## GDPR

Source: [gdpr.py](../tests/integration/api/gdpr.py)

### Admin Get User Personal Data Requests

```python
def test_admin_get_user_personal_data_requests(self):
    from accelbyte_py_sdk.api.gdpr import admin_get_user_personal_data_requests

    # arrange
    _, error, user_id = self.do_create_user(
        body=self.model_user_create_request, namespace=self.user_namespace
    )
    if error is not None and not user_id:
        self.skipTest(reason=f"Failed to set up user. {str(error)}")

    self.user_id = user_id

    # act
    _, error = admin_get_user_personal_data_requests(
        user_id=self.user_id, namespace=self.user_namespace
    )

    # assert
    self.assertIsNone(error, error)
```
### Admin Submit User Account Deletion Request

```python
def test_admin_submit_user_account_deletion_request(self):
    from accelbyte_py_sdk.api.gdpr import admin_submit_user_account_deletion_request

    # arrange
    _, error, user_id = self.do_create_user(
        body=self.model_user_create_request, namespace=self.user_namespace
    )
    if error is not None and not user_id:
        self.skipTest(reason=f"Failed to set up user. {str(error)}")

    self.user_id = user_id

    # act
    _, error = admin_submit_user_account_deletion_request(
        user_id=self.user_id, namespace=self.user_namespace
    )

    # assert
    self.assertIsNone(error, error)
```
### Delete Admin Email Configuration

```python
def test_delete_admin_email_configuration(self):
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
```
### Get Admin Email Configuration

```python
def test_get_admin_email_configuration(self):
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
```
### Save Admin Email Configuration

```python
def test_save_admin_email_configuration(self):
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
```
### Update Admin Email Configuration

```python
def test_update_admin_email_configuration(self):
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
```
## Group

Source: [group.py](../tests/integration/api/group.py)

### Create New Group Public V1

```python
def test_create_new_group_public_v1(self):
    # arrange

    # act
    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.group_id = group_id

    # assert
    self.assertIsNone(error, error)
```
### Delete Group Public V1

```python
def test_delete_group_public_v1(self):
    from accelbyte_py_sdk.api.group import delete_group_public_v1

    # arrange
    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.log_warning(
        msg=f"Failed to set up group. {str(error)}", condition=error is not None
    )
    self.group_id = group_id

    # act
    _, error = delete_group_public_v1(
        group_id=self.group_id, namespace=self.group_namespace
    )

    # assert
    self.assertIsNone(error, error)
    self.group_id = None
```
### Get Single Group Public V1

```python
def test_get_single_group_public_v1(self):
    from accelbyte_py_sdk.api.group import get_single_group_public_v1

    # arrange
    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.log_warning(
        msg=f"Failed to set up group. {str(error)}", condition=error is not None
    )
    self.group_id = group_id

    # act
    _, error = get_single_group_public_v1(
        group_id=self.group_id, namespace=self.group_namespace
    )

    # assert
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

    # arrange
    _, error, group_id = self.do_create_new_group_public_v1(
        body=self.models_public_create_new_group_request_v1,
        namespace=self.group_namespace,
    )
    self.log_warning(
        msg=f"Failed to set up group. {str(error)}", condition=error is not None
    )
    self.group_id = group_id

    # act
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

    # assert
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
    # arrange

    # act
    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.user_id = user_id

    # assert
    self.assertIsNone(error, error)
```
### Delete User

```python
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
```
### Admin Get User By User Id V3

```python
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
```
### Admin List Users V3

```python
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
```
### Admin Update User V4

```python
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
```
### User Authentication V3

```python
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
```
### Authorize V3

```python
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
```
### Admin Download My Backup Codes V4

```python
def test_admin_download_my_backup_codes_v4(self):
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

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Public Download My Backup Codes V4

```python
def test_public_download_my_backup_codes_v4(self):
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

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
## Leaderboard

Source: [leaderboard.py](../tests/integration/api/leaderboard.py)

### Create Leaderboard Configuration Admin V1

```python
def test_create_leaderboard_configuration_admin_v1(self):
    from accelbyte_py_sdk.api.leaderboard import (
        create_leaderboard_configuration_admin_v1,
    )

    # arrange
    self.init_leaderboard_config()

    # act
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )

    # assert
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

    # arrange
    self.init_leaderboard_config()
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )
    self.assertIsNone(error, error)

    # act
    _, error = delete_leaderboard_configuration_admin_v1(
        leaderboard_code=self.models_leaderboard_config_req.leaderboard_code
    )

    # assert
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

    # arrange
    self.init_leaderboard_config()
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )
    self.assertIsNone(error, error)

    # act
    _, error = get_leaderboard_configuration_admin_v1(
        leaderboard_code=self.models_leaderboard_config_req.leaderboard_code
    )

    # assert
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

    # arrange
    self.init_leaderboard_config()
    _, error = create_leaderboard_configuration_admin_v1(
        body=self.models_leaderboard_config_req
    )
    self.assertIsNone(error, error)

    # act
    result, error = update_leaderboard_configuration_admin_v1(
        body=ModelsUpdateLeaderboardConfigReq.create(
            daily=self.models_leaderboard_config_req.daily,
            descending=self.models_leaderboard_config_req.descending,
            icon_url=self.models_leaderboard_config_req.icon_url,
            monthly=self.models_leaderboard_config_req.monthly,
            name=self.models_leaderboard_config_req.name,
            season_period=self.models_leaderboard_config_req.season_period,
            start_time=self.models_leaderboard_config_req.start_time,
            stat_code="KODE_STATUS",
            weekly=self.models_leaderboard_config_req.weekly,
        ),
        leaderboard_code=self.models_leaderboard_config_req.leaderboard_code,
    )

    # assert
    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsGetLeaderboardConfigResp)
    self.assertEqual(result.stat_code, "KODE_STATUS")
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

    # arrange
    result, error = retrieve_agreements_public()
    self.assertIsNotNone(result)
    self.assertIsInstance(result, list)

    if len(result) == 0:
        self.skipTest(reason="No policy to accept found.")

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

    # act
    _, error = bulk_accept_versioned_policy(body=[accept_agreement_request])

    # assert
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

    # arrange
    result, error = retrieve_agreements_public()
    self.assertIsNotNone(result)
    self.assertIsInstance(result, list)

    if len(result) == 0:
        self.skipTest(reason="No policy with 'Marketing Preference' type found.")
    accepted_agreement: RetrieveAcceptedAgreementResponse = next(
        (
            agreement
            for agreement in result
            if isinstance(agreement, RetrieveAcceptedAgreementResponse)
            and agreement.policy_type == "Marketing Preference"
        ),
        None,
    )
    if accepted_agreement is None:
        self.skipTest(reason="No policy with 'Marketing Preference' type found.")

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

    # act
    _, error = change_preference_consent(
        user_id=self.user_id, body=[accept_agreement_request]
    )

    # assert
    self.assertIsNone(error, error)
```
### Retrieve Agreements Public

```python
def test_retrieve_agreements_public(self):
    from accelbyte_py_sdk.api.legal import retrieve_agreements_public

    # arrange

    # act
    result, error = retrieve_agreements_public()
    self.assertIsNone(error, error)

    # assert
    self.assertIsNotNone(result)
    self.assertIsInstance(result, list)
```
## Lobby

Source: [lobby.py](../tests/integration/api/lobby.py)

### Free Form Notification

```python
def test_free_form_notification(self):
    from accelbyte_py_sdk.api.lobby import free_form_notification
    from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest

    # arrange

    # act
    _, error = free_form_notification(
        body=ModelFreeFormNotificationRequest.create(
            message="MESSAGE", topic="TOPIC"
        )
    )

    # assert
    self.assertIsNone(error, error)
```
### Admin Export Config V1

```python
def test_admin_export_config_v1(self):
    from accelbyte_py_sdk.api.lobby import admin_export_config_v1

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    # act
    result, error = admin_export_config_v1()

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Send And Receive Notifications

```python
async def test_send_and_receive_notifications(self):
    from accelbyte_py_sdk.api.lobby.wss_models import PartyCreateRequest
    from accelbyte_py_sdk.api.lobby.wss_models import parse_wsm

    # arrange

    # act
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

    # assert
    self.assertIsNotNone(wsm)
    self.assertIsNotNone(wsm_type)
    self.assertEqual("partyCreateResponse", wsm_type)
```
## Match V2

Source: [match2.py](../tests/integration/api/match2.py)

### Create Match Pool

```python
def test_create_match_pool(self):
    from accelbyte_py_sdk.core import generate_id

    # arrange
    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"

    # act
    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    if pre_error:
        self.skipTest(reason=pre_error)
    if error is None:
        self.match_pool_name = match_pool_name
        self.rule_set_name = rule_set_name
        self.session_template_name = session_template_name

    # assert
    self.assertIsNone(error, error)
```
### Delete Match Pool

```python
def test_delete_match_pool(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.match2 import delete_match_pool

    # arrange
    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"
    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    if pre_error:
        self.skipTest(reason=pre_error)
    if error:
        self.skipTest(reason=f"unable to create match pool: {error}")
    else:
        self.match_pool_name = match_pool_name
        self.rule_set_name = rule_set_name
        self.session_template_name = session_template_name

    # act
    _, error = delete_match_pool(pool=match_pool_name)
    if error is None:
        self.match_pool_name = None

    # assert
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

    # arrange
    rid = generate_id(8)
    match_pool_name = f"python_sdk_pool_{rid}"
    rule_set_name = f"python_sdk_ruleset_{rid}"
    session_template_name = f"python_sdk_template_{rid}"
    pre_error, error = self.do_create_match_pool(
        match_pool_name=match_pool_name,
        rule_set_name=rule_set_name,
        session_template_name=session_template_name,
    )
    if pre_error:
        self.skipTest(reason=pre_error)
    if error:
        self.skipTest(reason=f"unable to create match pool: {error}")
    else:
        self.match_pool_name = match_pool_name
        self.rule_set_name = rule_set_name
        self.session_template_name = session_template_name

    generate_user_result, error = self.generate_user()
    if error:
        self.skipTest(reason=f"unable to create user: {error}")

    username, password, user_id = generate_user_result
    self.user_id = user_id

    user_sdk, error = self.create_user_sdk(
        username=username,
        password=password,
        existing_sdk=SDK,
    )
    if error:
        self.skipTest(reason=f"unable to create user sdk: {error}")
    else:
        self.sdks.append(user_sdk)

    result, error = session_service.create_game_session(
        body=session_models.ApimodelsCreateGameSessionRequest.create_from_dict(
            {
                "configurationName": session_template_name,
            }
        ),
        sdk=user_sdk,
    )
    if error:
        self.skipTest(reason=f"unable to create game session: {error}")

    if not (game_session_id := getattr(result, "id_", None)):
        self.skipTest(reason=f"unable to find game session id: {error}")

    # act & assert (create_match_ticket)
    result, error = match2_service.create_match_ticket(
        body=match2_models.ApiMatchTicketRequest.create_from_dict(
            {
                "matchPool": match_pool_name,
                "sessionId": game_session_id,
            }
        ),
        sdk=user_sdk,
    )

    self.assertIsNone(error, error)

    if not (match_ticket_id := getattr(result, "match_ticket_id", None)):
        self.fail(msg="unable to find match ticket id")

    # act & assert (delete_match_ticket)
    _, error = match2_service.delete_match_ticket(
        ticketid=match_ticket_id,
        sdk=user_sdk,
    )

    self.assertIsNone(error, error)
```
### Match Pool List

```python
def test_match_pool_list(self):
    from accelbyte_py_sdk.api.match2 import match_pool_list

    # arrange

    # act
    _, error = match_pool_list()

    # assert
    self.assertIsNone(error, error)
```
### Get Healthcheck Info

```python
def test_get_healthcheck_info(self):
    from accelbyte_py_sdk.api.match2 import get_healthcheck_info

    # arrange

    # act
    x, error = get_healthcheck_info()

    # assert
    self.assertIsNone(error, error)
```
### Match Function List

```python
def test_match_function_list(self):
    from accelbyte_py_sdk.api.match2 import match_function_list

    # arrange

    # act
    result, error = match_function_list()

    # assert
    self.assertIsNone(error, error)
```
## Matchmaking

Source: [matchmaking.py](../tests/integration/api/matchmaking.py)

### Create Channel Handler

```python
def test_create_channel_handler(self):
    from accelbyte_py_sdk.api.matchmaking import create_channel_handler
    from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

    # arrange
    _, _ = delete_channel_handler(channel=self.models_channel_request.game_mode)

    # act
    _, error = create_channel_handler(body=self.models_channel_request)

    # assert
    self.assertIsNone(error, error)
```
### Delete Channel Handler

```python
def test_delete_channel_handler(self):
    from accelbyte_py_sdk.api.matchmaking import create_channel_handler
    from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

    # arrange
    _, error = create_channel_handler(body=self.models_channel_request)
    self.log_warning(
        msg=f"Failed to set up channel handler. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = delete_channel_handler(channel=self.models_channel_request.game_mode)

    # assert
    self.assertIsNone(error, error)
```
### Get Single Matchmaking Channel

```python
def test_get_single_matchmaking_channel(self):
    from accelbyte_py_sdk.api.matchmaking import create_channel_handler
    from accelbyte_py_sdk.api.matchmaking import get_single_matchmaking_channel

    # arrange
    _, error = create_channel_handler(body=self.models_channel_request)
    self.log_warning(
        msg=f"Failed to set up channel handler. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = get_single_matchmaking_channel(
        channel_name=self.models_channel_request.game_mode
    )

    # assert
    self.assertIsNone(error, error)
```
### Update Matchmaking Channel

```python
def test_update_matchmaking_channel(self):
    from accelbyte_py_sdk.api.matchmaking import create_channel_handler
    from accelbyte_py_sdk.api.matchmaking import update_matchmaking_channel
    from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateAllianceRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateChannelRequest
    from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateRuleset

    # arrange
    _, error = create_channel_handler(body=self.models_channel_request)
    self.log_warning(
        msg=f"Failed to set up channel handler. {str(error)}",
        condition=error is not None,
    )

    # act
    _, error = update_matchmaking_channel(
        body=ModelsUpdateChannelRequest.create(
            deployment=self.models_channel_request.deployment,
            description="KETERANGAN",
            find_match_timeout_seconds=self.models_channel_request.find_match_timeout_seconds,
            joinable=self.models_channel_request.joinable,
            max_delay_ms=self.models_channel_request.max_delay_ms,
            rule_set=ModelsUpdateRuleset.create(
                alliance=ModelsUpdateAllianceRule.create(
                    max_number=self.models_alliance_rule.max_number,
                    min_number=self.models_alliance_rule.min_number,
                    player_max_number=self.models_alliance_rule.player_max_number,
                    player_min_number=self.models_alliance_rule.player_min_number,
                ),
                alliance_flexing_rule=self.models_alliance_flexing_rules,
            ),
            session_queue_timeout_seconds=self.models_channel_request.session_queue_timeout_seconds,
            social_matchmaking=self.models_channel_request.social_matchmaking,
            use_sub_gamemode=self.models_channel_request.use_sub_gamemode,
        ),
        channel_name=self.game_mode,
    )

    # assert
    self.assertIsNone(error, error)
```
### Get All Party In All Channel

```python
def test_get_all_party_in_all_channel(self):
    from accelbyte_py_sdk.api.matchmaking import get_all_party_in_all_channel

    # arrange

    # act
    result, error = get_all_party_in_all_channel()

    # assert
    self.assertIsNone(error, error)
```
### Export Channels

```python
def test_export_channels(self):
    from accelbyte_py_sdk.api.matchmaking import export_channels

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    # act
    result, error = export_channels()

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
## Platform

Source: [platformx.py](../tests/integration/api/platformx.py)

### Create Store

```python
def test_create_store(self):
    # arrange

    # act
    _, error, store_id = self.do_create_store(body=self.store_create)
    self.store_id = store_id

    # assert
    self.assertIsNone(error, error)
```
### Delete Store

```python
def test_delete_store(self):
    from accelbyte_py_sdk.api.platform import delete_store

    # arrange
    _, error, store_id = self.do_create_store(body=self.store_create)
    self.log_warning(
        msg=f"Failed to set up store. {str(error)}", condition=error is not None
    )
    self.store_id = store_id

    # act
    _, error = delete_store(store_id=self.store_id)

    # assert
    self.assertIsNone(error, error)
    self.store_id = None
```
### Export Rewards

```python
def test_export_rewards(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.platform import export_rewards

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    # act
    result, error = export_rewards()

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Export Store

```python
def test_export_store(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.platform import export_store_1
    from accelbyte_py_sdk.api.platform.models import ExportStoreRequest

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    _, error, store_id = self.do_create_store(body=self.store_create)
    if error is not None:
        self.skipTest(reason=f"Failed to create store. {str(error)}")
    self.store_id = store_id

    # act
    result, error = export_store_1(store_id=store_id)

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Get Store

```python
def test_get_store(self):
    from accelbyte_py_sdk.api.platform import get_store

    # arrange
    _, error, store_id = self.do_create_store(body=self.store_create)
    self.log_warning(
        msg=f"Failed to set up store. {str(error)}", condition=error is not None
    )
    self.store_id = store_id

    # act
    _, error = get_store(store_id=self.store_id)

    # assert
    self.assertIsNone(error, error)
```
### Import Store

```python
def test_import_store(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.platform import export_store_1
    from accelbyte_py_sdk.api.platform import import_store_1
    from accelbyte_py_sdk.api.platform.models import ExportStoreRequest

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    _, error, store_id = self.do_create_store(body=self.store_create)
    if error is not None:
        self.skipTest(reason=f"Failed to create store. {str(error)}")
    self.store_id = store_id

    result, error = export_store_1(store_id=self.store_id)
    if error is not None:
        self.skipTest(reason=f"Failed to export store. {str(error)}")
    if result is None:
        self.skipTest(reason="Exported store not found.")

    exported_file_path.write_bytes(result)
    if not exported_file_path.exists():
        self.skipTest(reason="Failed to save exported store.")

    # act
    with exported_file_path.open("rb") as exported_file:
        result, error = import_store_1(file=exported_file, store_id=store_id)

    # assert
    self.assertIsNone(error, error)
```
### Update Store

```python
def test_update_store(self):
    from accelbyte_py_sdk.api.platform import update_store
    from accelbyte_py_sdk.api.platform.models import StoreInfo
    from accelbyte_py_sdk.api.platform.models import StoreUpdate

    # arrange
    _, error, store_id = self.do_create_store(body=self.store_create)
    self.log_warning(
        msg=f"Failed to set up store. {str(error)}", condition=error is not None
    )
    self.store_id = store_id

    # act
    result, error = update_store(
        store_id=self.store_id, body=StoreUpdate.create(title="JUDUL")
    )

    # assert
    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, StoreInfo)
    self.assertIsNotNone(result.title)
    self.assertEqual("JUDUL", result.title)
```
## QOSM

Source: [qosm.py](../tests/integration/api/qosm.py)

### Heartbeat

```python
def test_heartbeat(self):
    from accelbyte_py_sdk.api.qosm import list_server
    from accelbyte_py_sdk.api.qosm.models import ModelsHeartbeatRequest
    from accelbyte_py_sdk.api.qosm import heartbeat

    # arrange
    result, error = list_server()
    self.assertIsNone(error, error)

    # act
    if len(result.servers) > 0:
        server = result.servers[0]
        body = (
            ModelsHeartbeatRequest()
            .with_ip(server.ip)
            .with_port(server.port)
            .with_region(server.region)
        )
        result, error = heartbeat(body=body)

    # assert
    self.assertIsNone(error, error)
```
## Season Pass

Source: [seasonpass.py](../tests/integration/api/seasonpass.py)

### Season Crud

```python
def test_season_crud(self):
    # arrange - store

    seasonStore = self.do_get_store()

    # arrange - store tier item id

    seasonStoreItemTier = self.do_get_store_tier_item(seasonStore.store_id)

    # act - create season

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

    # assert - create season

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)

    # act - update season

    seasonId = result.id_
    updatedSeasonName = "UpdatedPythonServerSDKTestSeason"
    body = SeasonUpdate().with_name(updatedSeasonName)
    result, error = update_season(
        namespace=self.namespace, season_id=seasonId, body=body
    )

    # assert - update season

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)

    # act - get season

    result, error = get_season(namespace=self.namespace, season_id=seasonId)

    # assert - get season

    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertEqual(updatedSeasonName, result.name)

    # act - delete season

    result, error = delete_season(namespace=self.namespace, season_id=seasonId)

    # assert - delete season

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

    # arrange
    rid = generate_id(8)
    template_name = f"python_sdk_template_{rid}"

    # act
    error = self.do_create_configuration_template(template_name=template_name)
    if error is None:
        self.template_name = template_name

    # assert
    self.assertIsNone(error, error)
```
### Admin Delete Configuration Template V1

```python
def test_admin_delete_configuration_template_v1(self):
    from accelbyte_py_sdk.core import generate_id
    from accelbyte_py_sdk.api.session import admin_delete_configuration_template_v1

    # arrange
    rid = generate_id(8)
    template_name = f"python_sdk_template_{rid}"
    error = self.do_create_configuration_template(template_name=template_name)
    if error:
        self.skipTest(reason=f"unable to create configuration template: {error}")

    # act
    _, error = admin_delete_configuration_template_v1(name=template_name)
    if error is None:
        self.template_name = None

    # assert
    self.assertIsNone(error, error)
```
### Public Query Game Sessions

```python
def test_public_query_game_sessions(self):
    from accelbyte_py_sdk.api.session import public_query_game_sessions

    # arrange

    # act
    result, error = public_query_game_sessions(body={})

    # assert
    self.assertIsNone(error, error)
```
### Game Session Flow

```python
def test_game_session_flow(self):
    from accelbyte_py_sdk.core import SDK, generate_id
    import accelbyte_py_sdk.api.session as session_service
    import accelbyte_py_sdk.api.session.models as session_models

    # arrange
    rid = generate_id(8)
    template_name = f"python_sdk_template_{rid}"
    error = self.do_create_configuration_template(template_name=template_name)
    if error:
        self.skipTest(reason=f"unable to create configuration template: {error}")
    else:
        self.template_name = template_name

    generate_user1_result, error = self.generate_user()
    if error:
        self.skipTest(reason=f"unable to create user1: {error}")
    username1, password1, user_id1 = generate_user1_result
    self.user_ids.append(user_id1)

    generate_user2_result, error = self.generate_user()
    if error:
        self.skipTest(reason=f"unable to create user2: {error}")
    username2, password2, user_id2 = generate_user2_result
    self.user_ids.append(user_id2)

    user_sdk1, error = self.create_user_sdk(
        username=username1,
        password=password1,
        existing_sdk=SDK,
    )
    if error:
        self.skipTest(reason=f"unable to create user1 sdk: {error}")
    else:
        self.sdks.append(user_sdk1)

    user_sdk2, error = self.create_user_sdk(
        username=username2,
        password=password2,
        existing_sdk=SDK,
    )
    if error:
        self.skipTest(reason=f"unable to create user2 sdk: {error}")
    else:
        self.sdks.append(user_sdk2)

    # act & assert (create_game_session)
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
        self.fail(msd=f"unable to find game session id")

    # act & assert (join_game_sesion)
    result, error = session_service.join_game_session(
        session_id=game_session_id,
        sdk=user_sdk2,
    )
    self.assertIsNone(error, error)

    # act & assert (get_game_session)
    result, error = session_service.get_game_session(
        session_id=game_session_id,
    )
    self.assertIsNone(error, error)
    self.assertEqual(len(result.members), 2)
    user_ids = [member.id_ for member in result.members]
    self.assertIn(user_id1, user_ids)
    self.assertIn(user_id2, user_ids)
```
### Party Flow

```python
def test_party_flow(self):
    from accelbyte_py_sdk.core import SDK, generate_id
    import accelbyte_py_sdk.api.session as session_service
    import accelbyte_py_sdk.api.session.models as session_models

    # arrange
    rid = generate_id(8)
    template_name = f"python_sdk_template_{rid}"
    error = self.do_create_configuration_template(template_name=template_name)
    if error:
        self.skipTest(reason=f"unable to create configuration template: {error}")
    else:
        self.template_name = template_name

    generate_user1_result, error = self.generate_user()
    if error:
        self.skipTest(reason=f"unable to create user1: {error}")
    username1, password1, user_id1 = generate_user1_result
    self.user_ids.append(user_id1)

    generate_user2_result, error = self.generate_user()
    if error:
        self.skipTest(reason=f"unable to create user2: {error}")
    username2, password2, user_id2 = generate_user2_result
    self.user_ids.append(user_id2)

    user_sdk1, error = self.create_user_sdk(
        username=username1,
        password=password1,
        existing_sdk=SDK,
    )
    if error:
        self.skipTest(reason=f"unable to create user1 sdk: {error}")
    else:
        self.sdks.append(user_sdk1)

    user_sdk2, error = self.create_user_sdk(
        username=username2,
        password=password2,
        existing_sdk=SDK,
    )
    if error:
        self.skipTest(reason=f"unable to create user2 sdk: {error}")
    else:
        self.sdks.append(user_sdk2)

    # act & assert (public_create_party)
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
        self.fail(msd=f"unable to find party id")

    if not (party_code := getattr(result, "code", None)):
        self.fail(msd=f"unable to find party code")

    # act & assert (public_party_join_code)
    result, error = session_service.public_party_join_code(
        body=session_models.ApimodelsJoinByCodeRequest.create_from_dict(
            {
                "code": party_code,
            }
        ),
        sdk=user_sdk2,
    )
    self.assertIsNone(error, error)

    # act & assert (public_get_party)
    result, error = session_service.public_get_party(
        party_id=party_id,
        sdk=user_sdk1,
    )
    self.assertIsNone(error, error)
    self.assertEqual(len(result.members), 2)
    user_ids = [member.id_ for member in result.members]
    self.assertIn(user_id1, user_ids)
    self.assertIn(user_id2, user_ids)
```
## Session Browser

Source: [sessionbrowser.py](../tests/integration/api/sessionbrowser.py)

### Create Session

```python
def test_create_session(self):
    # arrange

    # act
    _, error, session_id = self.do_create_session(
        body=self.models_create_session_request
    )
    self.session_id = session_id

    # assert
    self.assertIsNone(error, error)
```
### Delete Session

```python
def test_delete_session(self):
    from accelbyte_py_sdk.api.sessionbrowser import delete_session

    # arrange
    _, error, session_id = self.do_create_session(
        body=self.models_create_session_request
    )
    self.log_warning(
        msg=f"Failed to set up session. {str(error)}", condition=error is not None
    )
    self.session_id = session_id

    # act
    _, error = delete_session(session_id=self.session_id)

    # assert
    self.assertIsNone(error, error)
    self.session_id = None
```
### Get Session

```python
def test_get_session(self):
    from accelbyte_py_sdk.api.sessionbrowser import get_session

    # arrange
    _, error, session_id = self.do_create_session(
        body=self.models_create_session_request
    )
    self.log_warning(
        msg=f"Failed to set up session. {str(error)}", condition=error is not None
    )
    self.session_id = session_id

    # act
    _, error = get_session(session_id=self.session_id)

    # assert
    self.assertIsNone(error, error)
```
### Update Session

```python
def test_update_session(self):
    from accelbyte_py_sdk.api.sessionbrowser import update_session
    from accelbyte_py_sdk.api.sessionbrowser.models import (
        ModelsUpdateSessionRequest,
    )

    # arrange
    _, error, session_id = self.do_create_session(
        body=self.models_create_session_request
    )
    self.log_warning(
        msg=f"Failed to set up session. {str(error)}", condition=error is not None
    )
    self.session_id = session_id

    # act
    result, error = update_session(
        body=ModelsUpdateSessionRequest.create(game_max_player=1),
        session_id=self.session_id,
    )

    # assert
    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsSessionResponse)
    self.assertIsNotNone(result)
    self.assertIsNotNone(result.game_session_setting)
    self.assertEqual(1, result.game_session_setting.max_player)
```
## Social

Source: [social.py](../tests/integration/api/social.py)

### Create Stat

```python
def test_create_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import delete_stat

    # arrange
    _, error = delete_stat(stat_code=self.stat_create.stat_code)
    self.exist = error is not None

    # act
    _, error = create_stat(body=self.stat_create)
    self.exist = error is None

    # assert
    self.assertIsNone(error, error)
```
### Delete Stat

```python
def test_delete_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import delete_stat

    # arrange
    _, error = create_stat(body=self.stat_create)
    self.log_warning(
        msg=f"Failed to set up stat. {str(error)}", condition=error is not None
    )
    self.exist = error is None

    # act
    _, error = delete_stat(stat_code=self.stat_create.stat_code)
    self.exist = error is not None

    # assert
    self.assertIsNone(error, error)
```
### Export Stat

```python
def test_export_stats(self):
    from pathlib import Path
    from accelbyte_py_sdk.api.social import export_stats

    # arrange
    exported_file_path = Path(self.exported_filename)
    exported_file_path.unlink(missing_ok=True)

    # act
    result, error = export_stats()

    if result is not None:
        exported_file_path.write_bytes(result)

    # assert
    self.assertIsNone(error, error)
    self.assertTrue(exported_file_path.exists())
    self.assertGreater(exported_file_path.stat().st_size, 0)
```
### Get Stat

```python
def test_get_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import get_stat

    # arrange
    _, error = create_stat(body=self.stat_create)
    self.log_warning(
        msg=f"Failed to set up stat. {str(error)}", condition=error is not None
    )
    self.exist = error is None

    # act
    _, error = get_stat(stat_code=self.stat_create.stat_code)

    # assert
    self.assertIsNone(error, error)
```
### Update Stat

```python
def test_update_stat(self):
    from accelbyte_py_sdk.api.social import create_stat
    from accelbyte_py_sdk.api.social import update_stat
    from accelbyte_py_sdk.api.social.models import StatInfo
    from accelbyte_py_sdk.api.social.models import StatUpdate

    # arrange
    _, error = create_stat(body=self.stat_create)
    self.log_warning(
        msg=f"Failed to set up stat. {str(error)}", condition=error is not None
    )
    self.exist = error is None

    # act
    result, error = update_stat(
        stat_code=self.stat_create.stat_code,
        body=StatUpdate.create(name="KODE_STATUS"),
    )

    # assert
    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, StatInfo)
    self.assertIsNotNone(result.name)
    self.assertEqual("KODE_STATUS", result.name)
```
## UGC

Source: [ugc.py](../tests/integration/api/ugc.py)

### Admin Create Tag

```python
def test_admin_create_tag(self):
    # arrange

    # act
    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.tag_id = tag_id

    # assert
    self.assertIsNone(error, error)
```
### Admin Delete Tag

```python
def test_admin_delete_tag(self):
    from accelbyte_py_sdk.api.ugc import admin_delete_tag

    # arrange
    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.log_warning(
        msg=f"Failed to set up tag. {str(error)}", condition=error is not None
    )
    self.tag_id = tag_id

    # act
    _, error = admin_delete_tag(tag_id=self.tag_id)

    # assert
    self.assertIsNone(error, error)
    self.tag_id = None
```
### Admin Get Tag

```python
def test_admin_get_tag(self):
    from accelbyte_py_sdk.api.ugc import admin_get_tag

    # arrange
    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.log_warning(
        msg=f"Failed to set up tag. {str(error)}", condition=error is not None
    )
    self.tag_id = tag_id

    # act
    _, error = admin_get_tag()

    # assert
    self.assertIsNone(error, error)
```
### Admin Update Tag

```python
def test_admin_update_tag(self):
    from accelbyte_py_sdk.api.ugc import admin_update_tag
    from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagResponse

    # arrange
    _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
    self.log_warning(
        msg=f"Failed to set up tag. {str(error)}", condition=error is not None
    )
    self.tag_id = tag_id

    # act
    result, error = admin_update_tag(
        body=ModelsCreateTagRequest.create(tag="MENANDAI"), tag_id=self.tag_id
    )

    # assert
    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsCreateTagResponse)
    self.assertIsNotNone(result.tag)
    self.assertEqual("MENANDAI", result.tag)
```

