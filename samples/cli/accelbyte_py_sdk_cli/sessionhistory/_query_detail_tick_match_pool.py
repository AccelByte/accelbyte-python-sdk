# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Session History Service

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
from accelbyte_py_sdk.api.sessionhistory import (
    query_detail_tick_match_pool as query_detail_tick_match_pool_internal,
)
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchPoolPodTickQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError


@click.command()
@click.argument("pod_name", type=str)
@click.argument("pool_name", type=str)
@click.argument("end_date", type=str)
@click.argument("start_date", type=str)
@click.option("--all", "all", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def query_detail_tick_match_pool(
    pod_name: str,
    pool_name: str,
    end_date: str,
    start_date: str,
    all: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_detail_tick_match_pool_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = query_detail_tick_match_pool_internal(
        pod_name=pod_name,
        pool_name=pool_name,
        end_date=end_date,
        start_date=start_date,
        all=all,
        limit=limit,
        offset=offset,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"queryDetailTickMatchPool failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


query_detail_tick_match_pool.operation_id = "queryDetailTickMatchPool"
query_detail_tick_match_pool.is_deprecated = False
