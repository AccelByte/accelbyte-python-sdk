import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import list_stores as list_stores_internal
from ....api.platform.models import StoreInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_stores(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_stores_internal.__doc__)
    result, error = list_stores_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"listStores failed: {str(error)}")
    click.echo("listStores success")
