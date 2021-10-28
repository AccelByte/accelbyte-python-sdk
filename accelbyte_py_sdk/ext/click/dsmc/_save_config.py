import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import save_config as save_config_internal
from ....api.dsmc.models import ModelsDSMConfigRecord
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def save_config(
        body: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(save_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsDSMConfigRecord.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = save_config_internal(
        body=body,
    )
    if error:
        raise Exception(f"SaveConfig failed: {str(error)}")
    click.echo("SaveConfig success")
