
Snapshot Basic - Terraform
Setup
Welcome to Terraform in Google Cloud Shell! We need you to let us know what project you'd like to use with Terraform.

Terraform provisions real GCP resources, so anything you create in this session will be billed against this project.

Terraforming!
Let's use {{project-id}} with Terraform! Click the Cloud Shell icon below to copy the command to your shell, and then run it from the shell by pressing Enter/Return. Terraform will pick up the project name from the environment variable.

export GOOGLE_CLOUD_PROJECT={{project-id}}
After that, let's get Terraform started. Run the following to pull in the providers.

terraform init
With the providers downloaded and a project set, you're ready to use Terraform. Go ahead!

terraform apply
Terraform will show you what it plans to do, and prompt you to accept. Type "yes" to accept the plan.

yes
Post-Apply
Editing your config
Now you've provisioned your resources in GCP! If you run a "plan", you should see no changes needed.

terraform plan
So let's make a change! Try editing a number, or appending a value to the name in the editor. Then, run a 'plan' again.

terraform plan
Afterwards you can run an apply, which implicitly does a plan and shows you the intended changes at the 'yes' prompt.

terraform apply
yes
Cleanup
Run the following to remove the resources Terraform provisioned:

terraform destroy
yes
