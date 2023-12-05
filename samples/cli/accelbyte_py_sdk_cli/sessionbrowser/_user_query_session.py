# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Session Browser Service (1.16.3)

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
from accelbyte_py_sdk.api.sessionbrowser import (
    user_query_session as user_query_session_internal,
)
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionQueryResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError


@click.command()
@click.argument("session_type", type=str)
@click.option("--game_mode", "game_mode", type=str)
@click.option("--game_version", "game_version", type=str)
@click.option("--joinable", "joinable", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--match_exist", "match_exist", type=str)
@click.option("--match_id", "match_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--server_status", "server_status", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def user_query_session(
    session_type: str,
    game_mode: Optional[str] = None,
    game_version: Optional[str] = None,
    joinable: Optional[str] = None,
    limit: Optional[int] = None,
    match_exist: Optional[str] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(user_query_session_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = user_query_session_internal(
        session_type=session_type,
        game_mode=game_mode,
        game_version=game_version,
        joinable=joinable,
        limit=limit,
        match_exist=match_exist,
        match_id=match_id,
        offset=offset,
        server_status=server_status,
        user_id=user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"UserQuerySession failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


user_query_session.operation_id = "UserQuerySession"
user_query_session.is_deprecated = False
