import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_clientsby_namespace as get_clientsby_namespace_internal
from ....api.iam.models import ClientmodelClientResponse


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_clientsby_namespace(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_clientsby_namespace_internal.__doc__)
    result, error = get_clientsby_namespace_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetClientsbyNamespace failed: {str(error)}")
    click.echo("GetClientsbyNamespace success")
