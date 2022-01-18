# justice-platform-service (4.1.1)

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
from accelbyte_py_sdk.api.platform import query_payment_orders as query_payment_orders_internal
from accelbyte_py_sdk.api.platform.models import PaymentOrderPagingSlicedResult


@click.command()
@click.option("--channel", "channel", type=str)
@click.option("--ext_tx_id", "ext_tx_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--status", "status", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def query_payment_orders(
        channel: Optional[str] = None,
        ext_tx_id: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        status: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_payment_orders_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = query_payment_orders_internal(
        channel=channel,
        ext_tx_id=ext_tx_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryPaymentOrders failed: {str(error)}")
    click.echo("queryPaymentOrders success")
