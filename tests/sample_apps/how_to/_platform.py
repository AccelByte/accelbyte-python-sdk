from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.platform.models import StoreCreate


class PlatformTestCase(IntegrationTestCase):

    did_delete_drafts: bool = False
    store_id: Optional[str] = None
    store_create: StoreCreate = StoreCreate.create(title="Python Server SDK Store")

    # noinspection PyMethodMayBeStatic
    def do_create_store(self, body: Optional[StoreCreate]):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.platform import create_store
        from accelbyte_py_sdk.api.platform import delete_store
        from accelbyte_py_sdk.api.platform import list_stores
        from accelbyte_py_sdk.api.platform.models import StoreInfo

        if not self.did_delete_drafts:
            stores_result, stores_error = list_stores()
            if stores_error is None and stores_result:
                for store_info in stores_result:
                    if not isinstance(store_info, StoreInfo) or store_info.published:
                        continue
                    _, delete_error = delete_store(store_id=store_info.store_id)
                    if delete_error is not None:
                        raise self.skipTest(
                            reason=f"Failed to delete unpublished (draft) store: {store_info.title} ({store_info.store_id})"
                        )
                    else:
                        self.log_info(
                            f"Deleted unpublished (draft) store: {store_info.title} ({store_info.store_id})"
                        )
            self.did_delete_drafts = True

        result, error = create_store(body=body)

        store_id: Optional[str] = None

        if error is None:
            store_id = result.store_id
        else:
            store_id = None

        return result, error, store_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.platform import delete_store

        if self.store_id is not None:
            _, error = delete_store(store_id=self.store_id)
            self.log_warning(
                msg=f"Failed to tear down store. {str(error)}",
                condition=error is not None,
            )
            self.store_id = None
        super().tearDown()

    # region test:create_store

    def test_create_store(self):
        # arrange
        # NOTE(elmer): can't delete, need store id

        # act
        _, error, store_id = self.do_create_store(body=self.store_create)
        self.store_id = store_id

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_store

    # region test:delete_store

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

    # endregion test:delete_store

    # region test:get_store

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

    # endregion test:get_store

    # region test:update_store

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


# endregion test:update_store
