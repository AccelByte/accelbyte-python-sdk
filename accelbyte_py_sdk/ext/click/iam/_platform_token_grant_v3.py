import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import platform_token_grant_v3 as platform_token_grant_v3_internal
from ....api.iam.models import OauthmodelErrorResponse
from ....api.iam.models import OauthmodelTokenResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--platform_token", type=str)
@click.option("--client_id", type=str)
@click.option("--device_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def platform_token_grant_v3(
        platform_id: str,
        platform_token: Optional[str] = None,
        client_id: Optional[str] = None,
        device_id: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(platform_token_grant_v3_internal.__doc__)
    result, error = platform_token_grant_v3_internal(
        platform_id=platform_id,
        platform_token=platform_token,
        client_id=client_id,
        device_id=device_id,
    )
    if error:
        raise Exception(f"PlatformTokenGrantV3 failed: {str(error)}")
    click.echo("PlatformTokenGrantV3 success")
