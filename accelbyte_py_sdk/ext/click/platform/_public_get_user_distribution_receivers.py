import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_user_distribution_receivers as public_get_user_distribution_receivers_internal
from ....api.platform.models import DistributionReceiverInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("target_namespace", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_user_distribution_receivers(
        user_id: str,
        target_namespace: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_user_distribution_receivers_internal.__doc__)
    result, error = public_get_user_distribution_receivers_internal(
        user_id=user_id,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetUserDistributionReceivers failed: {str(error)}")
    click.echo("publicGetUserDistributionReceivers success")
