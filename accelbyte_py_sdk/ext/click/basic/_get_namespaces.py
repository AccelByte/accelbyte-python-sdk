import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_namespaces as get_namespaces_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import NamespaceInfo


@click.command()
@click.option("--active_only", "active_only", type=bool)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_namespaces(
        active_only: Optional[bool] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_namespaces_internal.__doc__)
    result, error = get_namespaces_internal(
        active_only=active_only,
    )
    if error:
        raise Exception(f"getNamespaces failed: {str(error)}")
    click.echo("getNamespaces success")
