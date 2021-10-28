import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.cloudsave import admin_delete_game_record_handler_v1 as admin_delete_game_record_handler_v1_internal
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("key", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_delete_game_record_handler_v1(
        key: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_delete_game_record_handler_v1_internal.__doc__)
    result, error = admin_delete_game_record_handler_v1_internal(
        key=key,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminDeleteGameRecordHandlerV1 failed: {str(error)}")
    click.echo("adminDeleteGameRecordHandlerV1 success")
