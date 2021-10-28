import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_update_config_v1 as admin_update_config_v1_internal
from ....api.lobby.models import ModelsConfigReq
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_update_config_v1(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_config_v1_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsConfigReq.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_update_config_v1_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminUpdateConfigV1 failed: {str(error)}")
    click.echo("adminUpdateConfigV1 success")
