import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import update_custom_attributes_partially as update_custom_attributes_partially_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_custom_attributes_partially(
        user_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_custom_attributes_partially_internal.__doc__)
    try:
        body_json = json.loads(body)
        raise NotImplementedError
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_custom_attributes_partially_internal(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateCustomAttributesPartially failed: {str(error)}")
    click.echo("updateCustomAttributesPartially success")
