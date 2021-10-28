import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import delete_client as delete_client_internal


@click.command()
@click.argument("client_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_client(
        client_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_client_internal.__doc__)
    result, error = delete_client_internal(
        client_id=client_id,
    )
    if error:
        raise Exception(f"DeleteClient failed: {str(error)}")
    click.echo("DeleteClient success")
