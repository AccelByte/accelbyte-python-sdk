import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_change_subscription_billing_account as public_change_subscription_billing_account_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import SubscriptionInfo


@click.command()
@click.argument("user_id", type=str)
@click.argument("subscription_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_change_subscription_billing_account(
        user_id: str,
        subscription_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_change_subscription_billing_account_internal.__doc__)
    result, error = public_change_subscription_billing_account_internal(
        user_id=user_id,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicChangeSubscriptionBillingAccount failed: {str(error)}")
    click.echo("publicChangeSubscriptionBillingAccount success")
