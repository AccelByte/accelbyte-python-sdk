from typing import List, Optional

from accelbyte_py_sdk import AccelByteSDK
from accelbyte_py_sdk.api.session.models import ApimodelsCreateGameSessionRequest

from tests.integration.test_case import IntegrationTestCase


class SessionTestCase(IntegrationTestCase):
    template_name: Optional[str] = None
    sdks: List[AccelByteSDK] = []
    user_ids: List[str] = []

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

    def tearDown(self) -> None:
        if self.template_name:
            from accelbyte_py_sdk.api.session import (
                admin_delete_configuration_template_v1,
            )

            _, _ = admin_delete_configuration_template_v1(name=self.template_name)
            self.template_name = None

        for user_id in self.user_ids:
            self.delete_user(user_id=user_id)
        self.user_ids = []

        for sdk in self.sdks:
            sdk.reset()
        self.sdks = []

        super().tearDown()

    # region test:admin_create_configuration_template_v1

    def test_admin_create_configuration_template_v1(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.session import admin_create_configuration_template_v1
        from accelbyte_py_sdk.api.session.models import (
            ApimodelsCreateConfigurationTemplateRequest,
        )

        # arrange
        rid = generate_id(8)
        template_name = f"python_sdk_template_{rid}"

        # act
        error = self.do_create_configuration_template(template_name=template_name)
        if error is None:
            self.template_name = template_name

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_create_configuration_template_v1

    # region test:admin_delete_configuration_template_v1

    def test_admin_delete_configuration_template_v1(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.session import admin_delete_configuration_template_v1

        # arrange
        rid = generate_id(8)
        template_name = f"python_sdk_template_{rid}"
        error = self.do_create_configuration_template(template_name=template_name)
        if error:
            self.skipTest(reason=f"unable to create configuration template: {error}")

        # act
        _, error = admin_delete_configuration_template_v1(name=template_name)
        if error is None:
            self.template_name = None

        # assert
        self.assertIsNone(error, error)

    # endregion test:admin_delete_configuration_template_v1

    # region test:public_query_game_sessions_by_attributes

    def test_public_query_game_sessions(self):
        from accelbyte_py_sdk.api.session import (
            public_query_game_sessions_by_attributes,
        )

        # arrange

        # act
        result, error = public_query_game_sessions_by_attributes(body={})

        # assert
        self.assertIsNone(error, error)

    # endregion test:public_query_game_sessions_by_attributes

    # region test:game_session_flow

    def test_game_session_flow(self):
        from accelbyte_py_sdk.core import SDK, generate_id
        import accelbyte_py_sdk.api.session as session_service
        import accelbyte_py_sdk.api.session.models as session_models

        # arrange
        rid = generate_id(8)
        template_name = f"python_sdk_template_{rid}"
        error = self.do_create_configuration_template(template_name=template_name)
        if error:
            self.skipTest(reason=f"unable to create configuration template: {error}")
        else:
            self.template_name = template_name

        generate_user1_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user1: {error}")
        username1, password1, user_id1 = generate_user1_result
        self.user_ids.append(user_id1)

        generate_user2_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user2: {error}")
        username2, password2, user_id2 = generate_user2_result
        self.user_ids.append(user_id2)

        user_sdk1, error = self.create_user_sdk(
            username=username1,
            password=password1,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user1 sdk: {error}")
        else:
            self.sdks.append(user_sdk1)

        user_sdk2, error = self.create_user_sdk(
            username=username2,
            password=password2,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user2 sdk: {error}")
        else:
            self.sdks.append(user_sdk2)

        # act & assert (create_game_session)
        result, error = session_service.create_game_session(
            body=session_models.ApimodelsCreateGameSessionRequest.create_from_dict(
                {
                    "configurationName": template_name,
                }
            ),
            sdk=user_sdk1,
        )
        self.assertIsNone(error, error)

        if not (game_session_id := getattr(result, "id_", None)):
            self.fail(msg=f"unable to find game session id")

        # act & assert (join_game_sesion)
        result, error = session_service.join_game_session(
            session_id=game_session_id,
            sdk=user_sdk2,
        )
        self.assertIsNone(error, error)

        # act & assert (get_game_session)
        result, error = session_service.get_game_session(
            session_id=game_session_id,
        )
        self.assertIsNone(error, error)
        self.assertEqual(len(result.members), 2)
        user_ids = [member.id_ for member in result.members]
        self.assertIn(user_id1, user_ids)
        self.assertIn(user_id2, user_ids)

    # endregion test:game_session_flow

    # region test:party_flow

    def test_party_flow(self):
        from accelbyte_py_sdk.core import SDK, generate_id
        import accelbyte_py_sdk.api.session as session_service
        import accelbyte_py_sdk.api.session.models as session_models

        # arrange
        rid = generate_id(8)
        template_name = f"python_sdk_template_{rid}"
        error = self.do_create_configuration_template(template_name=template_name)
        if error:
            self.skipTest(reason=f"unable to create configuration template: {error}")
        else:
            self.template_name = template_name

        generate_user1_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user1: {error}")
        username1, password1, user_id1 = generate_user1_result
        self.user_ids.append(user_id1)

        generate_user2_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user2: {error}")
        username2, password2, user_id2 = generate_user2_result
        self.user_ids.append(user_id2)

        user_sdk1, error = self.create_user_sdk(
            username=username1,
            password=password1,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user1 sdk: {error}")
        else:
            self.sdks.append(user_sdk1)

        user_sdk2, error = self.create_user_sdk(
            username=username2,
            password=password2,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user2 sdk: {error}")
        else:
            self.sdks.append(user_sdk2)

        # act & assert (public_create_party)
        result, error = session_service.public_create_party(
            body=session_models.ApimodelsCreatePartyRequest.create_from_dict(
                {
                    "configurationName": template_name,
                    "members": [
                        {
                            "ID": user_id1,
                        }
                    ],
                }
            ),
            sdk=user_sdk1,
        )
        self.assertIsNone(error, error)

        if not (party_id := getattr(result, "id_", None)):
            self.fail(msg=f"unable to find party id")

        if not (party_code := getattr(result, "code", None)):
            self.fail(msg=f"unable to find party code")

        # act & assert (public_party_join_code)
        result, error = session_service.public_party_join_code(
            body=session_models.ApimodelsJoinByCodeRequest.create_from_dict(
                {
                    "code": party_code,
                }
            ),
            sdk=user_sdk2,
        )
        self.assertIsNone(error, error)

        # act & assert (public_get_party)
        result, error = session_service.public_get_party(
            party_id=party_id,
            sdk=user_sdk1,
        )
        self.assertIsNone(error, error)
        self.assertEqual(len(result.members), 2)
        user_ids = [member.id_ for member in result.members]
        self.assertIn(user_id1, user_ids)
        self.assertIn(user_id2, user_ids)

        # act & assert (admin_query_parties)
        result, error = session_service.admin_query_parties(
            leader_id=user_id1,
        )
        self.assertIsNone(error, error)
        party_ids = [party.id_ for party in result.data]
        self.assertIn(party_id, party_ids)

    # endregion test:party_flow

    # end of file
