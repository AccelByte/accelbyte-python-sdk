import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import get_profile as get_profile_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import GameProfileInfo


@click.command()
@click.argument("user_id", type=str)
@click.argument("profile_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_profile(
        user_id: str,
        profile_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_profile_internal.__doc__)
    result, error = get_profile_internal(
        user_id=user_id,
        profile_id=profile_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getProfile failed: {str(error)}")
    click.echo("getProfile success")
