from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordRequest


class CloudSaveTestCase(IntegrationTestCase):

    post_game_record_handler_key: str = "key"
    models_game_record_request: ModelsGameRecordRequest = ModelsGameRecordRequest.create(dict_={"foo": "bar"})

    def setUp(self) -> None:
        from accelbyte_py_sdk.services.auth import login_user

        super().setUp()
        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1

        _, _ = delete_game_record_handler_v1(key=self.post_game_record_handler_key)
        super().tearDown()

    def test_delete_game_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import delete_game_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

        # arrange
        _, error = post_game_record_handler_v1(
            body=self.models_game_record_request,
            key=self.post_game_record_handler_key
        )
        self.assertIsNone(error, error)

        # act
        _, error = delete_game_record_handler_v1(key=self.post_game_record_handler_key)

        # assert
        self.assertIsNone(error, error)

        _, error = get_game_record_handler_v1(key=self.post_game_record_handler_key)
        self.assertIsNotNone(error)

    def test_get_game_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

        # arrange
        _, error = post_game_record_handler_v1(
            body=self.models_game_record_request,
            key=self.post_game_record_handler_key
        )
        self.assertIsNone(error, error)

        # act
        _, error = get_game_record_handler_v1(key=self.post_game_record_handler_key)

        # assert
        self.assertIsNone(error, error)

    def test_post_game_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1

        # arrange

        # act
        _, error = post_game_record_handler_v1(
            body=self.models_game_record_request,
            key=self.post_game_record_handler_key
        )

        # assert
        self.assertIsNone(error, error)

    def test_put_game_record_handler_v1(self):
        from accelbyte_py_sdk.api.cloudsave import get_game_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave import put_game_record_handler_v1
        from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecord

        # arrange
        _, error = post_game_record_handler_v1(
            body=self.models_game_record_request,
            key=self.post_game_record_handler_key
        )
        self.assertIsNone(error, error)

        # act
        _, error = put_game_record_handler_v1(
            body=ModelsGameRecordRequest.create(
                dict_={"foo": "baz"}
            ),
            key=self.post_game_record_handler_key
        )

        # assert
        self.assertIsNone(error, error)

        result, error = get_game_record_handler_v1(key=self.post_game_record_handler_key)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGameRecord)
        self.assertIsNotNone(result.value)
        self.assertIn("foo", result.value)
        self.assertEqual("baz", result.value["foo"])