import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_item_dynamic_data as public_get_item_dynamic_data_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ItemDynamicDataInfo


@click.command()
@click.argument("item_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_item_dynamic_data(
        item_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_item_dynamic_data_internal.__doc__)
    result, error = public_get_item_dynamic_data_internal(
        item_id=item_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetItemDynamicData failed: {str(error)}")
    click.echo("publicGetItemDynamicData success")
