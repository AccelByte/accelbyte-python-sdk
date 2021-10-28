import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.cloudsave import delete_player_record_handler_v1 as delete_player_record_handler_v1_internal
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("user_id", type=str)
@click.argument("key", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_player_record_handler_v1(
        user_id: str,
        key: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_player_record_handler_v1_internal.__doc__)
    result, error = delete_player_record_handler_v1_internal(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deletePlayerRecordHandlerV1 failed: {str(error)}")
    click.echo("deletePlayerRecordHandlerV1 success")
