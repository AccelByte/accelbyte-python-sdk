import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_payment_orders as query_payment_orders_internal
from ....api.platform.models import PaymentOrderPagingSlicedResult


@click.command()
@click.option("--status", "status", type=str)
@click.option("--channel", "channel", type=str)
@click.option("--ext_tx_id", "ext_tx_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_payment_orders(
        status: Optional[str] = None,
        channel: Optional[str] = None,
        ext_tx_id: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_payment_orders_internal.__doc__)
    result, error = query_payment_orders_internal(
        status=status,
        channel=channel,
        ext_tx_id=ext_tx_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryPaymentOrders failed: {str(error)}")
    click.echo("queryPaymentOrders success")
