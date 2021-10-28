import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import recurring_charge_subscription as recurring_charge_subscription_internal
from ....api.platform.models import RecurringChargeResult


@click.command()
@click.argument("subscription_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def recurring_charge_subscription(
        subscription_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(recurring_charge_subscription_internal.__doc__)
    result, error = recurring_charge_subscription_internal(
        subscription_id=subscription_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"recurringChargeSubscription failed: {str(error)}")
    click.echo("recurringChargeSubscription success")
