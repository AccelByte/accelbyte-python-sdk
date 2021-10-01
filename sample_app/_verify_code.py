import json

import click

from accelbyte_py_sdk.api.iam import public_user_verification_v3
from accelbyte_py_sdk.api.iam.models import ModelUserVerificationRequestV3

from accelbyte_py_sdk.api.basic import create_my_profile

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("code")
@click.argument("contact_type")
@click.argument("language_tag")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def verify_code(
        code,
        contact_type,
        language_tag,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_user_verification_v3.__doc__)
    result, error = public_user_verification_v3(
        body=ModelUserVerificationRequestV3.create(
            code=code,
            contact_type=contact_type,
            language_tag=language_tag
        ),
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))

    if doc:
        click.echo(create_my_profile.__doc__)
    result, error = create_my_profile(namespace=namespace)
    if error:
        raise Exception(str(error))
    click.echo("Verify token success.")
