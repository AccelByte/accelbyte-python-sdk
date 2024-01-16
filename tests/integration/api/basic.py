from datetime import timedelta
from typing import Optional

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.basic.models import UserProfilePrivateCreate


class BasicTestCase(IntegrationTestCase):
    user_profile_private_create: UserProfilePrivateCreate = (
        UserProfilePrivateCreate.create(first_name="First", last_name="Last")
    )

    @classmethod
    def setUpClass(cls) -> None:
        super().setUpClass()

        from accelbyte_py_sdk.services.auth import login_user
        from accelbyte_py_sdk.core import get_http_client
        from accelbyte_py_sdk.core import ConstantHttpBackoffPolicy

        # re-logins whenever a request fails
        def re_login_retry_policy(
            request,
            response,
            /,
            *,
            retries: int = 0,
            elapsed: Optional[timedelta] = None,
            **kwargs,
        ) -> bool:
            if cls.username and cls.password:
                login_user(cls.username, cls.password)
            return retries < 3

        http_client = get_http_client()
        http_client.backoff_policy = ConstantHttpBackoffPolicy(1.0)
        http_client.retry_policy = re_login_retry_policy

    def do_create_my_profile(self, body: Optional[UserProfilePrivateCreate] = None):
        from accelbyte_py_sdk.api.basic import create_my_profile

        self.do_delete_my_profile()

        result, error = create_my_profile(body=body)

        return result, error

    def do_delete_my_profile(self):
        from accelbyte_py_sdk.api.basic import get_my_profile_info
        from accelbyte_py_sdk.api.basic import delete_user_profile

        result, error = get_my_profile_info()

        if error is None and result is not None and result.user_id is not None:
            _, error = delete_user_profile(user_id=result.user_id)
            self.log_warning(
                msg=f"Failed to tear down user profile. {str(error)}",
                condition=error is not None,
            )

    def tearDown(self) -> None:
        self.do_delete_my_profile()
        super().tearDown()

    # region test:create_my_profile

    def test_create_my_profile(self):
        # arrange
        self.login_user()  # force re-login: token is revoked

        # act
        _, error = self.do_create_my_profile(body=self.user_profile_private_create)

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_my_profile

    # region test:delete_user_profile

    def test_delete_user_profile(self):
        from accelbyte_py_sdk.api.basic import delete_user_profile

        # arrange
        result, error = self.do_create_my_profile(body=self.user_profile_private_create)
        if error:
            self.skipTest(reason=f"Failed to set up user profile. {str(error)}")
            return
        user_id = result.user_id

        # act
        result, error = delete_user_profile(user_id=user_id)

        # assert
        self.assertIsNone(error, error)

    # endregion test:delete_user_profile

    # region test:get_user_profile

    def test_get_user_profile(self):
        from accelbyte_py_sdk.api.basic import public_get_user_profile_info

        # arrange
        result, error = self.do_create_my_profile(body=self.user_profile_private_create)
        if error:
            self.skipTest(reason=f"Failed to set up user profile. {str(error)}")
            return
        user_id = result.user_id

        # act
        result, error = public_get_user_profile_info(user_id=user_id)

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_user_profile

    # region test:public_update_user_profile

    def test_public_update_user_profile(self):
        from accelbyte_py_sdk.api.basic import public_update_user_profile
        from accelbyte_py_sdk.api.basic.models import UserProfileUpdate

        # arrange
        result, error = self.do_create_my_profile(body=self.user_profile_private_create)
        if error:
            self.skipTest(reason=f"Failed to set up user profile. {str(error)}")
            return
        user_id = result.user_id

        # act
        result, error = public_update_user_profile(
            user_id=user_id,
            body=UserProfileUpdate.create(first_name="Pertama", last_name="Terakhir"),
        )

        # assert
        self.assertIsNone(error, error)
        self.assertEqual("Pertama", result.first_name)
        self.assertEqual("Terakhir", result.last_name)

    # endregion test:public_update_user_profile

    # end of file
