import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import revoke_user_entitlements as revoke_user_entitlements_internal
from ....api.platform.models import BulkOperationResult


@click.command()
@click.argument("user_id", type=str)
@click.argument("entitlement_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def revoke_user_entitlements(
        user_id: str,
        entitlement_ids: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(revoke_user_entitlements_internal.__doc__)
    result, error = revoke_user_entitlements_internal(
        user_id=user_id,
        entitlement_ids=entitlement_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"revokeUserEntitlements failed: {str(error)}")
    click.echo("revokeUserEntitlements success")
