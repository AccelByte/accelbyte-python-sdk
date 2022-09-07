# Common Use Cases

## Achievement

Source: [_achievement.py](../tests/sample_apps/how_to/_achievement.py)

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
            stat_code="KODE_STATUS",
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

Source: [_basic.py](../tests/sample_apps/how_to/_basic.py)

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

Source: [_cloudsave.py](../tests/sample_apps/how_to/_cloudsave.py)

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

Source: [_dslogmanager.py](../tests/sample_apps/how_to/_dslogmanager.py)

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
    pod_name = self.pre_fetch_pod_name()
    if not pod_name:
        self.skipTest(reason="Can't get a pod name to use.")

    if not self.pre_fetch_terminated_servers():
        self.skipTest(reason="No terminated servers to use.")

    # act
    _, error = download_server_logs(pod_name=self.pod_name)

    # assert
    self.assertIsNone(error, error)
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

Source: [_dsmc.py](../tests/sample_apps/how_to/_dsmc.py)

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
    self.log_warning(
        msg=f"Failed to set up DSMC session. {str(error)}",
        condition=error is not None,
    )

    time.sleep(5)

    # act
    _, error = claim_server(
        body=ModelsClaimSessionRequest.create(
            session_id=self.models_create_session_request.session_id
        )
    )

    # assert
    if (
        error is not None
        and isinstance(error, ResponseError)
        and "server is not ready" in error.error_message.lower()
    ):
        self.skipTest(reason=f"Server is not ready yet.")
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

Source: [_gametelemetry.py](../tests/sample_apps/how_to/_gametelemetry.py)

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
                event_id="pythonsdk",
                event_name="pythonevent",
                event_namespace="test",
                event_timestamp=datetime.utcnow().isoformat(),
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

Source: [_gdpr.py](../tests/sample_apps/how_to/_gdpr.py)

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
        body=[self.model_user_create_request.login_id]
    )
    self.log_warning(
        msg=f"Failed to set up admin email configuration {str(error)}",
        condition=error is not None,
    )
    self.did_configure = error is None

    # act
    _, error = delete_admin_email_configuration(
        emails=[self.model_user_create_request.login_id]
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
        body=[self.model_user_create_request.login_id]
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
        emails=[self.model_user_create_request.login_id]
    )

    # act
    _, error = save_admin_email_configuration(
        body=[self.model_user_create_request.login_id]
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
        body=[self.model_user_create_request.login_id]
    )
    self.log_warning(
        msg=f"Failed to set up admin email configuration {str(error)}",
        condition=error is not None,
    )
    self.did_configure = error is None

    # act
    _, error = update_admin_email_configuration(
        body=[self.model_user_create_request.login_id]
    )
    self.did_configure = error is None

    # assert
    self.assertIsNone(error, error)
```
## Group

Source: [_group.py](../tests/sample_apps/how_to/_group.py)

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

Source: [_iam.py](../tests/sample_apps/how_to/_iam.py)

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
    from accelbyte_py_sdk.api.iam import delete_user

    # arrange
    _, error, user_id = self.do_create_user(body=self.model_user_create_request)
    self.log_warning(
        msg=f"Failed to set up user. {str(error)}", condition=error is not None
    )
    self.user_id = user_id

    # act
    _, error = delete_user(user_id=self.user_id)

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
## Leaderboard

Source: [_leaderboard.py](../tests/sample_apps/how_to/_leaderboard.py)

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

Source: [_legal.py](../tests/sample_apps/how_to/_legal.py)

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

Source: [_lobby.py](../tests/sample_apps/how_to/_lobby.py)

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


class AsyncLobbyTestCase(AsyncIntegrationTestCase):
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
## Matchmaking

Source: [_matchmaking.py](../tests/sample_apps/how_to/_matchmaking.py)

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
## Platform

Source: [_platform.py](../tests/sample_apps/how_to/_platform.py)

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

Source: [_qosm.py](../tests/sample_apps/how_to/_qosm.py)

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

Source: [_seasonpass.py](../tests/sample_apps/how_to/_seasonpass.py)

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
## Session Browser

Source: [_sessionbrowser.py](../tests/sample_apps/how_to/_sessionbrowser.py)

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
        body=ModelsUpdateSessionRequest.create(
            game_current_player=1, game_max_player=1
        ),
        session_id=self.session_id,
    )

    # assert
    self.assertIsNone(error, error)
    self.assertIsNotNone(result)
    self.assertIsInstance(result, ModelsSessionResponse)
    self.assertIsNotNone(result)
    self.assertIsNotNone(result.game_session_setting)
    self.assertEqual(1, result.game_session_setting.current_player)
    self.assertEqual(1, result.game_session_setting.max_player)
```
## Social

Source: [_social.py](../tests/sample_apps/how_to/_social.py)

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

Source: [_ugc.py](../tests/sample_apps/how_to/_ugc.py)

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

