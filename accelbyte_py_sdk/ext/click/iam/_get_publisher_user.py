import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_publisher_user as get_publisher_user_internal
from ....api.iam.models import ModelGetPublisherUserResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_publisher_user(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_publisher_user_internal.__doc__)
    result, error = get_publisher_user_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetPublisherUser failed: {str(error)}")
    click.echo("GetPublisherUser success")
