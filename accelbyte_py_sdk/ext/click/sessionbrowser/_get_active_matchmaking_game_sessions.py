import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import get_active_matchmaking_game_sessions as get_active_matchmaking_game_sessions_internal
from ....api.sessionbrowser.models import ModelsActiveMatchmakingGameResponse
from ....api.sessionbrowser.models import RestapiErrorResponseV2


@click.command()
@click.option("--session_id", "session_id", type=str)
@click.option("--match_id", "match_id", type=str)
@click.option("--server_region", "server_region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_active_matchmaking_game_sessions(
        session_id: Optional[str] = None,
        match_id: Optional[str] = None,
        server_region: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_active_matchmaking_game_sessions_internal.__doc__)
    result, error = get_active_matchmaking_game_sessions_internal(
        session_id=session_id,
        match_id=match_id,
        server_region=server_region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetActiveMatchmakingGameSessions failed: {str(error)}")
    click.echo("GetActiveMatchmakingGameSessions success")
