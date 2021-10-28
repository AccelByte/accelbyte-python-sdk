import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import platform_token_request_handler as platform_token_request_handler_internal
from ....api.iam.models import OauthmodelErrorResponse
from ....api.iam.models import OauthmodelTokenResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--platform_token", "platform_token", type=str)
@click.option("--device_id", "device_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def platform_token_request_handler(
        platform_id: str,
        platform_token: Optional[str] = None,
        device_id: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(platform_token_request_handler_internal.__doc__)
    result, error = platform_token_request_handler_internal(
        platform_id=platform_id,
        platform_token=platform_token,
        device_id=device_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PlatformTokenRequestHandler failed: {str(error)}")
    click.echo("PlatformTokenRequestHandler success")
