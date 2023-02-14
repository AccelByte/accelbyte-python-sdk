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

    # region test:export_stat

    def test_export_stats(self):
        from pathlib import Path
        from accelbyte_py_sdk.api.social import export_stats

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = export_stats()

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:export_stat

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

    # end of file
