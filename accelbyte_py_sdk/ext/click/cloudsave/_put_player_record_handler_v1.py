import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.cloudsave import put_player_record_handler_v1 as put_player_record_handler_v1_internal
from ....api.cloudsave.models import ModelsPlayerRecordRequest
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.argument("key", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def put_player_record_handler_v1(
        body: str,
        user_id: str,
        key: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(put_player_record_handler_v1_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsPlayerRecordRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = put_player_record_handler_v1_internal(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    if error:
        raise Exception(f"putPlayerRecordHandlerV1 failed: {str(error)}")
    click.echo("putPlayerRecordHandlerV1 success")
