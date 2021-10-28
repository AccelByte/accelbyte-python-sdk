import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_template_slug_localizations_template_v1_admin as get_template_slug_localizations_template_v1_admin_internal
from ....api.lobby.models import ModelGetAllNotificationTemplateSlugResp
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("template_slug", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--before", "before", type=str)
@click.option("--after", "after", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_template_slug_localizations_template_v1_admin(
        template_slug: str,
        limit: Optional[int] = None,
        before: Optional[str] = None,
        after: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_template_slug_localizations_template_v1_admin_internal.__doc__)
    result, error = get_template_slug_localizations_template_v1_admin_internal(
        template_slug=template_slug,
        limit=limit,
        before=before,
        after=after,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getTemplateSlugLocalizationsTemplateV1Admin failed: {str(error)}")
    click.echo("getTemplateSlugLocalizationsTemplateV1Admin success")
