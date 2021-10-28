import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_all_deployment as get_all_deployment_internal
from ....api.dsmc.models import ModelsListDeploymentResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--offset", "offset", type=int)
@click.option("--count", "count", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_all_deployment(
        offset: Optional[int] = None,
        count: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_all_deployment_internal.__doc__)
    result, error = get_all_deployment_internal(
        offset=offset,
        count=count,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetAllDeployment failed: {str(error)}")
    click.echo("GetAllDeployment success")
