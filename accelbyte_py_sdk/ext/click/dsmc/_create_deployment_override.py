import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import create_deployment_override as create_deployment_override_internal
from ....api.dsmc.models import ModelsCreateDeploymentOverrideRequest
from ....api.dsmc.models import ModelsDeploymentWithOverride
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.argument("deployment", type=str)
@click.argument("version", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_deployment_override(
        body: str,
        deployment: str,
        version: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_deployment_override_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsCreateDeploymentOverrideRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_deployment_override_internal(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateDeploymentOverride failed: {str(error)}")
    click.echo("CreateDeploymentOverride success")
