from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.social.models import StatCreate


class SocialTestCase(IntegrationTestCase):

    stat_create: StatCreate = StatCreate.create(
        default_value=0,
        name="STAT",
        set_by="SERVER",
        stat_code="stat"
    )

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.social import delete_stat

        _, _ = delete_stat(stat_code=self.stat_create.stat_code)
        super().tearDown()

    def test_create_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import delete_stat

        # arrange
        _, _ = delete_stat(stat_code=self.stat_create.stat_code)

        # act
        _, error = create_stat(body=self.stat_create)

        # assert
        self.assertIsNone(error, error)

    def test_delete_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import delete_stat
        from accelbyte_py_sdk.api.social.models import StatInfo

        # arrange
        result, error = create_stat(body=self.stat_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StatInfo)
        self.assertIsNotNone(result.stat_code)

        self.stat_code = result.stat_code

        # act
        _, error = delete_stat(stat_code=self.stat_create.stat_code)

        # assert
        self.assertIsNone(error, error)

        self.stat_code = None

    def test_get_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import get_stat
        from accelbyte_py_sdk.api.social.models import StatInfo

        # arrange
        result, error = create_stat(body=self.stat_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StatInfo)
        self.assertIsNotNone(result.stat_code)

        self.stat_code = result.stat_code

        # act
        _, error = get_stat(stat_code=self.stat_create.stat_code)

        # assert
        self.assertIsNone(error, error)

    def test_update_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import update_stat
        from accelbyte_py_sdk.api.social.models import StatInfo
        from accelbyte_py_sdk.api.social.models import StatUpdate

        # arrange
        result, error = create_stat(body=self.stat_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StatInfo)
        self.assertIsNotNone(result.stat_code)

        self.stat_code = result.stat_code

        # act
        result, error = update_stat(
            stat_code=self.stat_create.stat_code,
            body=StatUpdate.create(
                name="KODE_STATUS"
            )
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StatInfo)
        self.assertIsNotNone(result.name)
        self.assertEqual("KODE_STATUS", result.name)
