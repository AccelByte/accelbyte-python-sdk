import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_topic_by_namespace as get_topic_by_namespace_internal
from ....api.lobby.models import ModelTopicByNamespacesResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--before", "before", type=str)
@click.option("--after", "after", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_topic_by_namespace(
        limit: Optional[int] = None,
        before: Optional[str] = None,
        after: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_topic_by_namespace_internal.__doc__)
    result, error = get_topic_by_namespace_internal(
        limit=limit,
        before=before,
        after=after,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getTopicByNamespace failed: {str(error)}")
    click.echo("getTopicByNamespace success")
