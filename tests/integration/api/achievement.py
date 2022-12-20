from pathlib import Path

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.core import generate_id
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementRequest


class AchievementTestCase(IntegrationTestCase):

    exist: bool = False
    exported_filename: str = "export_achievements"
    stat_code: str = generate_id(8)
    models_achievement_request: ModelsAchievementRequest = (
        ModelsAchievementRequest.create(
            achievement_code=stat_code,
            default_language="EN",
            description={"EN": "DESCRIPTION"},
            goal_value=1,
            hidden=False,
            incremental=False,
            locked_icons=[],
            name={"EN": "NAME"},
            stat_code=stat_code.upper(),
            tags=["TAG"],
            unlocked_icons=[],
        )
    )

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.achievement import admin_delete_achievement

        if self.exist:
            _, error = admin_delete_achievement(
                achievement_code=self.models_achievement_request.achievement_code
            )
            self.log_warning(
                msg=f"Failed to tear down achievement. {str(error)}",
                condition=error is not None,
            )
            self.exist = error is not None

        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # region test:admin_create_new_achievement

    def test_admin_create_new_achievement(self):
        from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
        from accelbyte_py_sdk.api.achievement import admin_delete_achievement

        # arrange
        _, error = admin_delete_achievement(
            achievement_code=self.models_achievement_request.achievement_code
        )
        self.exist = error is not None

        # act
        result, error = admin_create_new_achievement(
            body=self.models_achievement_request
        )
        self.exist = error is None

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_create_new_achievement

    # region test:admin_delete_achievement

    def test_admin_delete_achievement(self):
        from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
        from accelbyte_py_sdk.api.achievement import admin_delete_achievement

        # arrange
        _, error = admin_create_new_achievement(body=self.models_achievement_request)
        self.log_warning(
            msg=f"Failed to set up achievement. {str(error)}",
            condition=error is not None,
        )
        self.exist = error is None

        # act
        result, error = admin_delete_achievement(
            achievement_code=self.models_achievement_request.achievement_code
        )
        self.exist = error is not None

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_delete_achievement

    # region test:admin_get_achievement

    def test_admin_get_achievement(self):
        from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
        from accelbyte_py_sdk.api.achievement import admin_get_achievement

        # arrange
        _, error = admin_create_new_achievement(body=self.models_achievement_request)
        self.log_warning(
            msg=f"Failed to set up achievement. {str(error)}",
            condition=error is not None,
        )
        self.exist = error is None

        # act
        _, error = admin_get_achievement(
            achievement_code=self.models_achievement_request.achievement_code
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_get_achievement

    # region test:export_achievements

    def test_export_achievements(self):
        from accelbyte_py_sdk.api.achievement import export_achievements

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = export_achievements()

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:export_achievements

    # region test:admin_list_achievements

    def test_admin_list_achievements(self):
        from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
        from accelbyte_py_sdk.api.achievement import admin_list_achievements

        # arrange
        _, error = admin_create_new_achievement(body=self.models_achievement_request)
        self.log_warning(
            msg=f"Failed to set up achievement. {str(error)}",
            condition=error is not None,
        )
        self.exist = error is None

        # act
        _, error = admin_list_achievements()

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_list_achievements

    # region test:admin_update_achievement

    def test_admin_update_achievement(self):
        from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
        from accelbyte_py_sdk.api.achievement import admin_update_achievement
        from accelbyte_py_sdk.api.achievement.models import (
            ModelsAchievementUpdateRequest,
        )

        # arrange
        _, error = admin_create_new_achievement(body=self.models_achievement_request)
        self.log_warning(
            msg=f"Failed to set up achievement. {str(error)}",
            condition=error is not None,
        )
        self.exist = error is None

        # act
        result, error = admin_update_achievement(
            achievement_code=self.models_achievement_request.achievement_code,
            body=ModelsAchievementUpdateRequest.create(
                default_language="ID",
                description={"ID": "KETERANGAN"},
                goal_value=1,
                hidden=False,
                incremental=False,
                locked_icons=[],
                name={"ID": "NAMA"},
                stat_code=self.stat_code[::-1],
                tags=["MENANDAI"],
                unlocked_icons=[],
            ),
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIn("ID", result.name)
        self.assertEqual("NAMA", result.name["ID"])

    # endregion test:admin_update_achievement

    # end of file
