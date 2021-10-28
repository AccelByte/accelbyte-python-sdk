import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import delete_template_localization as delete_template_localization_internal
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("template_slug", type=str)
@click.argument("template_language", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_template_localization(
        template_slug: str,
        template_language: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_template_localization_internal.__doc__)
    result, error = delete_template_localization_internal(
        template_slug=template_slug,
        template_language=template_language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteTemplateLocalization failed: {str(error)}")
    click.echo("deleteTemplateLocalization success")
