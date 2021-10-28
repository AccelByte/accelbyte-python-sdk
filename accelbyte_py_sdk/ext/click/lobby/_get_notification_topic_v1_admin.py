import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_notification_topic_v1_admin as get_notification_topic_v1_admin_internal
from ....api.lobby.models import ModelNotificationTopicResponseV1
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("topic_name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_notification_topic_v1_admin(
        topic_name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_notification_topic_v1_admin_internal.__doc__)
    result, error = get_notification_topic_v1_admin_internal(
        topic_name=topic_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getNotificationTopicV1Admin failed: {str(error)}")
    click.echo("getNotificationTopicV1Admin success")
