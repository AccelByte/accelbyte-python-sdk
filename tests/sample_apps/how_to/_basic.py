from typing import Optional

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.basic.models import UserProfilePrivateCreate
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateInfo


class BasicTestCase(IntegrationTestCase):

    user_id: Optional[str] = None
    user_profile_private_create: UserProfilePrivateCreate = UserProfilePrivateCreate.create(
        first_name="First",
        last_name="Last"
    )

    # noinspection PyMethodMayBeStatic
    def do_create_my_profile(self, body: Optional[UserProfilePrivateCreate] = None):
        # pylint: disable=no-self-use
        from accelbyte_py_sdk.api.basic import create_my_profile
        from accelbyte_py_sdk.api.basic.models import ErrorEntity

        result, error = create_my_profile(body=body)

        user_id: Optional[str] = None

        if error is None:
            user_id = result.user_id
        else:
            # NOTE(elmer): even if this test fails, try to extract the user id, so it can be deleted in tearDown()
            if isinstance(error, ErrorEntity) and \
                    hasattr(error, "message_variables") and \
                    error.message_variables is not None and \
                    "userId" in error.message_variables:
                user_id = error.message_variables["userId"]

        return result, error, user_id

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.basic import delete_user_profile

        if self.user_id is not None:
            _, error = delete_user_profile(user_id=self.user_id)
            self.log_warning(msg=f"Failed to tear down user profile. {str(error)}", condition=error is not None)
            self.user_id = None
        super().tearDown()

    def test_create_my_profile(self):
        # arrange
        # NOTE(elmer): can't delete, need user id

        # act
        _, error, user_id = self.do_create_my_profile(body=self.user_profile_private_create)
        self.user_id = user_id

        # assert
        self.assertIsNone(error, error)

    def test_delete_user_profile(self):
        from accelbyte_py_sdk.api.basic import delete_user_profile

        # arrange
        _, error, user_id = self.do_create_my_profile(body=self.user_profile_private_create)
        self.log_warning(msg=f"Failed to set up user profile. {str(error)}", condition=error is not None)
        self.user_id = user_id

        # act
        result, error = delete_user_profile(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)
        self.user_id = None

    def test_get_user_profile(self):
        from accelbyte_py_sdk.api.basic import public_get_user_profile_info

        # arrange
        _, error, user_id = self.do_create_my_profile(body=self.user_profile_private_create)
        self.log_warning(msg=f"Failed to set up user profile. {str(error)}", condition=error is not None)
        self.user_id = user_id

        # act
        result, error = public_get_user_profile_info(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)

    def test_public_update_user_profile(self):
        from accelbyte_py_sdk.api.basic import public_update_user_profile
        from accelbyte_py_sdk.api.basic.models import UserProfileUpdate

        # arrange
        _, error, user_id = self.do_create_my_profile(body=self.user_profile_private_create)
        self.log_warning(msg=f"Failed to set up user profile. {str(error)}", condition=error is not None)
        self.user_id = user_id

        # act
        result, error = public_update_user_profile(
            user_id=self.user_id,
            body=UserProfileUpdate.create(
                first_name="Pertama",
                last_name="Terakhir"
            )
        )

        # assert
        self.assertIsNone(error, error)
        self.assertEqual("Pertama", result.first_name)
        self.assertEqual("Terakhir", result.last_name)
