# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Session Service (2.22.2)

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
from accelbyte_py_sdk.api.session import (
    admin_query_game_sessions as admin_query_game_sessions_internal,
)
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError


@click.command()
@click.option("--configuration_name", "configuration_name", type=str)
@click.option("--ds_pod_name", "ds_pod_name", type=str)
@click.option("--from_time", "from_time", type=str)
@click.option("--game_mode", "game_mode", type=str)
@click.option("--is_persistent", "is_persistent", type=str)
@click.option("--is_soft_deleted", "is_soft_deleted", type=str)
@click.option("--joinability", "joinability", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--match_pool", "match_pool", type=str)
@click.option("--member_id", "member_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--order", "order", type=str)
@click.option("--order_by", "order_by", type=str)
@click.option("--session_id", "session_id", type=str)
@click.option("--status", "status", type=str)
@click.option("--status_v2", "status_v2", type=str)
@click.option("--to_time", "to_time", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_query_game_sessions(
    configuration_name: Optional[str] = None,
    ds_pod_name: Optional[str] = None,
    from_time: Optional[str] = None,
    game_mode: Optional[str] = None,
    is_persistent: Optional[str] = None,
    is_soft_deleted: Optional[str] = None,
    joinability: Optional[str] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    member_id: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    session_id: Optional[str] = None,
    status: Optional[str] = None,
    status_v2: Optional[str] = None,
    to_time: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_query_game_sessions_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = admin_query_game_sessions_internal(
        configuration_name=configuration_name,
        ds_pod_name=ds_pod_name,
        from_time=from_time,
        game_mode=game_mode,
        is_persistent=is_persistent,
        is_soft_deleted=is_soft_deleted,
        joinability=joinability,
        limit=limit,
        match_pool=match_pool,
        member_id=member_id,
        offset=offset,
        order=order,
        order_by=order_by,
        session_id=session_id,
        status=status,
        status_v2=status_v2,
        to_time=to_time,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"adminQueryGameSessions failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_query_game_sessions.operation_id = "adminQueryGameSessions"
admin_query_game_sessions.is_deprecated = False
