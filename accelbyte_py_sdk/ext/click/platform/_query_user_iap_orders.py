import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_user_iap_orders as query_user_iap_orders_internal
from ....api.platform.models import IAPOrderPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--type", "type_", type=str)
@click.option("--product_id", "product_id", type=str)
@click.option("--status", "status", type=str)
@click.option("--start_time", "start_time", type=str)
@click.option("--end_time", "end_time", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_user_iap_orders(
        user_id: str,
        type_: Optional[str] = None,
        product_id: Optional[str] = None,
        status: Optional[str] = None,
        start_time: Optional[str] = None,
        end_time: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_user_iap_orders_internal.__doc__)
    result, error = query_user_iap_orders_internal(
        user_id=user_id,
        type_=type_,
        product_id=product_id,
        status=status,
        start_time=start_time,
        end_time=end_time,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryUserIAPOrders failed: {str(error)}")
    click.echo("queryUserIAPOrders success")
