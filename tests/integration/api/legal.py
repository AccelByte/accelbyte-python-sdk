from random import randint
from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.iam.models import AccountCreateUserRequestV4


class LegalTestCase(IntegrationTestCase):
    user_id: Optional[str] = None
    scope: str = "commerce account social publishing analytics"
    username = f"testPythonServerSDKUser_{str(randint(0, 1_000_000)).rjust(7, '0')}"
    model_user_create_request = AccountCreateUserRequestV4.create(
        auth_type="EMAILPASSWD",
        code="",
        country="US",
        date_of_birth="1990-01-01",
        display_name="Python Server SDK Test",
        email_address=f"{username}@test.com",
        username=username,
        password="q!w@e#r$azsxdcfv1",
        password_md5_sum="",
        reach_minimum_age=True,
    )

    # noinspection PyMethodMayBeStatic
    def do_create_user(self, body: AccountCreateUserRequestV4):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.iam import public_create_user_v4

        result, error = public_create_user_v4(body=body)

        if error is None:
            user_id = result.user_id
        else:
            user_id = None

        return result, error, user_id

    def tearDown(self) -> None:
        if self.user_id is not None:
            self.delete_user(user_id=self.user_id)
            self.user_id = None
        super().tearDown()

    # region test:bulk_accept_versioned_policy

    def test_bulk_accept_versioned_policy(self):
        from accelbyte_py_sdk.api.legal import bulk_accept_versioned_policy
        from accelbyte_py_sdk.api.legal import retrieve_agreements_public
        from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
        from accelbyte_py_sdk.api.legal.models import LocalizedPolicyVersionObject
        from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

        # arrange
        result, error = retrieve_agreements_public()
        self.assertIsNotNone(result)
        self.assertIsInstance(result, list)

        if len(result) == 0:
            self.skipTest(reason="No policy to accept found.")

        accepted_agreement: RetrieveAcceptedAgreementResponse = result[0]
        self.assertIsInstance(accepted_agreement, RetrieveAcceptedAgreementResponse)

        policy_id: str = accepted_agreement.policy_id
        self.assertIsNotNone(policy_id)

        localized_policy_version: LocalizedPolicyVersionObject = (
            accepted_agreement.localized_policy_version
        )
        self.assertIsNotNone(localized_policy_version)

        localized_policy_version_id: str = localized_policy_version.id_
        self.assertIsNotNone(localized_policy_version_id)

        accept_agreement_request = AcceptAgreementRequest.create(
            is_accepted=True,
            localized_policy_version_id=localized_policy_version_id,
            policy_id=policy_id,
            policy_version_id=policy_id,
        )

        # act
        _, error = bulk_accept_versioned_policy(body=[accept_agreement_request])

        # assert
        self.assertIsNone(error, error)

    # endregion test:bulk_accept_versioned_policy

    # region test:change_preference_consent

    def test_change_preference_consent(self):
        from accelbyte_py_sdk.api.legal import change_preference_consent
        from accelbyte_py_sdk.api.legal import retrieve_agreements_public
        from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
        from accelbyte_py_sdk.api.legal.models import LocalizedPolicyVersionObject
        from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

        # arrange
        result, error = retrieve_agreements_public()
        self.assertIsNotNone(result)
        self.assertIsInstance(result, list)

        if len(result) == 0:
            self.skipTest(reason="No policy with 'Marketing Preference' type found.")
        accepted_agreement: RetrieveAcceptedAgreementResponse = next(
            (
                agreement
                for agreement in result
                if isinstance(agreement, RetrieveAcceptedAgreementResponse)
                and agreement.policy_type == "Marketing Preference"
            ),
            None,
        )
        if accepted_agreement is None:
            self.skipTest(reason="No policy with 'Marketing Preference' type found.")

        policy_id: str = accepted_agreement.policy_id
        self.assertIsNotNone(policy_id)

        localized_policy_version: LocalizedPolicyVersionObject = (
            accepted_agreement.localized_policy_version
        )
        self.assertIsNotNone(localized_policy_version)

        localized_policy_version_id: str = localized_policy_version.id_
        self.assertIsNotNone(localized_policy_version_id)

        accept_agreement_request = AcceptAgreementRequest.create(
            is_accepted=True,
            localized_policy_version_id=localized_policy_version_id,
            policy_id=policy_id,
            policy_version_id=policy_id,
        )

        _, error, user_id = self.do_create_user(body=self.model_user_create_request)
        self.log_warning(
            msg=f"Failed to set up user. {str(error)}", condition=error is not None
        )
        self.user_id = user_id

        # act
        _, error = change_preference_consent(
            user_id=self.user_id, body=[accept_agreement_request]
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:change_preference_consent

    # region test:retrieve_agreements_public

    def test_retrieve_agreements_public(self):
        from accelbyte_py_sdk.api.legal import retrieve_agreements_public

        # arrange

        # act
        result, error = retrieve_agreements_public()
        self.assertIsNone(error, error)

        # assert
        self.assertIsNotNone(result)
        self.assertIsInstance(result, list)

    # endregion test:retrieve_agreements_public

    # end of file
