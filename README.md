# GCP Project Creation with Terraform

This Terraform script creates a new Google Cloud Platform (GCP) project and enables specified services on it.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) installed and configured.
- A GCP user account with the `resourcemanager.projectCreator` and `billing.user` roles.
- An active GCP billing account.
- An organization ID.

## Configuration

1.  **Create a Service Account:**

    - Go to the [Service Accounts](https://console.cloud.google.com/iam-admin/serviceaccounts) page in the GCP Console.
    - Select your project.
    - Click **Create service account**.
    - Enter a name and description for the service account.
    - Grant the following roles to the service account:
        - `Project Creator`
        - `Billing Account User`
    - Click **Done**.
    - Click the three dots in the **Actions** column for the service account you just created and select **Manage keys**.
    - Click **Add Key** and then **Create new key**.
    - Select **JSON** as the key type and click **Create**. A JSON key file will be downloaded to your computer.

2.  **Clone the repository:**

    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2.  **Create a `terraform.tfvars` file:**

    Copy the example file:

    ```bash
    cp terraform.tfvars.example terraform.tfvars
    ```

    Update the `terraform.tfvars` file with your specific values for `project_id`, `project_name`, `billing_account`, `org_id` (or `folder_id`), and `gcp_auth_file`. You can also customize the list of `services` to be enabled.

## Usage

1.  **Initialize Terraform:**

    ```bash
    terraform init
    ```

2.  **Review the execution plan:**

    ```bash
    terraform plan
    ```

3.  **Apply the changes:**

    ```bash
    terraform apply
    ```

    Enter `yes` when prompted to confirm the changes.

After the script finishes, it will output the `project_id` and `project_number` of the newly created project.
