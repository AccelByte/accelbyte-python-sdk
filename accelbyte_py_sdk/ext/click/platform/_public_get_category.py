import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_category as public_get_category_internal
from ....api.platform.models import CategoryInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("category_path", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--language", "language", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_category(
        category_path: str,
        store_id: Optional[str] = None,
        language: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_category_internal.__doc__)
    result, error = public_get_category_internal(
        category_path=category_path,
        store_id=store_id,
        language=language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetCategory failed: {str(error)}")
    click.echo("publicGetCategory success")
