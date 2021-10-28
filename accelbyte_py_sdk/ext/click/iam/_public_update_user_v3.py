import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_update_user_v3 as public_update_user_v3_internal
from ....api.iam.models import ModelUserResponseV3
from ....api.iam.models import ModelUserUpdateRequestV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_update_user_v3(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_update_user_v3_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUserUpdateRequestV3.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_update_user_v3_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicUpdateUserV3 failed: {str(error)}")
    click.echo("PublicUpdateUserV3 success")
