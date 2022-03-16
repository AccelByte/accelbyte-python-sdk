from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.platform.models import StoreCreate


class PlatformTestCase(IntegrationTestCase):

    store_id: Optional[str] = None
    store_create: StoreCreate = StoreCreate.create(
        title="Python Server SDK Store"
    )

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.platform import delete_store

        if self.store_id is not None:
            _, e = delete_store(store_id=self.store_id)
            self.store_id = None
        super().tearDown()

    def test_create_store(self):
        from accelbyte_py_sdk.api.platform import create_store
        from accelbyte_py_sdk.api.platform import list_stores
        from accelbyte_py_sdk.api.platform.models import StoreInfo

        # arrange
        result, error = list_stores()

        # act
        result, error = create_store(body=self.store_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StoreInfo)
        self.assertIsNotNone(result.store_id)

        self.store_id = result.store_id

        # assert
        self.assertIsNone(error, error)

    def test_delete_store(self):
        from accelbyte_py_sdk.api.platform import create_store
        from accelbyte_py_sdk.api.platform import delete_store
        from accelbyte_py_sdk.api.platform.models import StoreInfo

        # arrange
        result, error = create_store(body=self.store_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StoreInfo)
        self.assertIsNotNone(result.store_id)

        self.store_id = result.store_id

        # act
        _, error = delete_store(store_id=self.store_id)

        # assert
        self.assertIsNone(error, error)

        self.store_id = None

    def test_get_store(self):
        from accelbyte_py_sdk.api.platform import create_store
        from accelbyte_py_sdk.api.platform import get_store
        from accelbyte_py_sdk.api.platform.models import StoreInfo

        # arrange
        result, error = create_store(body=self.store_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StoreInfo)
        self.assertIsNotNone(result.store_id)

        self.store_id = result.store_id

        # act
        _, error = get_store(store_id=self.store_id)

        # assert
        self.assertIsNone(error, error)

    def test_update_store(self):
        from accelbyte_py_sdk.api.platform import create_store
        from accelbyte_py_sdk.api.platform import update_store
        from accelbyte_py_sdk.api.platform.models import StoreInfo
        from accelbyte_py_sdk.api.platform.models import StoreUpdate

        # arrange
        result, error = create_store(body=self.store_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StoreInfo)
        self.assertIsNotNone(result.store_id)

        self.store_id = result.store_id

        # act
        result, error = update_store(
            store_id=self.store_id,
            body=StoreUpdate.create(
                title="JUDUL"
            )
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StoreInfo)
        self.assertIsNotNone(result.title)
        self.assertEqual("JUDUL", result.title)
