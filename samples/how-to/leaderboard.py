# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_leaderboard():
    from accelbyte_py_sdk.api.leaderboard import create_leaderboard_configuration_admin_v1
    from accelbyte_py_sdk.api.leaderboard.models import ModelsLeaderboardConfigReq
    from accelbyte_py_sdk.api.leaderboard.models import ModelsDailyConfig
    from accelbyte_py_sdk.api.leaderboard.models import ModelsMonthlyConfig
    from accelbyte_py_sdk.api.leaderboard.models import ModelsWeeklyConfig

    result, error = create_leaderboard_configuration_admin_v1(
        body=ModelsLeaderboardConfigReq.create(
            daily=ModelsDailyConfig.create(
                reset_time="<reset-time>"
            ),
            descending=True,
            icon_url="<icon-url>",
            leaderboard_code="<leaderboard_code>",
            monthly=ModelsMonthlyConfig.create(
                reset_date=1,
                reset_time="<reset-time>"
            ),
            name="<name>",
            season_period=1,
            start_time="<start-time>",
            stat_code="<stat-code>",
            weekly=ModelsWeeklyConfig.create(
                reset_day=1,
                reset_time="<reset-time>"
            )
        )
    )
    if error:
        print(error)


def example_delete_leaderboard():
    from accelbyte_py_sdk.api.leaderboard import delete_leaderboard_configuration_admin_v1

    result, error = delete_leaderboard_configuration_admin_v1(
        leaderboard_code="<leaderboard_code>"
    )
    if error:
        print(error)


def example_get_leaderboard():
    from accelbyte_py_sdk.api.leaderboard import get_leaderboard_configuration_admin_v1

    result, error = get_leaderboard_configuration_admin_v1(
        leaderboard_code="<leaderboard_code>"
    )
    if error:
        print(error)


def example_update_leaderboard():
    from accelbyte_py_sdk.api.leaderboard import update_leaderboard_configuration_admin_v1
    from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateLeaderboardConfigReq
    from accelbyte_py_sdk.api.leaderboard.models import ModelsDailyConfig
    from accelbyte_py_sdk.api.leaderboard.models import ModelsMonthlyConfig
    from accelbyte_py_sdk.api.leaderboard.models import ModelsWeeklyConfig

    result, error = update_leaderboard_configuration_admin_v1(
        body=ModelsUpdateLeaderboardConfigReq.create(
            daily=ModelsDailyConfig.create(
                reset_time="<reset-time>"
            ),
            descending=True,
            icon_url="<icon-url>",
            monthly=ModelsMonthlyConfig.create(
                reset_date=1,
                reset_time="<reset-time>"
            ),
            name="<name>",
            season_period=1,
            start_time="<start-time>",
            stat_code="<stat-code>",
            weekly=ModelsWeeklyConfig.create(
                reset_day=1,
                reset_time="<reset-time>"
            )
        ),
        leaderboard_code="<leaderboard_code>"
    )
    if error:
        print(error)
