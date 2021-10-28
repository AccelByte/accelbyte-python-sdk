import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_platform_link_v3 as public_platform_link_v3_internal
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("ticket", type=str)
@click.argument("platform_id", type=str)
@click.option("--redirect_uri", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_platform_link_v3(
        ticket: str,
        platform_id: str,
        redirect_uri: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_platform_link_v3_internal.__doc__)
    result, error = public_platform_link_v3_internal(
        ticket=ticket,
        platform_id=platform_id,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicPlatformLinkV3 failed: {str(error)}")
    click.echo("PublicPlatformLinkV3 success")
