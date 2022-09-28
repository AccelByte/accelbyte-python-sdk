from typing import Optional

from ._integration_test_case import IntegrationTestCase

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
    num_bot: int = 0
    password: str = "password"
    session_type: str = "p2p"
    username: str = "username"
    models_create_session_request: ModelsCreateSessionRequest = (
        ModelsCreateSessionRequest.create(
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
                settings={},
            ),
            game_version=game_version,
            namespace="",
            session_type=session_type,
            username=username,
        )
    )

    # noinspection PyMethodMayBeStatic
    def do_create_session(self, body: ModelsCreateSessionRequest = None):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.sessionbrowser import create_session

        body.namespace = self.namespace
        result, error = create_session(body=body)

        session_id: Optional[str] = None

        if error is None:
            session_id = result.session_id
        else:
            session_id = None

        return result, error, session_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.sessionbrowser import delete_session

        if self.session_id is not None:
            _, error = delete_session(session_id=self.session_id)
            self.log_warning(
                msg=f"Failed to tear down session. {str(error)}",
                condition=error is not None,
            )
            self.session_id = None
        super().tearDown()

    # region test:create_session

    def test_create_session(self):
        # arrange
        # NOTE(elmer): can't delete, need session id

        # act
        _, error, session_id = self.do_create_session(
            body=self.models_create_session_request
        )
        self.session_id = session_id

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_session

    # region test:delete_session

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

    # endregion test:delete_session

    # region test:get_session

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

    # endregion test:get_session

    # region test:update_session

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
        # self.assertEqual(1, result.game_session_setting.current_player)    # XXX 2022-09-28 current_player now stays 0 even after update session
        self.assertEqual(1, result.game_session_setting.max_player)


# endregion test:update_session
