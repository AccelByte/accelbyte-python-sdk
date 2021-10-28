import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import rollback_published_store as rollback_published_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def rollback_published_store(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(rollback_published_store_internal.__doc__)
    result, error = rollback_published_store_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"rollbackPublishedStore failed: {str(error)}")
    click.echo("rollbackPublishedStore success")
