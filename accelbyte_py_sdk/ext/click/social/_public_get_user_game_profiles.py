import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import public_get_user_game_profiles as public_get_user_game_profiles_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import UserGameProfiles


@click.command()
@click.argument("user_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_user_game_profiles(
        user_ids: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_user_game_profiles_internal.__doc__)
    try:
        user_ids_json = json.loads(user_ids)
        user_ids = [str.create_from_dict(i0) for i0 in user_ids_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'userIds'. {str(e)}")
    result, error = public_get_user_game_profiles_internal(
        user_ids=user_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetUserGameProfiles failed: {str(error)}")
    click.echo("publicGetUserGameProfiles success")
