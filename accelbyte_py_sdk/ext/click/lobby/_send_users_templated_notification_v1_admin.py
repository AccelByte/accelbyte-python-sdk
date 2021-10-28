import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import send_users_templated_notification_v1_admin as send_users_templated_notification_v1_admin_internal
from ....api.lobby.models import ModelNotificationWithTemplateRequestV1
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def send_users_templated_notification_v1_admin(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(send_users_templated_notification_v1_admin_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelNotificationWithTemplateRequestV1.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = send_users_templated_notification_v1_admin_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"sendUsersTemplatedNotificationV1Admin failed: {str(error)}")
    click.echo("sendUsersTemplatedNotificationV1Admin success")
