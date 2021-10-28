import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import public_get_player_blocked_players_v1 as public_get_player_blocked_players_v1_internal
from ....api.lobby.models import ModelsGetAllPlayerBlockedUsersResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_player_blocked_players_v1(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_player_blocked_players_v1_internal.__doc__)
    result, error = public_get_player_blocked_players_v1_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetPlayerBlockedPlayersV1 failed: {str(error)}")
    click.echo("publicGetPlayerBlockedPlayersV1 success")
