# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Seasonpass Service (1.18.1)

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
from accelbyte_py_sdk.api.seasonpass import (
    query_user_exp_grant_history as query_user_exp_grant_history_internal,
)
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import ExpGrantHistoryPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--from", "from_", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--season_id", "season_id", type=str)
@click.option("--source", "source", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--to", "to", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def query_user_exp_grant_history(
    user_id: str,
    from_: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    season_id: Optional[str] = None,
    source: Optional[str] = None,
    tags: Optional[str] = None,
    to: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_user_exp_grant_history_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if tags is not None:
        try:
            tags_json = json.loads(tags)
            tags = [str(i0) for i0 in tags_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'tags'. {str(e)}") from e
    result, error = query_user_exp_grant_history_internal(
        user_id=user_id,
        from_=from_,
        limit=limit,
        offset=offset,
        season_id=season_id,
        source=source,
        tags=tags,
        to=to,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"queryUserExpGrantHistory failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


query_user_exp_grant_history.operation_id = "queryUserExpGrantHistory"
query_user_exp_grant_history.is_deprecated = False
