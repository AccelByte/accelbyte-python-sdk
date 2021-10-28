import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import create_my_profile as create_my_profile_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import UserProfilePrivateCreate
from ....api.basic.models import UserProfilePrivateInfo
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_my_profile(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_my_profile_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = UserProfilePrivateCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_my_profile_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createMyProfile failed: {str(error)}")
    click.echo("createMyProfile success")
