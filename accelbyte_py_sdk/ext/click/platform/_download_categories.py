import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import download_categories as download_categories_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import HierarchicalCategoryInfo


@click.command()
@click.option("--store_id", "store_id", type=str)
@click.option("--language", "language", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def download_categories(
        store_id: Optional[str] = None,
        language: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(download_categories_internal.__doc__)
    result, error = download_categories_internal(
        store_id=store_id,
        language=language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"downloadCategories failed: {str(error)}")
    click.echo("downloadCategories success")
