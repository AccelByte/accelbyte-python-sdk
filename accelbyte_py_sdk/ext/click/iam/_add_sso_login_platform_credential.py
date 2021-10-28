import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import add_sso_login_platform_credential as add_sso_login_platform_credential_internal
from ....api.iam.models import ModelSSOPlatformCredentialRequest
from ....api.iam.models import ModelSSOPlatformCredentialResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_sso_login_platform_credential(
        body: str,
        platform_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(add_sso_login_platform_credential_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelSSOPlatformCredentialRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = add_sso_login_platform_credential_internal(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AddSSOLoginPlatformCredential failed: {str(error)}")
    click.echo("AddSSOLoginPlatformCredential success")
