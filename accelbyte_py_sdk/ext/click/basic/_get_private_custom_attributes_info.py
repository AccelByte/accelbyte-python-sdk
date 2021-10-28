import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_private_custom_attributes_info as get_private_custom_attributes_info_internal
from ....api.basic.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_private_custom_attributes_info(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_private_custom_attributes_info_internal.__doc__)
    result, error = get_private_custom_attributes_info_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPrivateCustomAttributesInfo failed: {str(error)}")
    click.echo("getPrivateCustomAttributesInfo success")
