# Analytics Game Telemetry (0.0.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.gametelemetry import protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put as protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal
from ....api.gametelemetry.models import HTTPValidationError


@click.command()
@click.argument("steam_id", type=str)
@click.argument("playtime", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
        steam_id: str,
        playtime: str,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal(
        steam_id=steam_id,
        playtime=playtime,
    )
    if error:
        raise Exception(f"protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put failed: {str(error)}")
    click.echo("protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put success")
