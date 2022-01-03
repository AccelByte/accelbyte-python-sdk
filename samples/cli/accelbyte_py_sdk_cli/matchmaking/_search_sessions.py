# Justice Matchmaking Service (2.12.1)

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
from accelbyte_py_sdk.api.matchmaking import search_sessions as search_sessions_internal
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1
from accelbyte_py_sdk.api.matchmaking.models import ServiceGetSessionHistorySearchResponse


@click.command()
@click.argument("limit", type=float)
@click.argument("offset", type=float)
@click.option("--channel", "channel", type=str)
@click.option("--deleted", "deleted", type=bool)
@click.option("--match_id", "match_id", type=str)
@click.option("--party_id", "party_id", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def search_sessions(
        limit: float,
        offset: float,
        channel: Optional[str] = None,
        deleted: Optional[bool] = None,
        match_id: Optional[str] = None,
        party_id: Optional[str] = None,
        user_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(search_sessions_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = search_sessions_internal(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"SearchSessions failed: {str(error)}")
    click.echo("SearchSessions success")
