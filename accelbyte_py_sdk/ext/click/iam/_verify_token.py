import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import verify_token as verify_token_internal
from ....api.iam.models import OauthmodelTokenResponse


@click.command()
@click.argument("token", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def verify_token(
        token: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(verify_token_internal.__doc__)
    result, error = verify_token_internal(
        token=token,
    )
    if error:
        raise Exception(f"VerifyToken failed: {str(error)}")
    click.echo("VerifyToken success")
