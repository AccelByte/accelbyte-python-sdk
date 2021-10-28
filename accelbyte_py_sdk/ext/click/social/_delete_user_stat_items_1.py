import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import delete_user_stat_items_1 as delete_user_stat_items_1_internal
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("stat_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_user_stat_items_1(
        user_id: str,
        stat_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_user_stat_items_1_internal.__doc__)
    result, error = delete_user_stat_items_1_internal(
        user_id=user_id,
        stat_code=stat_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteUserStatItems_1 failed: {str(error)}")
    click.echo("deleteUserStatItems_1 success")
