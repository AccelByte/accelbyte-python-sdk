import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import delete_override_region_override as delete_override_region_override_internal
from ....api.dsmc.models import ModelsDeploymentWithOverride
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("deployment", type=str)
@click.argument("version", type=str)
@click.argument("region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_override_region_override(
        deployment: str,
        version: str,
        region: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_override_region_override_internal.__doc__)
    result, error = delete_override_region_override_internal(
        deployment=deployment,
        version=version,
        region=region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteOverrideRegionOverride failed: {str(error)}")
    click.echo("DeleteOverrideRegionOverride success")
