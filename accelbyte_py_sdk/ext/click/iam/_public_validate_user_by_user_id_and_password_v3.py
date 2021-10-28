import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_validate_user_by_user_id_and_password_v3 as public_validate_user_by_user_id_and_password_v3_internal


@click.command()
@click.argument("password", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_validate_user_by_user_id_and_password_v3(
        password: str,
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_validate_user_by_user_id_and_password_v3_internal.__doc__)
    result, error = public_validate_user_by_user_id_and_password_v3_internal(
        password=password,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicValidateUserByUserIDAndPasswordV3 failed: {str(error)}")
    click.echo("PublicValidateUserByUserIDAndPasswordV3 success")
