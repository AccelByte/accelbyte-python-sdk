import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import update_topic_by_topic_name as update_topic_by_topic_name_internal
from ....api.lobby.models import ModelUpdateTopicRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("topic", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_topic_by_topic_name(
        body: str,
        topic: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_topic_by_topic_name_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUpdateTopicRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_topic_by_topic_name_internal(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateTopicByTopicName failed: {str(error)}")
    click.echo("updateTopicByTopicName success")
