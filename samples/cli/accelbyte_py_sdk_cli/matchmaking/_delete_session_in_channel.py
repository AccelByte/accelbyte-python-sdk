# Justice Matchmaking Service (2.12.0)

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
from accelbyte_py_sdk.api.matchmaking import delete_session_in_channel as delete_session_in_channel_internal
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1


@click.command()
@click.argument("channel_name", type=str)
@click.argument("match_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_session_in_channel(
        channel_name: str,
        match_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_session_in_channel_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_session_in_channel_internal(
        channel_name=channel_name,
        match_id=match_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteSessionInChannel failed: {str(error)}")
    click.echo("DeleteSessionInChannel success")