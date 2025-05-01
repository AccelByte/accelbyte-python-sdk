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
    query_xray_timeline_by_user_id as query_xray_timeline_by_user_id_internal,
)
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsXRayTicketQueryResponse
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError


@click.command()
@click.argument("user_id", type=str)
@click.argument("end_date", type=str)
@click.argument("start_date", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--order", "order", type=str)
@click.option("--order_by", "order_by", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def query_xray_timeline_by_user_id(
    user_id: str,
    end_date: str,
    start_date: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_xray_timeline_by_user_id_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = query_xray_timeline_by_user_id_internal(
        user_id=user_id,
        end_date=end_date,
        start_date=start_date,
        limit=limit,
        offset=offset,
        order=order,
        order_by=order_by,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"queryXrayTimelineByUserID failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


query_xray_timeline_by_user_id.operation_id = "queryXrayTimelineByUserID"
query_xray_timeline_by_user_id.is_deprecated = False
