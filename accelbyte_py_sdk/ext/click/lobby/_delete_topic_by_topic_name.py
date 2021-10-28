import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import delete_topic_by_topic_name as delete_topic_by_topic_name_internal
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("topic", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_topic_by_topic_name(
        topic: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_topic_by_topic_name_internal.__doc__)
    result, error = delete_topic_by_topic_name_internal(
        topic=topic,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteTopicByTopicName failed: {str(error)}")
    click.echo("deleteTopicByTopicName success")
