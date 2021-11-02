# justice-platform-service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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
from ....api.platform import query_user_orders as query_user_orders_internal
from ....api.platform.models import OrderPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--status", "status", type=str)
@click.option("--item_id", "item_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def query_user_orders(
        user_id: str,
        status: Optional[str] = None,
        item_id: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_user_orders_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = query_user_orders_internal(
        user_id=user_id,
        status=status,
        item_id=item_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryUserOrders failed: {str(error)}")
    click.echo("queryUserOrders success")