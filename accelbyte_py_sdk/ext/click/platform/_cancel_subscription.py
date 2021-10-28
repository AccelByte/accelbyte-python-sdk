import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import cancel_subscription as cancel_subscription_internal
from ....api.platform.models import CancelRequest
from ....api.platform.models import ErrorEntity
from ....api.platform.models import SubscriptionInfo


@click.command()
@click.argument("user_id", type=str)
@click.argument("subscription_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--force", "force", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def cancel_subscription(
        user_id: str,
        subscription_id: str,
        body: Optional[str] = None,
        force: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(cancel_subscription_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = CancelRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = cancel_subscription_internal(
        user_id=user_id,
        subscription_id=subscription_id,
        body=body,
        force=force,
        namespace=namespace,
    )
    if error:
        raise Exception(f"cancelSubscription failed: {str(error)}")
    click.echo("cancelSubscription success")
