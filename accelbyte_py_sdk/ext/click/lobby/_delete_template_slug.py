import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import delete_template_slug as delete_template_slug_internal
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("template_slug", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_template_slug(
        template_slug: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_template_slug_internal.__doc__)
    result, error = delete_template_slug_internal(
        template_slug=template_slug,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteTemplateSlug failed: {str(error)}")
    click.echo("deleteTemplateSlug success")
