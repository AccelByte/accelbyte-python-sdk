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

    def setUp(self) -> None:
        from accelbyte_py_sdk.services.auth import login_user

        super().setUp()
        _, error = login_user(username=self.username, password=self.password)
        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.basic import delete_user_profile

        if self.user_id is not None:
            _, _ = delete_user_profile(user_id=self.user_id)
            self.user_id = None
        super().tearDown()

    def test_create_my_profile(self):
        from accelbyte_py_sdk.api.basic import create_my_profile
        from accelbyte_py_sdk.api.basic.models import ErrorEntity

        # arrange

        # act
        result, error = create_my_profile(body=self.user_profile_private_create)

        # assert
        if error is not None and \
                isinstance(error, ErrorEntity) and \
                hasattr(error, "message_variables") and \
                error.message_variables is not None and \
                "userId" in error.message_variables:
            self.user_id = error.message_variables["userId"]

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, UserProfilePrivateInfo)
        self.assertIsNotNone(result.user_id)

        self.user_id = result.user_id

    def test_delete_user_profile(self):
        from accelbyte_py_sdk.api.basic import create_my_profile
        from accelbyte_py_sdk.api.basic import delete_user_profile

        # arrange

        result, error = create_my_profile(body=self.user_profile_private_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, UserProfilePrivateInfo)
        self.assertIsNotNone(result.user_id)

        self.user_id = result.user_id

        # act
        result, error = delete_user_profile(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)

        self.user_id = None

    def test_get_user_profile(self):
        from accelbyte_py_sdk.api.basic import create_my_profile
        from accelbyte_py_sdk.api.basic import public_get_user_profile_info

        # arrange
        result, error = create_my_profile(body=self.user_profile_private_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, UserProfilePrivateInfo)
        self.assertIsNotNone(result.user_id)

        self.user_id = result.user_id

        # act
        result, error = public_get_user_profile_info(user_id=self.user_id)

        # assert
        self.assertIsNone(error, error)

    def test_public_update_user_profile(self):
        from accelbyte_py_sdk.api.basic import create_my_profile
        from accelbyte_py_sdk.api.basic import public_update_user_profile
        from accelbyte_py_sdk.api.basic.models import UserProfileUpdate

        # arrange
        result, error = create_my_profile(body=self.user_profile_private_create)
        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertIsInstance(result, UserProfilePrivateInfo)
        self.assertIsNotNone(result.user_id)

        self.user_id = result.user_id

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
