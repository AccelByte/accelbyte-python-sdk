# Analytics Game Telemetry (0.0.1)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from accelbyte_py_sdk.api.gametelemetry import protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put as protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal
from accelbyte_py_sdk.api.gametelemetry.models import HTTPValidationError


@click.command()
@click.argument("playtime", type=str)
@click.argument("steam_id", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
        playtime: str,
        steam_id: str,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    _, error = protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_internal(
        playtime=playtime,
        steam_id=steam_id,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put failed: {str(error)}")
    click.echo("protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put success")
