import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import export_config_v1 as export_config_v1_internal
from ....api.dsmc.models import ModelsDSMConfigExport
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def export_config_v1(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(export_config_v1_internal.__doc__)
    result, error = export_config_v1_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"exportConfigV1 failed: {str(error)}")
    click.echo("exportConfigV1 success")
