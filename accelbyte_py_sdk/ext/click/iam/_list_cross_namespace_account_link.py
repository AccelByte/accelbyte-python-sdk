import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import list_cross_namespace_account_link as list_cross_namespace_account_link_internal


@click.command()
@click.argument("linking_token", type=str)
@click.argument("user_id", type=str)
@click.option("--platform_id", "platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_cross_namespace_account_link(
        linking_token: str,
        user_id: str,
        platform_id: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_cross_namespace_account_link_internal.__doc__)
    result, error = list_cross_namespace_account_link_internal(
        linking_token=linking_token,
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ListCrossNamespaceAccountLink failed: {str(error)}")
    click.echo("ListCrossNamespaceAccountLink success")
