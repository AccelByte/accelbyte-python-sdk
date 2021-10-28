import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import send_specific_user_templated_notification_v1_admin as send_specific_user_templated_notification_v1_admin_internal
from ....api.lobby.models import ModelNotificationWithTemplateRequestV1
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.option("--async", "async_", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def send_specific_user_templated_notification_v1_admin(
        body: str,
        user_id: str,
        async_: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(send_specific_user_templated_notification_v1_admin_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelNotificationWithTemplateRequestV1.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = send_specific_user_templated_notification_v1_admin_internal(
        body=body,
        user_id=user_id,
        async_=async_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"sendSpecificUserTemplatedNotificationV1Admin failed: {str(error)}")
    click.echo("sendSpecificUserTemplatedNotificationV1Admin success")
