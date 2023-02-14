from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest


class UGCTestCase(IntegrationTestCase):
    tag_id: Optional[str] = None
    models_create_tag_request: ModelsCreateTagRequest = ModelsCreateTagRequest.create(
        tag="TAG"
    )

    # noinspection PyMethodMayBeStatic
    def do_admin_create_tag(self, body: ModelsCreateTagRequest):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.ugc import admin_create_tag

        result, error = admin_create_tag(body=body)

        tag_id: Optional[str] = None

        if error is None:
            tag_id = result.id_
        else:
            tag_id = None

        return result, error, tag_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.ugc import admin_delete_tag

        if self.tag_id is not None:
            _, error = admin_delete_tag(tag_id=self.tag_id)
            self.log_warning(
                msg=f"Failed to tear tag. {str(error)}", condition=error is not None
            )
            self.tag_id = None
        super().tearDown()

    # region test:admin_create_tag

    def test_admin_create_tag(self):
        # arrange
        # NOTE(elmer): can't delete, need tag id

        # act
        _, error, tag_id = self.do_admin_create_tag(body=self.models_create_tag_request)
        self.tag_id = tag_id

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_create_tag

    # region test:admin_delete_tag

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

    # endregion test:admin_delete_tag

    # region test:admin_get_tag

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

    # endregion test:admin_get_tag

    # region test:admin_update_tag

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

    # endregion test:admin_update_tag

    # end of file
