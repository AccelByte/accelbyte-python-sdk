import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import check_user_subscription_subscribable_by_item_id as check_user_subscription_subscribable_by_item_id_internal
from ....api.platform.models import Subscribable


@click.command()
@click.argument("user_id", type=str)
@click.argument("item_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def check_user_subscription_subscribable_by_item_id(
        user_id: str,
        item_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(check_user_subscription_subscribable_by_item_id_internal.__doc__)
    result, error = check_user_subscription_subscribable_by_item_id_internal(
        user_id=user_id,
        item_id=item_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"checkUserSubscriptionSubscribableByItemId failed: {str(error)}")
    click.echo("checkUserSubscriptionSubscribableByItemId success")
