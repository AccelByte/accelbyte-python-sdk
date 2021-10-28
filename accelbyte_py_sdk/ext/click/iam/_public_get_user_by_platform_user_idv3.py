import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_get_user_by_platform_user_idv3 as public_get_user_by_platform_user_idv3_internal
from ....api.iam.models import ModelUserResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("platform_id", type=str)
@click.argument("platform_user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_user_by_platform_user_idv3(
        platform_id: str,
        platform_user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_user_by_platform_user_idv3_internal.__doc__)
    result, error = public_get_user_by_platform_user_idv3_internal(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicGetUserByPlatformUserIDV3 failed: {str(error)}")
    click.echo("PublicGetUserByPlatformUserIDV3 success")
