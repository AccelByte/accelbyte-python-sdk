from typing import Optional
from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordRequest


class CloudSaveTestCase(IntegrationTestCase):
    post_game_record_handler_key: str = "key"
    post_player_record_handler_key: str = "key"
    models_game_record_request: ModelsGameRecordRequest = (
        ModelsGameRecordRequest.create(dict_={"foo": "bar"})
    )
    models_player_record_request: models_game_record_request = (
        ModelsPlayerRecordRequest.create(dict_={"foo": "bar"})
    )

    user_id: Optional[str] = None

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1

        _, error = delete_game_record_handler_v1(key=self.post_game_record_handler_key)
        self.log_warning(
            msg=f"Failed to tear down game record handler. {str(error)}",
            condition=error is not None,
        )

        super().tearDown()

    # region test:delete_game_record_handler_v1

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

    # endregion test:delete_game_record_handler_v1

    # region test:get_game_record_handler_v1

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

    # endregion test:get_game_record_handler_v1

    # region test:post_game_record_handler_v1

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

    # endregion test:post_game_record_handler_v1

    # region test:put_game_record_handler_v1

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

    # endregion test:put_game_record_handler_v1

    # region test:delete_player_record_handler_v1

    def test_delete_player_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import delete_player_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1

        self.user_id = self.get_user_id()

        # arrange
        _, error = post_player_record_handler_v1(
            body=self.models_player_record_request,
            key=self.post_player_record_handler_key,
            user_id=self.user_id,
        )
        self.log_warning(
            msg=f"Failed to set up player record handler. {str(error)}",
            condition=error is not None,
        )

        # act
        _, error = delete_player_record_handler_v1(
            key=self.post_player_record_handler_key, user_id=self.user_id
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:delete_player_record_handler_v1

    # region test:create_player_record_handler_v1

    def test_create_player_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1

        self.user_id = self.get_user_id()

        # act
        _, error = post_player_record_handler_v1(
            body=self.models_player_record_request,
            key=self.post_player_record_handler_key,
            user_id=self.user_id,
        )
        self.log_warning(
            msg=f"Failed to set up player record handler. {str(error)}",
            condition=error is not None,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:post_player_record_handler_v1

    # region test:get_player_record_handler_v1

    def test_get_player_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import get_player_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1

        self.user_id = self.get_user_id()

        # arrange
        _, error = post_player_record_handler_v1(
            body=self.models_player_record_request,
            key=self.post_player_record_handler_key,
            user_id=self.user_id,
        )
        self.log_warning(
            msg=f"Failed to set up player record handler. {str(error)}",
            condition=error is not None,
        )

        # act
        _, error = get_player_record_handler_v1(
            key=self.post_player_record_handler_key, user_id=self.user_id
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_player_record_handler_v1

    # region test:put_player_record_handler_v1

    def test_put_player_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import get_player_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import post_player_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import put_player_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordRequest
        from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordResponse

        self.user_id = self.get_user_id()

        # arrange
        _, error = post_player_record_handler_v1(
            body=self.models_player_record_request,
            key=self.post_player_record_handler_key,
            user_id=self.user_id,
        )
        self.log_warning(
            msg=f"Failed to set up player record handler. {str(error)}",
            condition=error is not None,
        )

        # act
        _, error = put_player_record_handler_v1(
            body=ModelsPlayerRecordRequest.create(dict_={"foo": "baz"}),
            key=self.post_player_record_handler_key,
            user_id=self.user_id,
        )

        # assert
        self.assertIsNone(error, error)

        result, error = get_player_record_handler_v1(
            key=self.post_player_record_handler_key, user_id=self.user_id
        )
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsPlayerRecordResponse)
        self.assertIsNotNone(result.value)
        self.assertIn("foo", result.value)
        self.assertEqual("baz", result.value["foo"])

    # endregion test:put_player_record_handler_v1

    # end of file
