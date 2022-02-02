# justice-session-browser-service ()

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
from accelbyte_py_sdk.api.sessionbrowser import get_active_custom_game_sessions as get_active_custom_game_sessions_internal
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsActiveCustomGameResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2


@click.command()
@click.option("--server_region", "server_region", type=str)
@click.option("--session_id", "session_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def get_active_custom_game_sessions(
        server_region: Optional[str] = None,
        session_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_active_custom_game_sessions_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    _, error = get_active_custom_game_sessions_internal(
        server_region=server_region,
        session_id=session_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"GetActiveCustomGameSessions failed: {str(error)}")
    click.echo("GetActiveCustomGameSessions success")
