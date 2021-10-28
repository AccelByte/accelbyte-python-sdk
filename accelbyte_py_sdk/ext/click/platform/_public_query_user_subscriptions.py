import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_query_user_subscriptions as public_query_user_subscriptions_internal
from ....api.platform.models import SubscriptionPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--item_id", "item_id", type=str)
@click.option("--sku", "sku", type=str)
@click.option("--status", "status", type=str)
@click.option("--charge_status", "charge_status", type=str)
@click.option("--subscribed_by", "subscribed_by", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_query_user_subscriptions(
        user_id: str,
        item_id: Optional[str] = None,
        sku: Optional[str] = None,
        status: Optional[str] = None,
        charge_status: Optional[str] = None,
        subscribed_by: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_query_user_subscriptions_internal.__doc__)
    result, error = public_query_user_subscriptions_internal(
        user_id=user_id,
        item_id=item_id,
        sku=sku,
        status=status,
        charge_status=charge_status,
        subscribed_by=subscribed_by,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicQueryUserSubscriptions failed: {str(error)}")
    click.echo("publicQueryUserSubscriptions success")
