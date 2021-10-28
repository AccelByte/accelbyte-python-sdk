import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_distribute_user_distribution as public_distribute_user_distribution_internal
from ....api.platform.models import EntitlementInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("entitlement_id", type=str)
@click.argument("target_namespace", type=str)
@click.argument("ext_user_id", type=str)
@click.option("--quantity", "quantity", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_distribute_user_distribution(
        user_id: str,
        entitlement_id: str,
        target_namespace: str,
        ext_user_id: str,
        quantity: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_distribute_user_distribution_internal.__doc__)
    result, error = public_distribute_user_distribution_internal(
        user_id=user_id,
        entitlement_id=entitlement_id,
        target_namespace=target_namespace,
        ext_user_id=ext_user_id,
        quantity=quantity,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicDistributeUserDistribution failed: {str(error)}")
    click.echo("publicDistributeUserDistribution success")
