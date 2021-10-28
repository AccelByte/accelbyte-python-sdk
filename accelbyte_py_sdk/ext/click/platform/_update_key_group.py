import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_key_group as update_key_group_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import KeyGroupInfo
from ....api.platform.models import KeyGroupUpdate
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_key_group(
        key_group_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_key_group_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = KeyGroupUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_key_group_internal(
        key_group_id=key_group_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateKeyGroup failed: {str(error)}")
    click.echo("updateKeyGroup success")
