import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import update_notification_topic_v1_admin as update_notification_topic_v1_admin_internal
from ....api.lobby.models import ModelUpdateTopicRequest
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("body", type=str)
@click.argument("topic_name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_notification_topic_v1_admin(
        body: str,
        topic_name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_notification_topic_v1_admin_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUpdateTopicRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_notification_topic_v1_admin_internal(
        body=body,
        topic_name=topic_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateNotificationTopicV1Admin failed: {str(error)}")
    click.echo("updateNotificationTopicV1Admin success")
