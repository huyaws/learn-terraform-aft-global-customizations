resource "aws_sfn_state_machine" "aft_account_global_customizations" {
  name       = "aft-account-global-customizations"
  role_arn   = aws_iam_role.aft_states.arn
  definition = templatefile("${path.module}/states/customizations.asl.json", {})
}