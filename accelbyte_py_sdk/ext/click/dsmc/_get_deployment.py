import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_deployment as get_deployment_internal
from ....api.dsmc.models import ModelsDeploymentWithOverride
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("deployment", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_deployment(
        deployment: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_deployment_internal.__doc__)
    result, error = get_deployment_internal(
        deployment=deployment,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetDeployment failed: {str(error)}")
    click.echo("GetDeployment success")
