import time
from pathlib import Path
from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchMember
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchParty
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchingAlly


class DSMCTestCase(IntegrationTestCase):
    exported_filename: str = "exported"

    def tearDown(self) -> None:
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # region test:export_config

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

    # endregion test:export_config

    # region test:update_deployment

    def test_update_deployment(self):
        from accelbyte_py_sdk.api.dsmc import get_deployment
        from accelbyte_py_sdk.api.dsmc import update_deployment
        from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDeploymentRequest

        # arrange
        deployment_name = "default"
        result, error = get_deployment(
            deployment=deployment_name,
        )
        self.assertIsNone(error, error)

        # act
        _, error = update_deployment(
            body=ModelsUpdateDeploymentRequest.create(
                allow_version_override=result.allow_version_override,
                buffer_count=result.buffer_count,
                buffer_percent=result.buffer_percent,
                configuration=result.configuration,
                enable_region_overrides=result.enable_region_overrides,
                game_version=result.game_version,
                max_count=result.max_count,
                min_count=result.min_count,
                regions=result.regions,
                session_timeout=0,
                unlimited=result.unlimited,
                use_buffer_percent=result.use_buffer_percent,
            ),
            deployment=deployment_name,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:update_deployment

    # region test:update_deployment_with_missing_image

    def test_update_deployment_with_missing_image(self):
        from accelbyte_py_sdk.api.dsmc import get_deployment
        from accelbyte_py_sdk.api.dsmc import update_deployment
        from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDeploymentRequest

        # arrange
        deployment_name = "default"
        result, error = get_deployment(
            deployment=deployment_name,
        )
        self.assertIsNone(error, error)

        # act
        _, error = update_deployment(
            body=ModelsUpdateDeploymentRequest.create(
                allow_version_override=result.allow_version_override,
                buffer_count=result.buffer_count,
                buffer_percent=result.buffer_percent,
                configuration=result.configuration,
                enable_region_overrides=result.enable_region_overrides,
                game_version="xxx",
                max_count=result.max_count,
                min_count=result.min_count,
                regions=result.regions,
                session_timeout=0,
                unlimited=result.unlimited,
                use_buffer_percent=result.use_buffer_percent,
            ),
            deployment=deployment_name,
        )

        # assert
        self.assertIsNotNone(error, error)
        self.assertEqual(720510, error.error_code)
        self.assertIn("DS image not found", error.error_message)

    # endregion test:update_deployment_with_missing_image


class DSMCSessionTestCase(IntegrationTestCase):
    session_id: Optional[str] = None
    deployment: str = "default"
    game_mode: str = "GAME_MODE"
    session_party_id = "PARTY_ID"
    session_user_id = "USER_ID"
    models_create_session_request: Optional[
        ModelsCreateSessionRequest
    ] = ModelsCreateSessionRequest.create(
        client_version="",
        configuration="",
        deployment=deployment,
        game_mode=game_mode,
        matching_allies=[
            ModelsRequestMatchingAlly.create(
                matching_parties=[
                    ModelsRequestMatchParty.create(
                        party_attributes={},
                        party_id=session_party_id,
                        party_members=[
                            ModelsRequestMatchMember.create(user_id=session_user_id)
                        ],
                    )
                ]
            )
        ],
        namespace="WILL BE REPLACED",
        pod_name="",
        region="",
        session_id="",
    )

    # noinspection PyMethodMayBeStatic
    def do_session_browser_create_session(self):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.core import get_namespace
        from accelbyte_py_sdk.api.sessionbrowser import create_session
        from accelbyte_py_sdk.api.sessionbrowser.models import (
            ModelsCreateSessionRequest,
        )
        from accelbyte_py_sdk.api.sessionbrowser.models import ModelsGameSessionSetting

        namespace, error = get_namespace()
        if error:
            self.skipTest(reason="Failed to get namespace.")

        current_player: int = 0
        max_player: int = 10
        models_create_session_request = ModelsCreateSessionRequest.create(
            game_session_setting=ModelsGameSessionSetting.create(
                allow_join_in_progress=False,
                current_internal_player=current_player,
                current_player=current_player,
                map_name="map_name",
                max_internal_player=max_player,
                max_player=max_player,
                mode="mode",
                num_bot=0,
                password="password",
                settings={},
            ),
            game_version="0.1.0",
            namespace=namespace,
            session_type="dedicated",
            username="username",
        )

        result, error = create_session(body=models_create_session_request)

        if error is None:
            session_id = result.session_id
        else:
            session_id = None

        return result, error, session_id

    def setUp(self) -> None:
        from accelbyte_py_sdk.core import get_namespace

        super().setUp()
        _, error, session_id = self.do_session_browser_create_session()
        if error is not None:
            self.skipTest(
                reason=f"Failed to set up SessionBrowser session. {str(error)}"
            )

        namespace, error = get_namespace()
        if error:
            self.skipTest(reason="Failed to get namespace.")

        self.session_id = session_id
        self.models_create_session_request.session_id = self.session_id
        self.models_create_session_request.namespace = namespace

    def afterSetUp(self) -> None:
        from accelbyte_py_sdk.core import ExponentialHttpBackoffPolicy
        from accelbyte_py_sdk.core import MaxElapsedHttpRetryPolicy

        self.set_http_client_policies(
            retry=MaxElapsedHttpRetryPolicy(60.0),
            backoff=ExponentialHttpBackoffPolicy(),
        )

    def beforeTearDown(self) -> None:
        self.set_http_client_policies(retry=None, backoff=None)

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.dsmc import delete_session as dsmc_delete_session
        from accelbyte_py_sdk.api.sessionbrowser import (
            admin_delete_session as sb_admin_delete_session,
        )

        if self.session_id is not None:
            _, error = dsmc_delete_session(session_id=self.session_id)
            self.log_warning(
                msg=f"Failed to tear down DSMC session. {str(error)}",
                condition=error is not None,
            )
            _, error = sb_admin_delete_session(session_id=self.session_id)
            self.log_warning(
                msg=f"Failed to tear down SessionBrowser session. {str(error)}",
                condition=error is not None,
            )
            self.session_id = None

        super().tearDown()

    # region test:claim_server

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

    # endregion test:claim_server

    # region test:create_session

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

    # endregion test:create_session

    # region test:get_session

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

    # endregion test:get_session

    # end of file
