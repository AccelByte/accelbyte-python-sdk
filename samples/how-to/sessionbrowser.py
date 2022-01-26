# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_session():
    from accelbyte_py_sdk.api.sessionbrowser import create_session
    from accelbyte_py_sdk.api.sessionbrowser.models import ModelsCreateSessionRequest
    from accelbyte_py_sdk.api.sessionbrowser.models import ModelsGameSessionSetting

    result, error = create_session(
        body=ModelsCreateSessionRequest.create(
            game_session_setting=ModelsGameSessionSetting.create(
                allow_join_in_progress=False,
                current_internal_player=0,
                current_player=0,
                map_name="<map-name>",
                max_internal_player=10,
                max_player=10,
                mode="<mode>",
                num_bot=0,
                password="",
                settings={}
            ),
            game_version="<game-version>",
            namespace="<namespace>",
            session_type="<session-type>",
            username="<username>"
        )
    )
    if error:
        print(error)


def example_delete_session():
    from accelbyte_py_sdk.api.sessionbrowser import delete_session

    result, error = delete_session(
        session_id="<session-id>"
    )
    if error:
        print(error)


def example_get_session():
    from accelbyte_py_sdk.api.sessionbrowser import get_session

    result, error = get_session(
        session_id="<session-id>"
    )
    if error:
        print(error)


def example_update_session():
    from accelbyte_py_sdk.api.sessionbrowser import update_session
    from accelbyte_py_sdk.api.sessionbrowser.models import ModelsUpdateSessionRequest

    result, error = update_session(
        body=ModelsUpdateSessionRequest.create(
            game_current_player=10,
            game_max_player=20
        ),
        session_id="<session-id>"
    )
    if error:
        print(error)
