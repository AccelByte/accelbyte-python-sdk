import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import retrieve_all_third_party_login_platform_credential_v3 as retrieve_all_third_party_login_platform_credential_v3_internal
from ....api.iam.models import ModelThirdPartyLoginPlatformCredentialResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def retrieve_all_third_party_login_platform_credential_v3(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(retrieve_all_third_party_login_platform_credential_v3_internal.__doc__)
    result, error = retrieve_all_third_party_login_platform_credential_v3_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"RetrieveAllThirdPartyLoginPlatformCredentialV3 failed: {str(error)}")
    click.echo("RetrieveAllThirdPartyLoginPlatformCredentialV3 success")
