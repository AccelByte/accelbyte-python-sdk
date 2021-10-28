import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_all_stored_notifications_v1 as get_all_stored_notifications_v1_internal
from ....api.lobby.models import ModelGetStoredNotificationResp
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_all_stored_notifications_v1(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_all_stored_notifications_v1_internal.__doc__)
    result, error = get_all_stored_notifications_v1_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getAllStoredNotificationsV1 failed: {str(error)}")
    click.echo("getAllStoredNotificationsV1 success")
