import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.gametelemetry import protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get as protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_internal
from ....api.gametelemetry.models import HTTPValidationError


@click.command()
@click.argument("steam_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(
        steam_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_internal.__doc__)
    result, error = protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_internal(
        steam_id=steam_id,
    )
    if error:
        raise Exception(f"protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get failed: {str(error)}")
    click.echo("protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get success")
