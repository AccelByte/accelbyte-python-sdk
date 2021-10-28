import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_category as update_category_internal
from ....api.platform.models import CategoryUpdate
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullCategoryInfo
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("category_path", type=str)
@click.argument("store_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_category(
        category_path: str,
        store_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_category_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = CategoryUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_category_internal(
        category_path=category_path,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateCategory failed: {str(error)}")
    click.echo("updateCategory success")
