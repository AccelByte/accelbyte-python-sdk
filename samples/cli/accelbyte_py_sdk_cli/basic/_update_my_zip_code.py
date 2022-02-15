# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

# justice-basic-service (1.32.0)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from accelbyte_py_sdk.api.basic import update_my_zip_code as update_my_zip_code_internal
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserZipCode
from accelbyte_py_sdk.api.basic.models import UserZipCodeUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("user_zip_code_update", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def update_my_zip_code(
        user_zip_code_update: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(update_my_zip_code_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    if user_zip_code_update is not None:
        try:
            user_zip_code_update_json = json.loads(user_zip_code_update)
            user_zip_code_update = UserZipCodeUpdate.create_from_dict(user_zip_code_update_json)
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'userZipCodeUpdate'. {str(e)}") from e
    _, error = update_my_zip_code_internal(
        user_zip_code_update=user_zip_code_update,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"updateMyZipCode failed: {str(error)}")
    click.echo("updateMyZipCode success")
