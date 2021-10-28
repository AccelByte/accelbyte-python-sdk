import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import create_root_region_override as create_root_region_override_internal
from ....api.dsmc.models import ModelsCreateRegionOverrideRequest
from ....api.dsmc.models import ModelsDeploymentWithOverride
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.argument("deployment", type=str)
@click.argument("region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_root_region_override(
        body: str,
        deployment: str,
        region: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_root_region_override_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsCreateRegionOverrideRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_root_region_override_internal(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateRootRegionOverride failed: {str(error)}")
    click.echo("CreateRootRegionOverride success")
