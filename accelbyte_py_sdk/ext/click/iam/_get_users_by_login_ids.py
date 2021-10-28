import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_users_by_login_ids as get_users_by_login_ids_internal
from ....api.iam.models import ModelPublicUsersResponse


@click.command()
@click.option("--login_ids", "login_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_users_by_login_ids(
        login_ids: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_users_by_login_ids_internal.__doc__)
    result, error = get_users_by_login_ids_internal(
        login_ids=login_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetUsersByLoginIds failed: {str(error)}")
    click.echo("GetUsersByLoginIds success")
