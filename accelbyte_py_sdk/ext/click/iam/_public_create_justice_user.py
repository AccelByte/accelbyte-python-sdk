import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_create_justice_user as public_create_justice_user_internal
from ....api.iam.models import ModelCreateJusticeUserResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("target_namespace", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_create_justice_user(
        target_namespace: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_create_justice_user_internal.__doc__)
    result, error = public_create_justice_user_internal(
        target_namespace=target_namespace,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicCreateJusticeUser failed: {str(error)}")
    click.echo("PublicCreateJusticeUser success")
