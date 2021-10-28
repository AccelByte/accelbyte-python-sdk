import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_key_group_dynamic as get_key_group_dynamic_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import KeyGroupDynamicInfo


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_key_group_dynamic(
        key_group_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_key_group_dynamic_internal.__doc__)
    result, error = get_key_group_dynamic_internal(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getKeyGroupDynamic failed: {str(error)}")
    click.echo("getKeyGroupDynamic success")
