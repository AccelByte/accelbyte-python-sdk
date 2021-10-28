import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import notification_with_template as notification_with_template_internal
from ....api.lobby.models import ModelNotificationWithTemplateRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def notification_with_template(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(notification_with_template_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelNotificationWithTemplateRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = notification_with_template_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"notificationWithTemplate failed: {str(error)}")
    click.echo("notificationWithTemplate success")
