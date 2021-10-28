import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import retrieve_sso_login_platform_credential as retrieve_sso_login_platform_credential_internal
from ....api.iam.models import ModelSSOPlatformCredentialResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def retrieve_sso_login_platform_credential(
        platform_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(retrieve_sso_login_platform_credential_internal.__doc__)
    result, error = retrieve_sso_login_platform_credential_internal(
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"RetrieveSSOLoginPlatformCredential failed: {str(error)}")
    click.echo("RetrieveSSOLoginPlatformCredential success")
