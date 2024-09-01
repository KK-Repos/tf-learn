
FileName: providers.tf

**required_providers**

It defines the provider plugins that Terraform should use and their versions.

```

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 2.0"
    }
  }
}


```


**provider**

The provider block is used to configure the settings specific to the provider you are using.

```
provider "aws" {
  region  = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

provider "google" {
  project = "my-project"
  region  = "us-central1"
}

```