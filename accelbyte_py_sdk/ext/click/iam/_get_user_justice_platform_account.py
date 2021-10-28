import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_user_justice_platform_account as get_user_justice_platform_account_internal
from ....api.iam.models import ModelGetUserJusticePlatformAccountResponse


@click.command()
@click.argument("user_id", type=str)
@click.argument("target_namespace", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_justice_platform_account(
        user_id: str,
        target_namespace: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_user_justice_platform_account_internal.__doc__)
    result, error = get_user_justice_platform_account_internal(
        user_id=user_id,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetUserJusticePlatformAccount failed: {str(error)}")
    click.echo("GetUserJusticePlatformAccount success")
