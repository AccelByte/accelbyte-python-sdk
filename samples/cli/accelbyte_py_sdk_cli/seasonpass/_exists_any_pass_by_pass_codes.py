# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Seasonpass Service (1.20.2)

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
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import (
    exists_any_pass_by_pass_codes as exists_any_pass_by_pass_codes_internal,
)
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import Ownership


@click.command()
@click.argument("user_id", type=str)
@click.option("--pass_codes", "pass_codes", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def exists_any_pass_by_pass_codes(
    user_id: str,
    pass_codes: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(exists_any_pass_by_pass_codes_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if pass_codes is not None:
        try:
            pass_codes_json = json.loads(pass_codes)
            pass_codes = [str(i0) for i0 in pass_codes_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'passCodes'. {str(e)}") from e
    result, error = exists_any_pass_by_pass_codes_internal(
        user_id=user_id,
        pass_codes=pass_codes,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"existsAnyPassByPassCodes failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


exists_any_pass_by_pass_codes.operation_id = "existsAnyPassByPassCodes"
exists_any_pass_by_pass_codes.is_deprecated = False
