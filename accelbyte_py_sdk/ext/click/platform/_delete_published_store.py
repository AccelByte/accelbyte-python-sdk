import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_published_store as delete_published_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_published_store(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_published_store_internal.__doc__)
    result, error = delete_published_store_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"deletePublishedStore failed: {str(error)}")
    click.echo("deletePublishedStore success")
