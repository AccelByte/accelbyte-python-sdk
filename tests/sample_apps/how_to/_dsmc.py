from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchMember
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchParty
from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchingAlly


class DSMCTestCase(IntegrationTestCase):

    models_create_session_request: Optional[ModelsCreateSessionRequest] = ModelsCreateSessionRequest.create(
        client_version="",
        configuration="",
        deployment="default",
        game_mode="GAME_MODE",
        matching_allies=[
            ModelsRequestMatchingAlly.create(
                matching_parties=[
                    ModelsRequestMatchParty.create(
                        party_attributes={},
                        party_id="PARTY_ID",
                        party_members=[
                            ModelsRequestMatchMember.create(
                                user_id="USER_ID"
                            )
                        ]
                    )
                ]
            )
        ],
        namespace="accelbyte",
        pod_name="",
        region="",
        session_id="SESSION_ID"
    )

    def setUp(self) -> None:
        from accelbyte_py_sdk.services.auth import login_user

        super().setUp()
        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.dsmc import delete_session

        _, e = delete_session(session_id=self.models_create_session_request.session_id)
        super().tearDown()

    def test_claim_server(self):
        from accelbyte_py_sdk.api.dsmc import claim_server
        from accelbyte_py_sdk.api.dsmc import create_session
        from accelbyte_py_sdk.api.dsmc.models import ModelsClaimSessionRequest

        # arrange
        _, error = create_session(body=self.models_create_session_request)
        self.assertIsNone(error, error)

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
        _, error = create_session(body=self.models_create_session_request)

        # assert
        self.assertIsNone(error, error)

    def test_get_session(self):
        from accelbyte_py_sdk.api.dsmc import create_session
        from accelbyte_py_sdk.api.dsmc import get_session

        # arrange
        _, error = create_session(body=self.models_create_session_request)
        self.assertIsNone(error, error)

        # act
        _, error = get_session(session_id=self.models_create_session_request.session_id)

        # assert
        self.assertIsNone(error, error)
