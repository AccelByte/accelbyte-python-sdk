# justice-iam-service (5.0.0)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from accelbyte_py_sdk.api.iam import public_get_input_validations as public_get_input_validations_internal
from accelbyte_py_sdk.api.iam.models import ModelInputValidationsPublicResponse


@click.command()
@click.option("--default_on_empty", "default_on_empty", type=bool)
@click.option("--language_code", "language_code", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_get_input_validations(
        default_on_empty: Optional[bool] = None,
        language_code: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_get_input_validations_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_get_input_validations_internal(
        default_on_empty=default_on_empty,
        language_code=language_code,
    )
    if error:
        raise Exception(f"PublicGetInputValidations failed: {str(error)}")
    click.echo("PublicGetInputValidations success")