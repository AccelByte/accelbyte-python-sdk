import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_namespace as get_namespace_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import NamespaceInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--active_only", "active_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_namespace(
        active_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_namespace_internal.__doc__)
    result, error = get_namespace_internal(
        active_only=active_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getNamespace failed: {str(error)}")
    click.echo("getNamespace success")
