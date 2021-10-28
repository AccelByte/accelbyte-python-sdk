import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import create_deployment as create_deployment_internal
from ....api.dsmc.models import ModelsCreateDeploymentRequest
from ....api.dsmc.models import ModelsDeploymentWithOverride
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.argument("deployment", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_deployment(
        body: str,
        deployment: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_deployment_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsCreateDeploymentRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_deployment_internal(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateDeployment failed: {str(error)}")
    click.echo("CreateDeployment success")
