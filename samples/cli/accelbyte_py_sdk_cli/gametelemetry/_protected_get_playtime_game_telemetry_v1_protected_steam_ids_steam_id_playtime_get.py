# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Analytics Game Telemetry (1.17.1)

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
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get as protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_internal,
)
from accelbyte_py_sdk.api.gametelemetry.models import HTTPValidationError


@click.command()
@click.argument("steam_id", type=str)
@click.option("--cookie", "cookie", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(
    steam_id: str,
    cookie: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(
            protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_internal.__doc__
        )
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    (
        result,
        error,
    ) = protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_internal(
        steam_id=steam_id,
        cookie=cookie,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(
            f"protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get failed: {str(error)}"
        )
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get.operation_id = (
    "protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get"
)
protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get.is_deprecated = (
    False
)
