import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_key_group as get_key_group_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import KeyGroupInfo


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_key_group(
        key_group_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_key_group_internal.__doc__)
    result, error = get_key_group_internal(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getKeyGroup failed: {str(error)}")
    click.echo("getKeyGroup success")
