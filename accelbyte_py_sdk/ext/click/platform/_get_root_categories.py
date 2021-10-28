import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_root_categories as get_root_categories_internal
from ....api.platform.models import FullCategoryInfo


@click.command()
@click.option("--store_id", "store_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_root_categories(
        store_id: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_root_categories_internal.__doc__)
    result, error = get_root_categories_internal(
        store_id=store_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getRootCategories failed: {str(error)}")
    click.echo("getRootCategories success")
