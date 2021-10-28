import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import delete_notification_template_slug_v1_admin as delete_notification_template_slug_v1_admin_internal
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("template_slug", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_notification_template_slug_v1_admin(
        template_slug: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_notification_template_slug_v1_admin_internal.__doc__)
    result, error = delete_notification_template_slug_v1_admin_internal(
        template_slug=template_slug,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteNotificationTemplateSlugV1Admin failed: {str(error)}")
    click.echo("deleteNotificationTemplateSlugV1Admin success")
