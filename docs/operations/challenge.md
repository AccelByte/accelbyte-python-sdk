[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Challenge Service Index (1.4.0)


## Operations

### Challenge Configuration
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /challenge/v1/admin/namespaces/{namespace}/challenges | POST | adminCreateChallenge | `false` | [AdminCreateChallenge](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_create_challenge.py) | [admin_create_challenge](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-create-challenge](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_create_challenge.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode} | DELETE | adminDeleteChallenge | `false` | [AdminDeleteChallenge](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_delete_challenge.py) | [admin_delete_challenge](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-delete-challenge](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_delete_challenge.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied | DELETE | adminDeleteTiedChallenge | `false` | [AdminDeleteTiedChallenge](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_delete_tied_challenge.py) | [admin_delete_tied_challenge](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-delete-tied-challenge](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_delete_tied_challenge.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode} | GET | adminGetChallenge | `false` | [AdminGetChallenge](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_get_challenge.py) | [admin_get_challenge](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-get-challenge](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_get_challenge.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges | GET | adminGetChallenges | `false` | [AdminGetChallenges](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_get_challenges.py) | [admin_get_challenges](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-get-challenges](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_get_challenges.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods | GET | adminGetPeriods | `false` | [AdminGetPeriods](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_get_periods.py) | [admin_get_periods](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-get-periods](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_get_periods.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize | POST | adminRandomizeChallenge | `false` | [AdminRandomizeChallenge](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_randomize_challenge.py) | [admin_randomize_challenge](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-randomize-challenge](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_randomize_challenge.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode} | PUT | adminUpdateChallenge | `false` | [AdminUpdateChallenge](../../accelbyte_py_sdk/api/challenge/operations/challenge_configuration/admin_update_challenge.py) | [admin_update_challenge](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-update-challenge](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_update_challenge.py) |

### Challenge List
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /challenge/v1/public/namespaces/{namespace}/challenges | GET | GetChallenges | `false` | [GetChallenges](../../accelbyte_py_sdk/api/challenge/operations/challenge_list/get_challenges.py) | [get_challenges](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_list.py) | [accelbyte_py_sdk_cli challenge-get-challenges](../../samples/cli/accelbyte_py_sdk_cli/challenge/_get_challenges.py) |
| /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals | GET | publicGetScheduledGoals | `false` | [PublicGetScheduledGoals](../../accelbyte_py_sdk/api/challenge/operations/challenge_list/public_get_scheduled_goals.py) | [public_get_scheduled_goals](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_list.py) | [accelbyte_py_sdk_cli challenge-public-get-scheduled-goals](../../samples/cli/accelbyte_py_sdk_cli/challenge/_public_get_scheduled_goals.py) |

### Challenge Progression
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /challenge/v1/admin/namespaces/{namespace}/progress/evaluate | POST | adminEvaluateProgress | `false` | [AdminEvaluateProgress](../../accelbyte_py_sdk/api/challenge/operations/challenge_progression/admin_evaluate_progress.py) | [admin_evaluate_progress](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_progression.py) | [accelbyte_py_sdk_cli challenge-admin-evaluate-progress](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_evaluate_progress.py) |
| /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate | POST | EvaluateMyProgress | `false` | [EvaluateMyProgress](../../accelbyte_py_sdk/api/challenge/operations/challenge_progression/evaluate_my_progress.py) | [evaluate_my_progress](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_progression.py) | [accelbyte_py_sdk_cli challenge-evaluate-my-progress](../../samples/cli/accelbyte_py_sdk_cli/challenge/_evaluate_my_progress.py) |
| /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode} | GET | publicGetUserProgression | `false` | [PublicGetUserProgression](../../accelbyte_py_sdk/api/challenge/operations/challenge_progression/public_get_user_progression.py) | [public_get_user_progression](../../accelbyte_py_sdk/api/challenge/wrappers/_challenge_progression.py) | [accelbyte_py_sdk_cli challenge-public-get-user-progression](../../samples/cli/accelbyte_py_sdk_cli/challenge/_public_get_user_progression.py) |

### Goal Configuration
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals | POST | adminCreateGoal | `false` | [AdminCreateGoal](../../accelbyte_py_sdk/api/challenge/operations/goal_configuration/admin_create_goal.py) | [admin_create_goal](../../accelbyte_py_sdk/api/challenge/wrappers/_goal_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-create-goal](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_create_goal.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code} | DELETE | adminDeleteGoal | `false` | [AdminDeleteGoal](../../accelbyte_py_sdk/api/challenge/operations/goal_configuration/admin_delete_goal.py) | [admin_delete_goal](../../accelbyte_py_sdk/api/challenge/wrappers/_goal_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-delete-goal](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_delete_goal.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code} | GET | adminGetGoal | `false` | [AdminGetGoal](../../accelbyte_py_sdk/api/challenge/operations/goal_configuration/admin_get_goal.py) | [admin_get_goal](../../accelbyte_py_sdk/api/challenge/wrappers/_goal_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-get-goal](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_get_goal.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals | GET | adminGetGoals | `false` | [AdminGetGoals](../../accelbyte_py_sdk/api/challenge/operations/goal_configuration/admin_get_goals.py) | [admin_get_goals](../../accelbyte_py_sdk/api/challenge/wrappers/_goal_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-get-goals](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_get_goals.py) |
| /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code} | PUT | adminUpdateGoals | `false` | [AdminUpdateGoals](../../accelbyte_py_sdk/api/challenge/operations/goal_configuration/admin_update_goals.py) | [admin_update_goals](../../accelbyte_py_sdk/api/challenge/wrappers/_goal_configuration.py) | [accelbyte_py_sdk_cli challenge-admin-update-goals](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_update_goals.py) |

### Player Reward
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards | GET | adminGetUserRewards | `false` | [AdminGetUserRewards](../../accelbyte_py_sdk/api/challenge/operations/player_reward/admin_get_user_rewards.py) | [admin_get_user_rewards](../../accelbyte_py_sdk/api/challenge/wrappers/_player_reward.py) | [accelbyte_py_sdk_cli challenge-admin-get-user-rewards](../../samples/cli/accelbyte_py_sdk_cli/challenge/_admin_get_user_rewards.py) |
| /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim | POST | publicClaimUserRewards | `false` | [PublicClaimUserRewards](../../accelbyte_py_sdk/api/challenge/operations/player_reward/public_claim_user_rewards.py) | [public_claim_user_rewards](../../accelbyte_py_sdk/api/challenge/wrappers/_player_reward.py) | [accelbyte_py_sdk_cli challenge-public-claim-user-rewards](../../samples/cli/accelbyte_py_sdk_cli/challenge/_public_claim_user_rewards.py) |
| /challenge/v1/public/namespaces/{namespace}/users/me/rewards | GET | publicGetUserRewards | `false` | [PublicGetUserRewards](../../accelbyte_py_sdk/api/challenge/operations/player_reward/public_get_user_rewards.py) | [public_get_user_rewards](../../accelbyte_py_sdk/api/challenge/wrappers/_player_reward.py) | [accelbyte_py_sdk_cli challenge-public-get-user-rewards](../../samples/cli/accelbyte_py_sdk_cli/challenge/_public_get_user_rewards.py) |


## Models
| Model | Class |
|---|---|
| iam.ErrorResponse | [IamErrorResponse](../../accelbyte_py_sdk/api/challenge/models/iam_error_response.py) |
| model.ChallengeResponse | [ModelChallengeResponse](../../accelbyte_py_sdk/api/challenge/models/model_challenge_response.py) |
| model.ClaimUserRewardsReq | [ModelClaimUserRewardsReq](../../accelbyte_py_sdk/api/challenge/models/model_claim_user_rewards_req.py) |
| model.CreateChallengeRequest | [ModelCreateChallengeRequest](../../accelbyte_py_sdk/api/challenge/models/model_create_challenge_request.py) |
| model.CreateGoalRequest | [ModelCreateGoalRequest](../../accelbyte_py_sdk/api/challenge/models/model_create_goal_request.py) |
| model.EvaluatePlayerProgressionRequest | [ModelEvaluatePlayerProgressionRequest](../../accelbyte_py_sdk/api/challenge/models/model_evaluate_player_progression_request.py) |
| model.GetGoalsResponse | [ModelGetGoalsResponse](../../accelbyte_py_sdk/api/challenge/models/model_get_goals_response.py) |
| model.GoalMeta | [ModelGoalMeta](../../accelbyte_py_sdk/api/challenge/models/model_goal_meta.py) |
| model.GoalOrder | [ModelGoalOrder](../../accelbyte_py_sdk/api/challenge/models/model_goal_order.py) |
| model.GoalProgressionResponse | [ModelGoalProgressionResponse](../../accelbyte_py_sdk/api/challenge/models/model_goal_progression_response.py) |
| model.GoalResponse | [ModelGoalResponse](../../accelbyte_py_sdk/api/challenge/models/model_goal_response.py) |
| model.GoalSchedule | [ModelGoalSchedule](../../accelbyte_py_sdk/api/challenge/models/model_goal_schedule.py) |
| model.ListChallengeResponse | [ModelListChallengeResponse](../../accelbyte_py_sdk/api/challenge/models/model_list_challenge_response.py) |
| model.ListPeriodsResponse | [ModelListPeriodsResponse](../../accelbyte_py_sdk/api/challenge/models/model_list_periods_response.py) |
| model.ListUserRewardsResponse | [ModelListUserRewardsResponse](../../accelbyte_py_sdk/api/challenge/models/model_list_user_rewards_response.py) |
| model.Pagination | [ModelPagination](../../accelbyte_py_sdk/api/challenge/models/model_pagination.py) |
| model.Predicate | [ModelPredicate](../../accelbyte_py_sdk/api/challenge/models/model_predicate.py) |
| model.Requirement | [ModelRequirement](../../accelbyte_py_sdk/api/challenge/models/model_requirement.py) |
| model.RequirementProgressionResponse | [ModelRequirementProgressionResponse](../../accelbyte_py_sdk/api/challenge/models/model_requirement_progression_response.py) |
| model.Reward | [ModelReward](../../accelbyte_py_sdk/api/challenge/models/model_reward.py) |
| model.Schedule | [ModelSchedule](../../accelbyte_py_sdk/api/challenge/models/model_schedule.py) |
| model.UpdateGoalRequest | [ModelUpdateGoalRequest](../../accelbyte_py_sdk/api/challenge/models/model_update_goal_request.py) |
| model.UserProgressionResponse | [ModelUserProgressionResponse](../../accelbyte_py_sdk/api/challenge/models/model_user_progression_response.py) |
| model.UserProgressionResponseMeta | [ModelUserProgressionResponseMeta](../../accelbyte_py_sdk/api/challenge/models/model_user_progression_response_meta.py) |
| model.UserReward | [ModelUserReward](../../accelbyte_py_sdk/api/challenge/models/model_user_reward.py) |
| models.Period | [ModelsPeriod](../../accelbyte_py_sdk/api/challenge/models/models_period.py) |
| models.UpdateChallengeRequest | [ModelsUpdateChallengeRequest](../../accelbyte_py_sdk/api/challenge/models/models_update_challenge_request.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/challenge/models/response_error.py) |
