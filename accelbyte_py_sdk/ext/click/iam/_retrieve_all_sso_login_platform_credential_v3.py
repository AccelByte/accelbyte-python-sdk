import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import retrieve_all_sso_login_platform_credential_v3 as retrieve_all_sso_login_platform_credential_v3_internal
from ....api.iam.models import ModelSSOPlatformCredentialResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def retrieve_all_sso_login_platform_credential_v3(
        limit: Optional[int] = None,
        offset: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(retrieve_all_sso_login_platform_credential_v3_internal.__doc__)
    result, error = retrieve_all_sso_login_platform_credential_v3_internal(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"RetrieveAllSSOLoginPlatformCredentialV3 failed: {str(error)}")
    click.echo("RetrieveAllSSOLoginPlatformCredentialV3 success")
