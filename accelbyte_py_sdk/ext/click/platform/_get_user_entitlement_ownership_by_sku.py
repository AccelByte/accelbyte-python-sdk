import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_user_entitlement_ownership_by_sku as get_user_entitlement_ownership_by_sku_internal
from ....api.platform.models import Ownership


@click.command()
@click.argument("user_id", type=str)
@click.argument("sku", type=str)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_entitlement_ownership_by_sku(
        user_id: str,
        sku: str,
        entitlement_clazz: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_user_entitlement_ownership_by_sku_internal.__doc__)
    result, error = get_user_entitlement_ownership_by_sku_internal(
        user_id=user_id,
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserEntitlementOwnershipBySku failed: {str(error)}")
    click.echo("getUserEntitlementOwnershipBySku success")
