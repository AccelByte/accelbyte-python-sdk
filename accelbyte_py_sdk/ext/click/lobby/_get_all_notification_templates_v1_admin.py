import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_all_notification_templates_v1_admin as get_all_notification_templates_v1_admin_internal
from ....api.lobby.models import ModelNotificationTemplateResponse
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_all_notification_templates_v1_admin(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_all_notification_templates_v1_admin_internal.__doc__)
    result, error = get_all_notification_templates_v1_admin_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getAllNotificationTemplatesV1Admin failed: {str(error)}")
    click.echo("getAllNotificationTemplatesV1Admin success")
