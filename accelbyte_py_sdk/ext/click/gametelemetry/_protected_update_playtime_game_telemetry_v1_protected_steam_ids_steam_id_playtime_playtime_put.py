import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.gametelemetry import protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put as protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal
from ....api.gametelemetry.models import HTTPValidationError


@click.command()
@click.argument("steam_id", type=str)
@click.argument("playtime", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
        steam_id: str,
        playtime: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal.__doc__)
    result, error = protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal(
        steam_id=steam_id,
        playtime=playtime,
    )
    if error:
        raise Exception(f"protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put failed: {str(error)}")
    click.echo("protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put success")
