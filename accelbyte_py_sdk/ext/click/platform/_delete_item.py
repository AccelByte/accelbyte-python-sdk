import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_item as delete_item_internal
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("item_id", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_item(
        item_id: str,
        store_id: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_item_internal.__doc__)
    result, error = delete_item_internal(
        item_id=item_id,
        store_id=store_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteItem failed: {str(error)}")
    click.echo("deleteItem success")
