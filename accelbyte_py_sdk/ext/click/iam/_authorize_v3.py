import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import authorize_v3 as authorize_v3_internal


@click.command()
@click.argument("response_type", type=str)
@click.argument("client_id", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--state", "state", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--code_challenge", "code_challenge", type=str)
@click.option("--code_challenge_method", "code_challenge_method", type=str)
@click.option("--target_auth_page", "target_auth_page", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def authorize_v3(
        response_type: str,
        client_id: str,
        redirect_uri: Optional[str] = None,
        state: Optional[str] = None,
        scope: Optional[str] = None,
        code_challenge: Optional[str] = None,
        code_challenge_method: Optional[str] = None,
        target_auth_page: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(authorize_v3_internal.__doc__)
    result, error = authorize_v3_internal(
        response_type=response_type,
        client_id=client_id,
        redirect_uri=redirect_uri,
        state=state,
        scope=scope,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        target_auth_page=target_auth_page,
    )
    if error:
        raise Exception(f"AuthorizeV3 failed: {str(error)}")
    click.echo("AuthorizeV3 success")
