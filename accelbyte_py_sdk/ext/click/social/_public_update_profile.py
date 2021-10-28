import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import public_update_profile as public_update_profile_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import GameProfileInfo
from ....api.social.models import GameProfileRequest
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("profile_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_update_profile(
        user_id: str,
        profile_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_update_profile_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = GameProfileRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_update_profile_internal(
        user_id=user_id,
        profile_id=profile_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicUpdateProfile failed: {str(error)}")
    click.echo("publicUpdateProfile success")
