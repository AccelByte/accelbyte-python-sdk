from typing import List, Optional

from accelbyte_py_sdk import AccelByteSDK

from tests.integration.test_case import IntegrationTestCase


class Match2TestCase(IntegrationTestCase):
    match_pool_name: Optional[str] = None
    rule_set_name: Optional[str] = None
    sdks: List[AccelByteSDK] = []
    session_template_name: Optional[str] = None
    user_id: Optional[str] = None

    @staticmethod
    def do_create_configuration_template(template_name: str):
        from accelbyte_py_sdk.api.session import admin_create_configuration_template_v1
        from accelbyte_py_sdk.api.session.models import (
            ApimodelsCreateConfigurationTemplateRequest,
        )

        _, error = admin_create_configuration_template_v1(
            body=ApimodelsCreateConfigurationTemplateRequest.create(
                client_version="1.0.0",
                deployment="",
                inactive_timeout=60,
                invite_timeout=60,
                joinability="OPEN",
                max_players=2,
                min_players=2,
                name=template_name,
                persistent=False,
                requested_regions=["us-west-2"],
                text_chat=False,
                type_="P2P",
            )
        )

        return error

    @staticmethod
    def do_create_rule_set(rule_set_name: str):
        from accelbyte_py_sdk.api.match2 import create_rule_set
        from accelbyte_py_sdk.api.match2.models import ApiRuleSetPayload

        rule_set_data = {
            "alliance": {
                "min_number": 2,
                "max_number": 10,
                "player_min_number": 2,
                "player_max_number": 4,
            },
            "matchingRules": [
                {"attribute": "", "criteria": "distance", "reference": ""}
            ],
            "flexingRules": [
                {
                    "duration": 600,
                    "attribute": "",
                    "criteria": "distance",
                    "reference": "",
                }
            ],
            "match_options": {"options": [{"name": "myopt", "type": "any"}]},
            "alliance_flexing_rule": [
                {
                    "duration": 600,
                    "min_number": 1,
                    "max_number": 2,
                    "player_min_number": 1,
                    "player_max_number": 2,
                }
            ],
        }

        _, error = create_rule_set(
            body=ApiRuleSetPayload.create(
                data=rule_set_data,
                enable_custom_match_function=False,
                name=rule_set_name,
            )
        )

        return error

    @staticmethod
    def do_create_match_pool(
        match_pool_name: str, rule_set_name: str, session_template_name: str
    ):
        from accelbyte_py_sdk.api.match2 import create_match_pool
        from accelbyte_py_sdk.api.match2.models import (
            ApiMatchPool,
            ApiMatchFunctionOverride,
        )

        error = Match2TestCase.do_create_configuration_template(
            template_name=session_template_name
        )
        if error:
            return f"unable to create configuration template: {error}", None

        error = Match2TestCase.do_create_rule_set(rule_set_name=rule_set_name)
        if error:
            return f"unable to create rule set: {error}", None

        _, error = create_match_pool(
            body=ApiMatchPool.create(
                auto_accept_backfill_proposal=True,
                backfill_proposal_expiration_seconds=600,
                backfill_ticket_expiration_seconds=600,
                match_function="basic",
                match_function_override=ApiMatchFunctionOverride.create(),
                name=match_pool_name,
                rule_set=rule_set_name,
                session_template=session_template_name,
                ticket_expiration_seconds=600,
            )
        )
        return None, error

    def tearDown(self) -> None:
        if self.match_pool_name:
            from accelbyte_py_sdk.api.match2 import delete_match_pool

            _, _ = delete_match_pool(pool=self.match_pool_name)
            self.match_pool_name = None

        if self.rule_set_name:
            from accelbyte_py_sdk.api.match2 import delete_rule_set

            _, _ = delete_rule_set(ruleset=self.rule_set_name)
            self.rule_set_name = None

        if self.session_template_name:
            from accelbyte_py_sdk.api.session import (
                admin_delete_configuration_template_v1,
            )

            _, _ = admin_delete_configuration_template_v1(
                name=self.session_template_name
            )
            self.session_template_name = None

        if self.user_id:
            self.delete_user(user_id=self.user_id)
            self.user_id = None

        for sdk in self.sdks:
            sdk.reset()
        self.sdks = []

        super().tearDown()

    # region test:create_and_get_ruleset

    def test_create_and_get_ruleset(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.match2 import rule_set_details

        # arrange
        rid = generate_id(8)
        rule_set_name = f"python_sdk_ruleset_{rid}"

        # act
        error = Match2TestCase.do_create_rule_set(rule_set_name=rule_set_name)
        if error:
            self.skipTest(reason=f"Unable to create rule set: {error}")
            return
        if error is None:
            self.rule_set_name = rule_set_name

        result, error = rule_set_details(ruleset=rule_set_name)

        # assert
        self.assertIsNone(error, error)
        self.assertEqual(rule_set_name, result.name)

    # endregion test:create_and_get_ruleset

    # region test:create_and_get_match_pool

    def test_create_and_get_match_pool(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.match2 import rule_set_details

        # arrange
        rid = generate_id(8)
        match_pool_name = f"python_sdk_pool_{rid}"
        rule_set_name = f"python_sdk_ruleset_{rid}"
        session_template_name = f"python_sdk_template_{rid}"

        # act
        pre_error, error = self.do_create_match_pool(
            match_pool_name=match_pool_name,
            rule_set_name=rule_set_name,
            session_template_name=session_template_name,
        )
        if pre_error:
            self.skipTest(reason=pre_error)
        if error is None:
            self.match_pool_name = match_pool_name
            self.rule_set_name = rule_set_name
            self.session_template_name = session_template_name

        result, error = rule_set_details(ruleset=rule_set_name)

        # assert
        self.assertIsNone(error, error)
        self.assertEqual(rule_set_name, result.name)

    # endregion test:create_and_get_match_pool

    # region test:create_match_pool

    def test_create_match_pool(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.match2 import match_pool_details

        # arrange
        rid = generate_id(8)
        match_pool_name = f"python_sdk_pool_{rid}"
        rule_set_name = f"python_sdk_ruleset_{rid}"
        session_template_name = f"python_sdk_template_{rid}"

        # act
        pre_error, error = self.do_create_match_pool(
            match_pool_name=match_pool_name,
            rule_set_name=rule_set_name,
            session_template_name=session_template_name,
        )
        if pre_error:
            self.skipTest(reason=pre_error)
        if error is None:
            self.match_pool_name = match_pool_name
            self.rule_set_name = rule_set_name
            self.session_template_name = session_template_name

        result, error = match_pool_details(pool=match_pool_name)

        # assert
        self.assertIsNone(error, error)
        self.assertEqual(match_pool_name, result.name)

    # endregion test:create_match_pool

    # region test:delete_match_pool

    def test_delete_match_pool(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.match2 import delete_match_pool

        # arrange
        rid = generate_id(8)
        match_pool_name = f"python_sdk_pool_{rid}"
        rule_set_name = f"python_sdk_ruleset_{rid}"
        session_template_name = f"python_sdk_template_{rid}"
        pre_error, error = self.do_create_match_pool(
            match_pool_name=match_pool_name,
            rule_set_name=rule_set_name,
            session_template_name=session_template_name,
        )
        if pre_error:
            self.skipTest(reason=pre_error)
        if error:
            self.skipTest(reason=f"unable to create match pool: {error}")
        else:
            self.match_pool_name = match_pool_name
            self.rule_set_name = rule_set_name
            self.session_template_name = session_template_name

        # act
        _, error = delete_match_pool(pool=match_pool_name)
        if error is None:
            self.match_pool_name = None

        # assert
        self.assertIsNone(error, error)

    # endregion test:delete_match_pool

    # region test:create_delete_match_ticket

    def test_create_delete_match_ticket(self):
        from accelbyte_py_sdk.core import SDK
        from accelbyte_py_sdk.core import generate_id
        import accelbyte_py_sdk.api.match2 as match2_service
        import accelbyte_py_sdk.api.match2.models as match2_models
        import accelbyte_py_sdk.api.session as session_service
        import accelbyte_py_sdk.api.session.models as session_models

        # arrange
        rid = generate_id(8)
        match_pool_name = f"python_sdk_pool_{rid}"
        rule_set_name = f"python_sdk_ruleset_{rid}"
        session_template_name = f"python_sdk_template_{rid}"
        pre_error, error = self.do_create_match_pool(
            match_pool_name=match_pool_name,
            rule_set_name=rule_set_name,
            session_template_name=session_template_name,
        )
        if pre_error:
            self.skipTest(reason=pre_error)
        if error:
            self.skipTest(reason=f"unable to create match pool: {error}")
        else:
            self.match_pool_name = match_pool_name
            self.rule_set_name = rule_set_name
            self.session_template_name = session_template_name

        generate_user_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user: {error}")

        username, password, user_id = generate_user_result
        self.user_id = user_id

        user_sdk, error = self.create_user_sdk(
            username=username,
            password=password,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user sdk: {error}")
        else:
            self.sdks.append(user_sdk)

        result, error = session_service.public_create_party(
            body=session_models.ApimodelsCreatePartyRequest.create_from_dict(
                {
                    "configurationName": session_template_name,
                    "members": [
                        {"ID": user_id},
                    ],
                }
            ),
            sdk=user_sdk,
        )
        if error:
            self.skipTest(reason=f"unable to create party: {error}")

        if not (party_id := getattr(result, "id_", None)):
            self.skipTest(reason=f"unable to find party id: {error}")

        # act & assert (create_match_ticket)
        result, error = match2_service.create_match_ticket(
            body=match2_models.ApiMatchTicketRequest.create_from_dict(
                {
                    "matchPool": match_pool_name,
                    "sessionID": party_id,
                }
            ),
            sdk=user_sdk,
        )

        self.assertIsNone(error, error)

        if not (match_ticket_id := getattr(result, "match_ticket_id", None)):
            self.fail(msg="unable to find match ticket id")

        # act & assert (delete_match_ticket)
        _, error = match2_service.delete_match_ticket(
            ticketid=match_ticket_id,
            sdk=user_sdk,
        )

        self.assertIsNone(error, error)

        # act & assert (public_party_leave)
        _, error = session_service.public_party_leave(
            party_id=party_id,
            sdk=user_sdk,
        )

        self.assertIsNone(error, error)

    # endregion test:create_delete_match_ticket

    # region test:match_pool_list

    def test_match_pool_list(self):
        from accelbyte_py_sdk.api.match2 import match_pool_list

        # arrange

        # act
        _, error = match_pool_list()

        # assert
        self.assertIsNone(error, error)

    # endregion test:match_pool_list

    # region test:match_function_list

    def test_match_function_list(self):
        from accelbyte_py_sdk.api.match2 import match_function_list

        # arrange

        # act
        result, error = match_function_list()

        # assert
        self.assertIsNone(error, error)

    # endregion test:match_function_list

    # end of file
