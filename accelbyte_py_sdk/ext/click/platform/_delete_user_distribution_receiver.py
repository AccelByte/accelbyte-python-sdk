import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_user_distribution_receiver as delete_user_distribution_receiver_internal
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("ext_user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_user_distribution_receiver(
        user_id: str,
        ext_user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_user_distribution_receiver_internal.__doc__)
    result, error = delete_user_distribution_receiver_internal(
        user_id=user_id,
        ext_user_id=ext_user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteUserDistributionReceiver failed: {str(error)}")
    click.echo("deleteUserDistributionReceiver success")
