# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Session Service (3.11.0)

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
    admin_query_parties as admin_query_parties_internal,
)
from accelbyte_py_sdk.api.session.models import ApimodelsPartyQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError


@click.command()
@click.option("--joinability", "joinability", type=str)
@click.option("--key", "key", type=str)
@click.option("--leader_id", "leader_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--member_id", "member_id", type=str)
@click.option("--member_status", "member_status", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--order", "order", type=str)
@click.option("--order_by", "order_by", type=str)
@click.option("--party_id", "party_id", type=str)
@click.option("--value", "value", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_query_parties(
    joinability: Optional[str] = None,
    key: Optional[str] = None,
    leader_id: Optional[str] = None,
    limit: Optional[int] = None,
    member_id: Optional[str] = None,
    member_status: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    party_id: Optional[str] = None,
    value: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_query_parties_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = admin_query_parties_internal(
        joinability=joinability,
        key=key,
        leader_id=leader_id,
        limit=limit,
        member_id=member_id,
        member_status=member_status,
        offset=offset,
        order=order,
        order_by=order_by,
        party_id=party_id,
        value=value,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"adminQueryParties failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_query_parties.operation_id = "adminQueryParties"
admin_query_parties.is_deprecated = False
