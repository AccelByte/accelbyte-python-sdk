from random import randint
from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.iam.models import AccountCreateUserRequestV4


class LegalTestCase(IntegrationTestCase):
    uid: str = str(randint(0, 1_000_000)).rjust(7, '0')
    user_id: Optional[str] = None
    scope: str = "commerce account social publishing analytics"
    unique_display_name = f"testPythonServerSDKUser_{uid}"
    username = f"testPythonServerSDKUser_{uid}"
    model_user_create_request = AccountCreateUserRequestV4.create(
        auth_type="EMAILPASSWD",
        code="",
        country="US",
        date_of_birth="1990-01-01",
        display_name="Python Extend SDK Test",
        email_address=f"{username}@test.com",
        username=username,
        password="q!w@e#r$azsxdcfv1",
        password_md5_sum="",
        reach_minimum_age=True,
        unique_display_name=unique_display_name,
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

    # region test:create_policy

    def test_create_policy(self):
        from accelbyte_py_sdk.api.legal import (
            create_policy,
            create_policy_version,
            create_localized_policy_version,
            retrieve_all_legal_policies,
            retrieve_all_policy_types,
            retrieve_single_policy_version,
            retrieve_localized_policy_versions,
        )
        from accelbyte_py_sdk.api.legal.models import (
            CreateBasePolicyRequest,
            CreatePolicyVersionRequest,
            CreateLocalizedPolicyVersionRequest,
        )

        # try to find policy

        base_policy_name: str = "Python Extend SDK Test Policy"

        result, error = retrieve_all_legal_policies()
        if error:
            self.skipTest(reason=f"Failed to get all legal policies: {error}")
            return

        target_policy_id: str = ""

        for policy in result:
            if (
                policy.base_policy_name == base_policy_name and
                len(policy.policies) > 0
            ):
                target_policy_id = policy.policies[0].id_
                break

        # policy does not exist, so we create it

        if not target_policy_id:
            result, error = retrieve_all_policy_types(limit=100, offset=0)
            if error:
                self.skipTest(reason=f"Failed to get all policy types: {error}")
                return

            marketing_pref_policy_type_id: str = ""

            for policy_type in result:
                if policy_type.policy_type_name.strip().lower() == "marketing preference":
                    marketing_pref_policy_type_id = policy_type.id_
                    break

            if not marketing_pref_policy_type_id:
                self.skipTest(reason=f"Failed to find marketing policy type.")
                return

            result, error = create_policy(
                body=CreateBasePolicyRequest.create(
                    type_id=marketing_pref_policy_type_id,
                    base_policy_name=base_policy_name,
                    description="Testing Python Extend SDK Legal Endpoints.",
                    namespace=self.namespace,
                    tags=["python", "extend_sdk", "test"],
                    affected_countries=["ID"],
                ),
            )
            if error:
                self.skipTest(reason=f"Failed to create policy: {error}")
                return

            target_policy_id = result.policy_id

        # try to find policy version

        result, error = retrieve_single_policy_version(
            policy_id=target_policy_id,
        )
        if error:
            self.skipTest(reason=f"Failed to get policy versions: {error}")
            return

        target_policy_version_id: str = ""

        if len(result) == 0:
            result, error = create_policy_version(
                policy_id=target_policy_id,
                body=CreatePolicyVersionRequest.create(
                    description="Testing Python Extend SDK Legal Endpoints.",
                    display_version="1.0.0",
                    is_committed=False,
                ),
            )
            if error:
                self.skipTest(reason=f"Failed to create policy version: {error}")
                return

            target_policy_version_id = result.id_
        else:
            target_policy_version_id = result[0].id_

        result, error = retrieve_localized_policy_versions(
            policy_version_id=target_policy_version_id,
        )
        if error:
            self.skipTest(reason=f"Failed to get localized policy versions: {error}")
            return

        target_localized_policy_version_id: str = ""

        if len(result) == 0:
            result, error = create_localized_policy_version(
                policy_version_id=target_policy_version_id,
                body=CreateLocalizedPolicyVersionRequest.create(
                    content_type="Python Extend SDK Legal Content for ID.",
                    description="Testing Python Extend SDK Legal Endpoints.",
                    locale_code="ID",
                )
            )

            if error:
                self.skipTest(reason=f"Failed to create localized policy version: {error}")
                return

            target_localized_policy_version_id = result.id_
        else:
            target_localized_policy_version_id = result[0].id_

        self.assertTrue(target_policy_id, target_policy_id)
        self.assertTrue(target_policy_version_id, target_policy_version_id)
        self.assertTrue(target_localized_policy_version_id, target_localized_policy_version_id)

    # endregion test:create_policy

    # end of file
