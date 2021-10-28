import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_web_link_platform_establish as public_web_link_platform_establish_internal


@click.command()
@click.argument("platform_id", type=str)
@click.argument("state", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_web_link_platform_establish(
        platform_id: str,
        state: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_web_link_platform_establish_internal.__doc__)
    result, error = public_web_link_platform_establish_internal(
        platform_id=platform_id,
        state=state,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicWebLinkPlatformEstablish failed: {str(error)}")
    click.echo("PublicWebLinkPlatformEstablish success")
