from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.social.models import StatCreate


class SocialTestCase(IntegrationTestCase):
    exist: bool = False
    exported_filename: str = "export_stat"
    stat_create: StatCreate = StatCreate.create(
        default_value=0, name="STAT", set_by="SERVER", stat_code="stat"
    )

    def tearDown(self) -> None:
        from pathlib import Path
        from accelbyte_py_sdk.api.social import delete_stat

        if self.exist:
            _, error = delete_stat(stat_code=self.stat_create.stat_code)
            self.log_warning(
                msg=f"Failed to tear down stat. {str(error)}",
                condition=error is not None,
            )
            self.exist = error is not None

        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # region test:create_stat

    def test_create_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import delete_stat

        # arrange
        _, error = delete_stat(stat_code=self.stat_create.stat_code)
        self.exist = error is not None

        # act
        _, error = create_stat(body=self.stat_create)
        self.exist = error is None

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_stat

    # region test:delete_stat

    def test_delete_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import delete_stat

        # arrange
        _, error = create_stat(body=self.stat_create)
        self.log_warning(
            msg=f"Failed to set up stat. {str(error)}", condition=error is not None
        )
        self.exist = error is None

        # act
        _, error = delete_stat(stat_code=self.stat_create.stat_code)
        self.exist = error is not None

        # assert
        self.assertIsNone(error, error)

    # endregion test:delete_stat

    # region test:export_import_stat

    def test_export_import_stats(self):
        from pathlib import Path
        from accelbyte_py_sdk.api.social import export_stats
        from accelbyte_py_sdk.api.social import import_stats

        # arrange 1
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act 1
        result, error = export_stats()

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert 1
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

        # arrange 2

        # act 2
        with open(file=str(exported_file_path)) as file:
            result, error = import_stats(file=file)

        # assert 3
        self.assertIsNone(error, error)

    # endregion test:export_import_stat

    # region test:get_stat

    def test_get_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import get_stat

        # arrange
        _, error = create_stat(body=self.stat_create)
        self.log_warning(
            msg=f"Failed to set up stat. {str(error)}", condition=error is not None
        )
        self.exist = error is None

        # act
        _, error = get_stat(stat_code=self.stat_create.stat_code)

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_stat

    # region test:get_stats

    def test_get_stats(self):
        from accelbyte_py_sdk.api.social import get_stats

        # arrange

        # act
        result, error = get_stats()

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_stats

    # region test:query_stats

    def test_query_stats(self):
        from accelbyte_py_sdk.api.social import query_stats

        # arrange

        # act
        result, error = query_stats(keyword="stat")

        # assert
        self.assertIsNone(error, error)

    # endregion test:query_stats

    # region test:update_stat

    def test_update_stat(self):
        from accelbyte_py_sdk.api.social import create_stat
        from accelbyte_py_sdk.api.social import update_stat
        from accelbyte_py_sdk.api.social.models import StatInfo
        from accelbyte_py_sdk.api.social.models import StatUpdate

        # arrange
        _, error = create_stat(body=self.stat_create)
        self.log_warning(
            msg=f"Failed to set up stat. {str(error)}", condition=error is not None
        )
        self.exist = error is None

        # act
        result, error = update_stat(
            stat_code=self.stat_create.stat_code,
            body=StatUpdate.create(name="KODE_STATUS"),
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, StatInfo)
        self.assertIsNotNone(result.name)
        self.assertEqual("KODE_STATUS", result.name)

    # endregion test:update_stat

    # region test:test_user_stat

    def test_user_stat(self):
        from accelbyte_py_sdk.api.social import (
            create_stat,
            get_stat,
            delete_tied_stat,
        )
        from accelbyte_py_sdk.api.social import (
            create_user_stat_item,
            delete_user_stat_items,
            get_user_stat_items,
            inc_user_stat_item_value,
        )
        from accelbyte_py_sdk.api.social.models import StatItemInc

        # arrange
        self.exist = False
        _, error = get_stat(stat_code=self.stat_create.stat_code)
        if error:
            _, error = create_stat(body=self.stat_create)
            self.exist = error is not None
        else:
            self.exist = True

        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if not self.exist:
            self.skipTest(reason=f"Failed to set up stat.")
        # DOC-REDACT(end)

        user_id = self.get_user_id()

        # clean-up
        _, _ = delete_user_stat_items(
            stat_code=self.stat_create.stat_code,
            user_id=user_id,
        )

        # act (create_user_stat_item)
        _, error = create_user_stat_item(
            stat_code=self.stat_create.stat_code,
            user_id=user_id,
        )

        # assert (create_user_stat_item)
        self.assertIsNone(error, error)

        # act (get_user_stat_items)
        result, error = get_user_stat_items(user_id=user_id)

        # assert (get_user_stat_items)
        self.assertIsNone(error, error)
        self.assertGreater(len(result.data), 0)
        self.assertTrue(
            any(item.stat_code == self.stat_create.stat_code for item in result.data)
        )

        # act (inc_user_stat_item_value)
        result, error = inc_user_stat_item_value(
            body=StatItemInc.create(inc=1),
            stat_code=self.stat_create.stat_code,
            user_id=user_id,
        )

        # assert (inc_user_stat_item_value)
        self.assertIsNone(error, error)

        # act (delete_user_stat_items)
        _, error = delete_user_stat_items(
            stat_code=self.stat_create.stat_code,
            user_id=user_id,
        )

        # assert (delete_user_stat_items)
        self.assertIsNone(error, error)

        # clean-up
        _, error = delete_tied_stat(stat_code=self.stat_create.stat_code)
        if error:
            self.log_warning(msg=f"Failed to tear down tied stat. {error}")
        else:
            self.exist = False

    # endregion test:test_user_stat

    # end of file
