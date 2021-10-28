import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_slug_template as get_slug_template_internal
from ....api.lobby.models import ModelTemplateLocalizationResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("template_slug", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--before", "before", type=str)
@click.option("--after", "after", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_slug_template(
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
        click.echo(get_slug_template_internal.__doc__)
    result, error = get_slug_template_internal(
        template_slug=template_slug,
        limit=limit,
        before=before,
        after=after,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getSlugTemplate failed: {str(error)}")
    click.echo("getSlugTemplate success")
