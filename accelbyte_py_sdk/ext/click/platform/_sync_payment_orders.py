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
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def sync_payment_orders(
        start: str,
        end: str,
        next_evaluated_key: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(sync_payment_orders_internal.__doc__)
    result, error = sync_payment_orders_internal(
        start=start,
        end=end,
        next_evaluated_key=next_evaluated_key,
    )
    if error:
        raise Exception(f"syncPaymentOrders failed: {str(error)}")
    click.echo("syncPaymentOrders success")
