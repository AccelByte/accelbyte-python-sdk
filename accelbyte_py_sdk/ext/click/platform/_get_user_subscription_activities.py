import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_user_subscription_activities as get_user_subscription_activities_internal
from ....api.platform.models import SubscriptionActivityPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--subscription_id", "subscription_id", type=str)
@click.option("--exclude_system", "exclude_system", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_subscription_activities(
        user_id: str,
        subscription_id: Optional[str] = None,
        exclude_system: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_user_subscription_activities_internal.__doc__)
    result, error = get_user_subscription_activities_internal(
        user_id=user_id,
        subscription_id=subscription_id,
        exclude_system=exclude_system,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserSubscriptionActivities failed: {str(error)}")
    click.echo("getUserSubscriptionActivities success")
