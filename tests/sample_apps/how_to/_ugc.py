from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.ugc import admin_create_tag
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagResponse


class UGCTestCase(IntegrationTestCase):

    tag_id: Optional[str] = None

    models_create_tag_request: ModelsCreateTagRequest = ModelsCreateTagRequest.create(tag="TAG")

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.ugc import admin_delete_tag

        if self.tag_id is not None:
            _, _ = admin_delete_tag(tag_id=self.tag_id)
            self.tag_id = None
        super().tearDown()

    def test_create_tag(self):
        # arrange

        # act
        result, error = admin_create_tag(body=self.models_create_tag_request)

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsCreateTagResponse)
        self.assertIsNotNone(result.id_)

        self.tag_id = result.id_

    def test_delete_tag(self):
        from accelbyte_py_sdk.api.ugc import admin_delete_tag

        # arrange
        result, error = admin_create_tag(body=self.models_create_tag_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsCreateTagResponse)
        self.assertIsNotNone(result.id_)

        self.tag_id = result.id_

        # act
        _, error = admin_delete_tag(tag_id=self.tag_id)

        # assert
        self.assertIsNone(error, error)

        self.tag_id = None

    def test_get_tag(self):
        from accelbyte_py_sdk.api.ugc import admin_get_tag

        # arrange

        # act
        _, error = admin_get_tag()

        # assert
        self.assertIsNone(error, error)

    def test_update_tag(self):
        from accelbyte_py_sdk.api.ugc import admin_update_tag
        from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest

        # arrange
        result, error = admin_create_tag(body=self.models_create_tag_request)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsCreateTagResponse)
        self.assertIsNotNone(result.id_)

        self.tag_id = result.id_

        # act
        result, error = admin_update_tag(
            body=ModelsCreateTagRequest.create(tag="MENANDAI"),
            tag_id=self.tag_id
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsCreateTagResponse)
        self.assertIsNotNone(result.tag)
        self.assertEqual("MENANDAI", result.tag)
