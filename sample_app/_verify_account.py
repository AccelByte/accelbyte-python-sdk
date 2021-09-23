import click

from accelbyte_py_sdk.api.iam import admin_verify_account_v3
from accelbyte_py_sdk.api.iam.models import ModelUserVerificationRequest

from ._utils import login_user


@click.command()
@click.argument("user_id")
@click.argument("code")
@click.argument("contact_type")
@click.argument("language_tag")
@click.option("--namespace")
@click.option("--doc", type=bool)
def verify_account(
        user_id,
        code,
        contact_type,
        language_tag,
        namespace,
        doc,
):
    login_user(None, None)

    if doc:
        click.echo(admin_verify_account_v3.__doc__)
    result, error = admin_verify_account_v3(
        body=ModelUserVerificationRequest.create(
            code=code,
            contact_type=contact_type,
            language_tag=language_tag
        ),
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Verify account success.")
