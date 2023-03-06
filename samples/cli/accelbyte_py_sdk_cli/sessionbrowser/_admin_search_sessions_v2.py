# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Session Browser Service ()

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
    admin_search_sessions_v2 as admin_search_sessions_v2_internal,
)
from accelbyte_py_sdk.api.sessionbrowser.models import (
    ModelsGetSessionHistorySearchResponseV2,
)
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorV1


@click.command()
@click.argument("limit", type=int)
@click.argument("offset", type=int)
@click.option("--channel", "channel", type=str)
@click.option("--deleted", "deleted", type=bool)
@click.option("--match_id", "match_id", type=str)
@click.option("--party_id", "party_id", type=str)
@click.option("--session_type", "session_type", type=str)
@click.option("--status", "status", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_search_sessions_v2(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    session_type: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_search_sessions_v2_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = admin_search_sessions_v2_internal(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        session_type=session_type,
        status=status,
        user_id=user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AdminSearchSessionsV2 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_search_sessions_v2.operation_id = "AdminSearchSessionsV2"
admin_search_sessions_v2.is_deprecated = False
