import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import disable_user_entitlement as disable_user_entitlement_internal
from ....api.platform.models import EntitlementInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("entitlement_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def disable_user_entitlement(
        user_id: str,
        entitlement_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(disable_user_entitlement_internal.__doc__)
    result, error = disable_user_entitlement_internal(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"disableUserEntitlement failed: {str(error)}")
    click.echo("disableUserEntitlement success")
