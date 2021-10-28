import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.cloudsave import list_player_record_handler_v1 as list_player_record_handler_v1_internal
from ....api.cloudsave.models import ModelsListPlayerRecordKeys
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.option("--query", "query", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_player_record_handler_v1(
        query: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_player_record_handler_v1_internal.__doc__)
    result, error = list_player_record_handler_v1_internal(
        query=query,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listPlayerRecordHandlerV1 failed: {str(error)}")
    click.echo("listPlayerRecordHandlerV1 success")
