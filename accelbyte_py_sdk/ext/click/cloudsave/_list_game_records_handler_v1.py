import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.cloudsave import list_game_records_handler_v1 as list_game_records_handler_v1_internal
from ....api.cloudsave.models import ModelsListGameRecordKeys
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("offset", type=int)
@click.argument("limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_game_records_handler_v1(
        offset: int,
        limit: int,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_game_records_handler_v1_internal.__doc__)
    result, error = list_game_records_handler_v1_internal(
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listGameRecordsHandlerV1 failed: {str(error)}")
    click.echo("listGameRecordsHandlerV1 success")
