import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import create_user_stat_item as create_user_stat_item_internal
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("stat_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_user_stat_item(
        user_id: str,
        stat_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_user_stat_item_internal.__doc__)
    result, error = create_user_stat_item_internal(
        user_id=user_id,
        stat_code=stat_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createUserStatItem failed: {str(error)}")
    click.echo("createUserStatItem success")
