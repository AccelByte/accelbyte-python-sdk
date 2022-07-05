from random import randint
from datetime import datetime

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.leaderboard.models import ModelsDailyConfig
from accelbyte_py_sdk.api.leaderboard.models import ModelsLeaderboardConfigReq
from accelbyte_py_sdk.api.leaderboard.models import ModelsMonthlyConfig
from accelbyte_py_sdk.api.leaderboard.models import ModelsWeeklyConfig


class LeaderboardTestCase(IntegrationTestCase):

    leaderboard_code: str = ""
    reset_date: int = 1  # Reset Date must be a number 1 - 31. Default is 1.
    reset_day: int = 0  # Sunday
    reset_time: str = "23:59"
    season_period: int = 32  # Season Period must be greater than 31 days.
    start_time: str = f"{datetime.utcnow().year + 1}-01-01T00:00:00.00Z"
    models_leaderboard_config_req = ModelsLeaderboardConfigReq.create(
        daily=ModelsDailyConfig.create(reset_time=reset_time),
        descending=True,
        icon_url="",
        leaderboard_code="",
        monthly=ModelsMonthlyConfig.create(
            reset_date=reset_date, reset_time=reset_time
        ),
        name="LEADERBOARD",
        season_period=season_period,
        start_time=start_time,
        stat_code="STAT_CODE",
        weekly=ModelsWeeklyConfig.create(reset_day=reset_day, reset_time=reset_time),
    )

    def init_leaderboard_config(self):
        self.leaderboard_code = f"ldrbrd{str(randint(0, 1_000_000)).rjust(7, '0')}"
        self.models_leaderboard_config_req.leaderboard_code = self.leaderboard_code

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.leaderboard import (
            delete_leaderboard_configuration_admin_v1,
        )

        _, error = delete_leaderboard_configuration_admin_v1(
            leaderboard_code=self.leaderboard_code
        )
        self.log_warning(
            msg=f"Failed to tear down leaderboard. {str(error)}",
            condition=error is not None,
        )
        super().tearDown()

    def test_create_leaderboard_configuration_admin_v1(self):
        from accelbyte_py_sdk.api.leaderboard import (
            create_leaderboard_configuration_admin_v1,
        )

        # arrange
        self.init_leaderboard_config()

        # act
        _, error = create_leaderboard_configuration_admin_v1(
            body=self.models_leaderboard_config_req
        )

        # assert
        self.assertIsNone(error, error)

    def test_delete_leaderboard_configuration_admin_v1(self):
        from accelbyte_py_sdk.api.leaderboard import (
            create_leaderboard_configuration_admin_v1,
        )
        from accelbyte_py_sdk.api.leaderboard import (
            delete_leaderboard_configuration_admin_v1,
        )

        # arrange
        self.init_leaderboard_config()
        _, error = create_leaderboard_configuration_admin_v1(
            body=self.models_leaderboard_config_req
        )
        self.assertIsNone(error, error)

        # act
        _, error = delete_leaderboard_configuration_admin_v1(
            leaderboard_code=self.models_leaderboard_config_req.leaderboard_code
        )

        # assert
        self.assertIsNone(error, error)

    def test_get_leaderboard_configuration_admin_v1(self):
        from accelbyte_py_sdk.api.leaderboard import (
            create_leaderboard_configuration_admin_v1,
        )
        from accelbyte_py_sdk.api.leaderboard import (
            get_leaderboard_configuration_admin_v1,
        )

        # arrange
        self.init_leaderboard_config()
        _, error = create_leaderboard_configuration_admin_v1(
            body=self.models_leaderboard_config_req
        )
        self.assertIsNone(error, error)

        # act
        _, error = get_leaderboard_configuration_admin_v1(
            leaderboard_code=self.models_leaderboard_config_req.leaderboard_code
        )

        # assert
        self.assertIsNone(error, error)

    def test_update_user(self):
        from accelbyte_py_sdk.api.leaderboard import (
            create_leaderboard_configuration_admin_v1,
        )
        from accelbyte_py_sdk.api.leaderboard import (
            update_leaderboard_configuration_admin_v1,
        )
        from accelbyte_py_sdk.api.leaderboard.models import (
            ModelsGetLeaderboardConfigResp,
        )
        from accelbyte_py_sdk.api.leaderboard.models import (
            ModelsUpdateLeaderboardConfigReq,
        )

        # arrange
        self.init_leaderboard_config()
        _, error = create_leaderboard_configuration_admin_v1(
            body=self.models_leaderboard_config_req
        )
        self.assertIsNone(error, error)

        # act
        result, error = update_leaderboard_configuration_admin_v1(
            body=ModelsUpdateLeaderboardConfigReq.create(
                daily=self.models_leaderboard_config_req.daily,
                descending=self.models_leaderboard_config_req.descending,
                icon_url=self.models_leaderboard_config_req.icon_url,
                monthly=self.models_leaderboard_config_req.monthly,
                name=self.models_leaderboard_config_req.name,
                season_period=self.models_leaderboard_config_req.season_period,
                start_time=self.models_leaderboard_config_req.start_time,
                stat_code="KODE_STATUS",
                weekly=self.models_leaderboard_config_req.weekly,
            ),
            leaderboard_code=self.models_leaderboard_config_req.leaderboard_code,
        )

        # assert
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, ModelsGetLeaderboardConfigResp)
        self.assertEqual(result.stat_code, "KODE_STATUS")
