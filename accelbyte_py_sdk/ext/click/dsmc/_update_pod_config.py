import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import update_pod_config as update_pod_config_internal
from ....api.dsmc.models import ModelsPodConfigRecord
from ....api.dsmc.models import ModelsUpdatePodConfigRequest
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.argument("name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_pod_config(
        body: str,
        name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_pod_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsUpdatePodConfigRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_pod_config_internal(
        body=body,
        name=name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"UpdatePodConfig failed: {str(error)}")
    click.echo("UpdatePodConfig success")
