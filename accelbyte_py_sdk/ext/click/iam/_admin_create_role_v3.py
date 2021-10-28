import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_create_role_v3 as admin_create_role_v3_internal
from ....api.iam.models import AccountcommonRoleV3
from ....api.iam.models import ModelRoleCreateV3Request
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_create_role_v3(
        body: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_create_role_v3_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelRoleCreateV3Request.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_create_role_v3_internal(
        body=body,
    )
    if error:
        raise Exception(f"AdminCreateRoleV3 failed: {str(error)}")
    click.echo("AdminCreateRoleV3 success")
