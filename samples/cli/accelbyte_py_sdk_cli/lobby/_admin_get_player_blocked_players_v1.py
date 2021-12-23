# justice-lobby-server (staging)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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
from accelbyte_py_sdk.api.lobby import admin_get_player_blocked_players_v1 as admin_get_player_blocked_players_v1_internal
from accelbyte_py_sdk.api.lobby.models import ModelsGetAllPlayerBlockedUsersResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_get_player_blocked_players_v1(
        user_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_player_blocked_players_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_get_player_blocked_players_v1_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetPlayerBlockedPlayersV1 failed: {str(error)}")
    click.echo("adminGetPlayerBlockedPlayersV1 success")
