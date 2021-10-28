import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import search_user as search_user_internal
from ....api.iam.models import ModelSearchUsersResponse


@click.command()
@click.option("--query", "query", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def search_user(
        query: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(search_user_internal.__doc__)
    result, error = search_user_internal(
        query=query,
        namespace=namespace,
    )
    if error:
        raise Exception(f"SearchUser failed: {str(error)}")
    click.echo("SearchUser success")
