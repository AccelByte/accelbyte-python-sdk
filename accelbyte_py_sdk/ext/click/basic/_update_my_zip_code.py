import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import update_my_zip_code as update_my_zip_code_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import UserZipCode
from ....api.basic.models import UserZipCodeUpdate
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("user_zip_code_update", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_my_zip_code(
        user_zip_code_update: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_my_zip_code_internal.__doc__)
    try:
        user_zip_code_update_json = json.loads(user_zip_code_update)
        user_zip_code_update = UserZipCodeUpdate.create_from_dict(user_zip_code_update_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'userZipCodeUpdate'. {str(e)}")
    result, error = update_my_zip_code_internal(
        user_zip_code_update=user_zip_code_update,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateMyZipCode failed: {str(error)}")
    click.echo("updateMyZipCode success")
