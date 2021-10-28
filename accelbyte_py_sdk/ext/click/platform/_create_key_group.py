import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import create_key_group as create_key_group_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import KeyGroupCreate
from ....api.platform.models import KeyGroupInfo
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_key_group(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_key_group_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = KeyGroupCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_key_group_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createKeyGroup failed: {str(error)}")
    click.echo("createKeyGroup success")
