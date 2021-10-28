import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_upgrade_headless_account_with_verification_code_v4 as public_upgrade_headless_account_with_verification_code_v4_internal
from ....api.iam.models import AccountUserResponseV4
from ....api.iam.models import AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_upgrade_headless_account_with_verification_code_v4(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_upgrade_headless_account_with_verification_code_v4_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_upgrade_headless_account_with_verification_code_v4_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicUpgradeHeadlessAccountWithVerificationCodeV4 failed: {str(error)}")
    click.echo("PublicUpgradeHeadlessAccountWithVerificationCodeV4 success")
