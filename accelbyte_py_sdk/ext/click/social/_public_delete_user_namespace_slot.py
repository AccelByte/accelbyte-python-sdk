import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import public_delete_user_namespace_slot as public_delete_user_namespace_slot_internal
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("slot_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_delete_user_namespace_slot(
        user_id: str,
        slot_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_delete_user_namespace_slot_internal.__doc__)
    result, error = public_delete_user_namespace_slot_internal(
        user_id=user_id,
        slot_id=slot_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicDeleteUserNamespaceSlot failed: {str(error)}")
    click.echo("publicDeleteUserNamespaceSlot success")
