import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_localization_template as get_localization_template_internal
from ....api.lobby.models import ModelTemplateLocalization
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("template_slug", type=str)
@click.argument("template_language", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_localization_template(
        template_slug: str,
        template_language: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_localization_template_internal.__doc__)
    result, error = get_localization_template_internal(
        template_slug=template_slug,
        template_language=template_language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getLocalizationTemplate failed: {str(error)}")
    click.echo("getLocalizationTemplate success")
