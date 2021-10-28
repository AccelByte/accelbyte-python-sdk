import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import public_get_slot_data as public_get_slot_data_internal
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("slot_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_slot_data(
        user_id: str,
        slot_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_slot_data_internal.__doc__)
    result, error = public_get_slot_data_internal(
        user_id=user_id,
        slot_id=slot_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetSlotData failed: {str(error)}")
    click.echo("publicGetSlotData success")
