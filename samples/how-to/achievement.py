# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_achievement():
    from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
    from accelbyte_py_sdk.api.achievement.models import ModelsAchievementRequest
    from accelbyte_py_sdk.api.achievement.models import ModelsIcon

    result, error = admin_create_new_achievement(
        body=ModelsAchievementRequest.create(
            achievement_code="<your-achievement-code>",
            default_language="<your-default-language>",
            description={"<your-description-key>": "<your-description-value>"},
            goal_value=420,
            hidden=False,
            incremental=True,
            locked_icons=[
                ModelsIcon.create(slug="<your-icon-slug>", url="<your-icon-url>")
            ],
            name={"<your-name-key>": "<your-name-value>"},
            stat_code="<your-stat-code>",
            tags=["<your-tag>"],
            unlocked_icons=[
                ModelsIcon.create(slug="<your-icon-slug>", url="<your-icon-url>")
            ],
        )
    )
    if error:
        print(error)


def example_delete_achievement():
    from accelbyte_py_sdk.api.achievement import admin_delete_achievement

    result, error = admin_delete_achievement(achievement_code="<your-achievement-code>")
    if error:
        print(error)


def example_get_achievement():
    from accelbyte_py_sdk.api.achievement import admin_get_achievement

    result, error = admin_get_achievement(achievement_code="<your-achievement-code>")
    if error:
        print(error)


def example_get_all_achievement():
    from accelbyte_py_sdk.api.achievement import admin_list_achievements

    result, error = admin_list_achievements(limit=20, offset=0)
    if error:
        print(error)


def example_query_achievements_by_keyword():
    from accelbyte_py_sdk.api.achievement import admin_update_achievement
    from accelbyte_py_sdk.api.achievement.models import ModelsAchievementUpdateRequest
    from accelbyte_py_sdk.api.achievement.models import ModelsIcon

    result, error = admin_update_achievement(
        achievement_code="<your-achievement-code>",
        body=ModelsAchievementUpdateRequest.create(
            default_language="<your-default-language>",
            description={"<your-description-key>": "<your-description-value>"},
            goal_value=420,
            hidden=False,
            incremental=True,
            locked_icons=[
                ModelsIcon.create(slug="<your-icon-slug>", url="<your-icon-url>")
            ],
            name={"<your-name-key>": "<your-name-value>"},
            stat_code="<your-stat-code>",
            tags=["<your-tag>"],
            unlocked_icons=[
                ModelsIcon.create(slug="<your-icon-slug>", url="<your-icon-url>")
            ],
        ),
    )
    if error:
        print(error)
