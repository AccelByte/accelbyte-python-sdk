import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import create_category as create_category_internal
from ....api.platform.models import CategoryCreate
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullCategoryInfo
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("store_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_category(
        store_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_category_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = CategoryCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_category_internal(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createCategory failed: {str(error)}")
    click.echo("createCategory success")
