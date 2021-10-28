import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_web_link_platform as public_web_link_platform_internal
from ....api.iam.models import ModelWebLinkingResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_web_link_platform(
        platform_id: str,
        client_id: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_web_link_platform_internal.__doc__)
    result, error = public_web_link_platform_internal(
        platform_id=platform_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicWebLinkPlatform failed: {str(error)}")
    click.echo("PublicWebLinkPlatform success")
