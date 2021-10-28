import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_update_age_restriction_config_v2 as admin_update_age_restriction_config_v2_internal
from ....api.iam.models import ModelAgeRestrictionRequest
from ....api.iam.models import ModelAgeRestrictionResponse


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_update_age_restriction_config_v2(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_age_restriction_config_v2_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelAgeRestrictionRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_update_age_restriction_config_v2_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminUpdateAgeRestrictionConfigV2 failed: {str(error)}")
    click.echo("AdminUpdateAgeRestrictionConfigV2 success")
