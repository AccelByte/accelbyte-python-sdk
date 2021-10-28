import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import create_topic as create_topic_internal
from ....api.lobby.models import ModelCreateTopicRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_topic(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_topic_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelCreateTopicRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_topic_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createTopic failed: {str(error)}")
    click.echo("createTopic success")
