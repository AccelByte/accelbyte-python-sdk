from tests.integration.test_case import IntegrationTestCase
from datetime import datetime


class ChallengeTestCase(IntegrationTestCase):
    @staticmethod
    def do_create_challenge(challenge_code: str, challenge_name: str):
        from accelbyte_py_sdk.api.challenge import admin_create_challenge
        from accelbyte_py_sdk.api.challenge.models import ModelCreateChallengeRequest

        start_time: str = f"{datetime.utcnow().year + 1}-01-01T00:00:00.00Z"

        response, error = admin_create_challenge(
            body=ModelCreateChallengeRequest.create(
                code=challenge_code,
                name=challenge_name,
                description="",
                assignment_rule="FIXED",
                goals_visibility="SHOWALL",
                rotation="DAILY",
                start_date=start_time,
            )
        )

        return response, error

    @staticmethod
    def do_update_challenge_name(challenge_code: str, new_name: str):
        from accelbyte_py_sdk.api.challenge import admin_update_challenge
        from accelbyte_py_sdk.api.challenge.models import ModelUpdateChallengeRequest

        response, error = admin_update_challenge(
            challenge_code=challenge_code,
            body=ModelUpdateChallengeRequest.create(name=new_name),
        )

        return response, error

    @staticmethod
    def do_create_goal(goal_code: str, goal_name: str, challenge_code: str):
        from accelbyte_py_sdk.api.challenge import admin_create_goal
        from accelbyte_py_sdk.api.challenge.models import (
            ModelCreateGoalRequest,
            ModelGoalScheduleRequest,
            ModelRequirement,
            ModelPredicate,
        )

        start_time: str = f"{datetime.utcnow().year + 1}-01-01T00:00:00.00Z"

        response, error = admin_create_goal(
            challenge_code=challenge_code,
            body=ModelCreateGoalRequest.create(
                code=goal_code,
                name=goal_name,
                description="",
                is_active=True,
                schedule=ModelGoalScheduleRequest.create(
                    start_time=start_time, order=1
                ),
                requirement_groups=[
                    ModelRequirement.create(
                        operator="AND",
                        predicates=[
                            ModelPredicate.create(
                                matcher="EQUAL",
                                parameter_type="USERACCOUNT",
                                parameter_name="userAccountVerified",
                                target_value=1,
                            )
                        ],
                    )
                ],
            ),
        )

        return response, error

    # region test:get_challenges

    def test_get_challenges(self):
        from accelbyte_py_sdk.api.challenge import get_challenges

        # arrange

        # act
        response, error = get_challenges()

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_challenges

    # region test:public_get_user_rewards

    def test_public_get_user_rewards(self):
        from accelbyte_py_sdk.api.challenge import public_get_user_rewards

        # arrange

        # act
        response, error = public_get_user_rewards()

        # assert
        self.assertIsNone(error, error)

    # endregion test:public_get_user_rewards

    # region test:challenge_and_goal

    def test_challenge_and_goal(self):
        from accelbyte_py_sdk.core import generate_id
        from accelbyte_py_sdk.api.challenge import (
            admin_get_challenge,
            admin_delete_challenge,
            admin_delete_goal,
        )

        challenge_code = f"python-{generate_id(6)}-challenge"
        challenge_name = "Python Challenge Test"
        goal_code = f"python-{generate_id(6)}-goal"
        goal_name = "Python Goal Test"
        new_challenge_name = "Python Challenge Test UPDATED"

        new_challenge, error = self.do_create_challenge(challenge_code, challenge_name)
        self.assertIsNone(error)
        self.assertEqual(challenge_name, new_challenge.name)

        challenge_data, error = admin_get_challenge(challenge_code=challenge_code)
        self.assertIsNone(error)
        self.assertEqual(challenge_name, challenge_data.name)

        updated_challenge, error = self.do_update_challenge_name(
            challenge_code, new_challenge_name
        )
        self.assertIsNone(error)
        self.assertEqual(new_challenge_name, updated_challenge.name)

        new_goal, error = self.do_create_goal(goal_code, goal_name, challenge_code)
        self.assertIsNone(error)

        _, error = admin_delete_goal(challenge_code=challenge_code, code=goal_code)
        self.assertIsNone(error)

        _, error = admin_delete_challenge(challenge_code=challenge_code)
        self.assertIsNone(error)

    # endregion test:# region test:challenge_and_goal

    # end of file
