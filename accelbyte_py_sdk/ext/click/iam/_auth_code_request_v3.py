import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import auth_code_request_v3 as auth_code_request_v3_internal


@click.command()
@click.argument("platform_id", type=str)
@click.argument("request_id", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def auth_code_request_v3(
        platform_id: str,
        request_id: str,
        client_id: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(auth_code_request_v3_internal.__doc__)
    result, error = auth_code_request_v3_internal(
        platform_id=platform_id,
        request_id=request_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
    )
    if error:
        raise Exception(f"AuthCodeRequestV3 failed: {str(error)}")
    click.echo("AuthCodeRequestV3 success")
