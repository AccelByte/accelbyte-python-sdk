import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_user_distribution_receivers as get_user_distribution_receivers_internal
from ....api.platform.models import DistributionReceiverInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_distribution_receivers(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_user_distribution_receivers_internal.__doc__)
    result, error = get_user_distribution_receivers_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserDistributionReceivers failed: {str(error)}")
    click.echo("getUserDistributionReceivers success")
