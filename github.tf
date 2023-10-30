terraform { 
  required_providers { 
    github = { 
      source  = "integrations/github" 
      version = "~> 5.0" 
    } 
  } 
} 
# Configure the GitHub Provider 
provider "github" { 
  token = "give_your_token_here" 
} 
resource "github_repository" "mygithub-test" { 
  name        = "mygithub-test" 
  description = "My awesome codebase" 
  visibility = "public" 
}
