# justice-gdpr-service (1.11.3)

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
from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration as delete_admin_email_configuration_internal
from accelbyte_py_sdk.api.gdpr.models import ResponseError


@click.command()
@click.argument("emails", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_admin_email_configuration(
        emails: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_admin_email_configuration_internal.__doc__)
        return
    login_as_internal(login_as)
    if emails is not None:
        try:
            emails_json = json.loads(emails)
            emails = [str(i0) for i0 in emails_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'emails'. {str(e)}") from e
    _, error = delete_admin_email_configuration_internal(
        emails=emails,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteAdminEmailConfiguration failed: {str(error)}")
    click.echo("DeleteAdminEmailConfiguration success")
