from ._integration_test_case import IntegrationTestCase


class LegalTestCase(IntegrationTestCase):

    def setUp(self) -> None:
        from accelbyte_py_sdk.services.auth import login_user

        super().setUp()
        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, error)

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
        self.assertTrue(result)
        self.assertIsNotNone(result[0])

        accepted_agreement: RetrieveAcceptedAgreementResponse = result[0]
        self.assertIsInstance(accepted_agreement, RetrieveAcceptedAgreementResponse)

        policy_id: str = accepted_agreement.policy_id
        self.assertIsNotNone(policy_id)

        localized_policy_version: LocalizedPolicyVersionObject = accepted_agreement.localized_policy_version
        self.assertIsNotNone(localized_policy_version)

        localized_policy_version_id: str = localized_policy_version.id_
        self.assertIsNotNone(localized_policy_version_id)

        accept_agreement_request = AcceptAgreementRequest.create(
            is_accepted=True,
            localized_policy_version_id=localized_policy_version_id,
            policy_id=policy_id,
            policy_version_id=policy_id
        )

        # act
        _, error = bulk_accept_versioned_policy(body=[accept_agreement_request])

        # assert
        self.assertIsNone(error, error)

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
        self.assertTrue(result)
        self.assertIsNotNone(result[0])

        accepted_agreement: RetrieveAcceptedAgreementResponse = result[0]
        self.assertIsInstance(accepted_agreement, RetrieveAcceptedAgreementResponse)

        policy_id: str = accepted_agreement.policy_id
        self.assertIsNotNone(policy_id)

        localized_policy_version: LocalizedPolicyVersionObject = accepted_agreement.localized_policy_version
        self.assertIsNotNone(localized_policy_version)

        localized_policy_version_id: str = localized_policy_version.id_
        self.assertIsNotNone(localized_policy_version_id)

        accept_agreement_request = AcceptAgreementRequest.create(
            is_accepted=True,
            localized_policy_version_id=localized_policy_version_id,
            policy_id=policy_id,
            policy_version_id=policy_id
        )

        # act
        _, error = change_preference_consent(body=[accept_agreement_request])

        # assert
        self.assertIsNone(error, error)

    def test_retrieve_agreements_public(self):
        from accelbyte_py_sdk.api.legal import retrieve_agreements_public

        # arrange

        # act
        result, error = retrieve_agreements_public()
        self.assertIsNone(error, error)

        # assert
        self.assertIsNotNone(result)
        self.assertIsInstance(result, list)
