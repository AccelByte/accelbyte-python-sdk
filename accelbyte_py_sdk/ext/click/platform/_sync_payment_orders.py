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
from ....api.platform import sync_payment_orders as sync_payment_orders_internal
from ....api.platform.models import PaymentOrderSyncResult


@click.command()
@click.argument("start", type=str)
@click.argument("end", type=str)
@click.option("--next_evaluated_key", "next_evaluated_key", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def sync_payment_orders(
        start: str,
        end: str,
        next_evaluated_key: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(sync_payment_orders_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = sync_payment_orders_internal(
        start=start,
        end=end,
        next_evaluated_key=next_evaluated_key,
    )
    if error:
        raise Exception(f"syncPaymentOrders failed: {str(error)}")
    click.echo("syncPaymentOrders success")