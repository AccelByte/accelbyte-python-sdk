import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import publish_template_localization_v1_admin as publish_template_localization_v1_admin_internal
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.argument("template_slug", type=str)
@click.argument("template_language", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def publish_template_localization_v1_admin(
        template_slug: str,
        template_language: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(publish_template_localization_v1_admin_internal.__doc__)
    result, error = publish_template_localization_v1_admin_internal(
        template_slug=template_slug,
        template_language=template_language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publishTemplateLocalizationV1Admin failed: {str(error)}")
    click.echo("publishTemplateLocalizationV1Admin success")
