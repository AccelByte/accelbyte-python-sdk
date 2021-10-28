import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import count_of_purchased_item as count_of_purchased_item_internal
from ....api.platform.models import PurchasedItemCount


@click.command()
@click.argument("user_id", type=str)
@click.argument("item_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def count_of_purchased_item(
        user_id: str,
        item_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(count_of_purchased_item_internal.__doc__)
    result, error = count_of_purchased_item_internal(
        user_id=user_id,
        item_id=item_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"countOfPurchasedItem failed: {str(error)}")
    click.echo("countOfPurchasedItem success")
