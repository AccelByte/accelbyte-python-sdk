import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import update_user_profile_status as update_user_profile_status_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import UserProfilePrivateInfo
from ....api.basic.models import UserProfileStatusUpdate
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user_profile_status(
        user_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_user_profile_status_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = UserProfileStatusUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_user_profile_status_internal(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateUserProfileStatus failed: {str(error)}")
    click.echo("updateUserProfileStatus success")
