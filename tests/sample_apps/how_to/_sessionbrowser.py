from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.sessionbrowser import create_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsGameSessionSetting
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse


class SessionBrowserTestCase(IntegrationTestCase):

    session_id: Optional[str] = None

    allow_join_in_progress: bool = False
    current_player: int = 0
    game_version: str = "0.1.0"
    map_name: str = "map_name"
    max_player: int = 10
    mode: str = "mode"
    namespace: str = "namespace"
    num_bot: int = 0
    password: str = "password"
    session_type: str = "session_type"
    username: str = "username"
    models_create_session_request: ModelsCreateSessionRequest = ModelsCreateSessionRequest.create(
        game_session_setting=ModelsGameSessionSetting.create(
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

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.sessionbrowser import delete_session

        if self.session_id is not None:
            _, _ = delete_session(session_id=self.session_id)
            self.session_id = None
        super().tearDown()

    def test_create_session(self):
        # arrange

        # act
        result, error = create_session(body=self.models_create_session_request)

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsSessionResponse)
        self.assertIsNotNone(result.session_id)

        self.session_id = result.session_id

    def test_delete_session(self):
        from accelbyte_py_sdk.api.sessionbrowser import delete_session

        # arrange
        result, error = create_session(body=self.models_create_session_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsSessionResponse)
        self.assertIsNotNone(result.session_id)

        self.session_id = result.session_id

        # act
        _, error = delete_session(session_id=self.session_id)

        # assert
        self.assertIsNone(error, error)

        self.session_id = None

    def test_get_session(self):
        from accelbyte_py_sdk.api.sessionbrowser import get_session

        # arrange
        result, error = create_session(body=self.models_create_session_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsSessionResponse)
        self.assertIsNotNone(result.session_id)

        self.session_id = result.session_id

        # act
        _, error = get_session(session_id=self.session_id)

        # assert
        self.assertIsNone(error, error)

    def test_update_session(self):
        from accelbyte_py_sdk.api.sessionbrowser import update_session
        from accelbyte_py_sdk.api.sessionbrowser.models import ModelsUpdateSessionRequest

        # arrange
        result, error = create_session(body=self.models_create_session_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsSessionResponse)
        self.assertIsNotNone(result.session_id)

        self.session_id = result.session_id

        # act
        result, error = update_session(
            body=ModelsUpdateSessionRequest.create(
                game_current_player=1,
                game_max_player=1
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
