import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_namespace_publisher as get_namespace_publisher_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import NamespacePublisherInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_namespace_publisher(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_namespace_publisher_internal.__doc__)
    result, error = get_namespace_publisher_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getNamespacePublisher failed: {str(error)}")
    click.echo("getNamespacePublisher success")
