import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import delete_namespace as delete_namespace_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import NamespaceInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_namespace(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_namespace_internal.__doc__)
    result, error = delete_namespace_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteNamespace failed: {str(error)}")
    click.echo("deleteNamespace success")
