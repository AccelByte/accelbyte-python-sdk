import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import update_localization_template as update_localization_template_internal
from ....api.lobby.models import ModelUpdateTemplateRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("template_slug", type=str)
@click.argument("template_language", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_localization_template(
        body: str,
        template_slug: str,
        template_language: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_localization_template_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUpdateTemplateRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_localization_template_internal(
        body=body,
        template_slug=template_slug,
        template_language=template_language,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateLocalizationTemplate failed: {str(error)}")
    click.echo("updateLocalizationTemplate success")
