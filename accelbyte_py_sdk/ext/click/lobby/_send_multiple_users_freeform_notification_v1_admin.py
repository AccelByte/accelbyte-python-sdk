import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import send_multiple_users_freeform_notification_v1_admin as send_multiple_users_freeform_notification_v1_admin_internal
from ....api.lobby.models import ModelBulkUsersFreeFormNotificationRequestV1
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("body", type=str)
@click.option("--async", "async_", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def send_multiple_users_freeform_notification_v1_admin(
        body: str,
        async_: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(send_multiple_users_freeform_notification_v1_admin_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelBulkUsersFreeFormNotificationRequestV1.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = send_multiple_users_freeform_notification_v1_admin_internal(
        body=body,
        async_=async_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"sendMultipleUsersFreeformNotificationV1Admin failed: {str(error)}")
    click.echo("sendMultipleUsersFreeformNotificationV1Admin success")
