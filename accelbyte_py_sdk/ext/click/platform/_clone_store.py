import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import clone_store as clone_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreInfo


@click.command()
@click.argument("store_id", type=str)
@click.option("--target_store_id", "target_store_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def clone_store(
        store_id: str,
        target_store_id: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(clone_store_internal.__doc__)
    result, error = clone_store_internal(
        store_id=store_id,
        target_store_id=target_store_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"cloneStore failed: {str(error)}")
    click.echo("cloneStore success")
