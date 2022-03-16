import time
from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchMember
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchParty
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchingAlly

from accelbyte_py_sdk.api.sessionbrowser import create_session as sb_create_session
from accelbyte_py_sdk.api.sessionbrowser import delete_session as sb_delete_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsCreateSessionRequest as SBModelsCreateSessionRequest
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsGameSessionSetting as SBModelsGameSessionSetting
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse as SBModelsSessionResponse


class DSMCTestCase(IntegrationTestCase):

    models_create_session_request: Optional[ModelsCreateSessionRequest] = ModelsCreateSessionRequest.create(
        client_version="",
        configuration="",
        deployment="deployruli",
        game_mode="soloyogs",
        matching_allies=[
            ModelsRequestMatchingAlly.create(
                matching_parties=[
                    ModelsRequestMatchParty.create(
                        party_attributes={},
                        party_id="PARTY_ID",
                        party_members=[ModelsRequestMatchMember.create(user_id="USER_ID")]
                    )
                ]
            )
        ],
        namespace="armadademotestqa",
        pod_name="",
        region="",
        session_id=""
    )

    session_id: Optional[str] = None

    allow_join_in_progress: bool = False
    current_player: int = 0
    game_version: str = "0.1.0"
    map_name: str = "map_name"
    max_player: int = 10
    mode: str = "mode"
    namespace: str = "accelbyte"
    num_bot: int = 0
    password: str = "password"
    session_type: str = "p2p"
    username: str = "username"
    sb_models_create_session_request: SBModelsCreateSessionRequest = SBModelsCreateSessionRequest.create(
        game_session_setting=SBModelsGameSessionSetting.create(
            allow_join_in_progress=allow_join_in_progress,
            current_internal_player=current_player,
            current_player=current_player,
            map_name=map_name,
            max_internal_player=max_player,
            max_player=max_player,
            mode=mode,
            num_bot=num_bot,
            password=password,
            settings={}
        ),
        game_version=game_version,
        namespace=namespace,
        session_type=session_type,
        username=username
    )

    def setUp(self) -> None:
        super().setUp()
        result, error = sb_create_session(body=self.sb_models_create_session_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, SBModelsSessionResponse)
        self.assertIsNotNone(result.session_id)

        self.session_id = result.session_id
        self.models_create_session_request.session_id = self.session_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.dsmc import delete_session

        _, e = delete_session(session_id=self.models_create_session_request.session_id)
        if self.session_id is not None:
            _, _ = sb_delete_session(session_id=self.session_id)
            self.session_id = None
        super().tearDown()

    def test_claim_server(self):
        from accelbyte_py_sdk.api.dsmc import claim_server
        from accelbyte_py_sdk.api.dsmc import create_session
        from accelbyte_py_sdk.api.dsmc.models import ModelsClaimSessionRequest

        # arrange
        _, error = create_session(
            body=self.models_create_session_request,
            namespace=self.models_create_session_request.namespace
        )
        self.assertIsNone(error, error)

        time.sleep(5)

        # act
        _, error = claim_server(
            body=ModelsClaimSessionRequest.create(
                session_id=self.models_create_session_request.session_id
            )
        )

        # assert
        self.assertIsNone(error, error)

    def test_create_session(self):
        from accelbyte_py_sdk.api.dsmc import create_session

        # arrange

        # act
        _, error = create_session(
            body=self.models_create_session_request,
            namespace=self.models_create_session_request.namespace
        )

        # assert
        self.assertIsNone(error, error)

    def test_get_session(self):
        from accelbyte_py_sdk.api.dsmc import create_session
        from accelbyte_py_sdk.api.dsmc import get_session

        # arrange
        _, error = create_session(
            body=self.models_create_session_request,
            namespace=self.models_create_session_request.namespace
        )
        self.assertIsNone(error, error)

        # act
        _, error = get_session(session_id=self.models_create_session_request.session_id)

        # assert
        self.assertIsNone(error, error)
