# My devops learning journey

[![Repo Size](https://img.shields.io/github/repo-size/kc-clintone/devops)](https://github.com/kc-clintone/devops)
[![Last Commit](https://img.shields.io/github/last-commit/kc-clintone/devops)](https://github.com/kc-clintone/devops/commits/main)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Short, practical starter README for kc-clintone/devops — a learning playground for DevOps tools, automation, and experiments.

Table of contents
- About
- Goals
- Quick start
- Typical workflows
- Contributing
- Roadmap / learning plan
- Resources
- License 
- Contact

About
-----
This repository is a hands-on collection of notes, scripts, configurations, and examples for learning and experimenting with DevOps concepts and tools (CI/CD, Docker, Kubernetes, Terraform, Ansible, monitoring, observability, and more). The owner/maintainer is kc-clintone (they/them).

Goals
-----
- Capture repeatable examples and patterns for common DevOps tasks
- Maintain small, focused demos that are easy to run locally
- Provide reference configurations for CI/CD pipelines, infra-as-code, and container orchestration
- Track learning progress and document lessons learned

Quick start
-----------
Clone the repo:
git clone https://github.com/kc-clintone/devops.git
cd devops

Pick an example and follow its README. Typical examples include:

- Docker example
  cd examples/docker
  docker build -t demo-app .
  docker run --rm -p 8080:8080 demo-app

- Docker Compose
  cd examples/docker
  docker compose up --build

- Terraform example (make sure terraform is installed)
  cd examples/terraform
  terraform init
  terraform plan
  terraform apply

- Ansible example (make sure ansible is installed)
  cd examples/ansible
  ansible-playbook -i inventory playbook.yml

Customize prerequisites and commands in each example's README.

Typical workflows
-----------------
- Local development: run examples in Docker or kind/minikube for k8s experiments
- Infrastructure: author Terraform in /examples/terraform and keep state remote for real projects
- Configuration: keep reusable Ansible roles in /examples/ansible/roles
- CI/CD: create GitHub Actions in /.github/workflows to run linters, tests and publish images
- Tests: lightweight smoke tests in /tests to validate each example

Best practices
- Keep examples small and reproducible — prefer ephemeral local infra for learning
- Use a dedicated remote state backend when working with real cloud infra (S3/GCS + locking)
- Pin tool versions in example READMEs / Dockerfiles
- Use environment files (.env) or Terraform variable files for secrets (never commit secrets)
- Add automated checks (formatting, linting, simple tests) to GitHub Actions

Contributing
------------
Contributions and PRs are welcome.
- File an issue or open a PR with small incremental changes
- Follow this repo's style: document new examples with a README, add a minimal smoke test
- Keep commits focused and write clear commit messages
- If adding credentials or secrets by accident, rotate and remove them immediately and use git history rewrite to purge them

Suggested PR checklist
- [ ] README for the example added/updated
- [ ] Minimal instructions to run locally
- [ ] No secrets committed
- [ ] Tests or verification steps included

Roadmap / learning plan
-----------------------
- Basics: Docker, Docker Compose, containerizing simple apps
- CI/CD: GitHub Actions pipelines for build/test/publish
- IaC: Terraform fundamentals and modularization
- Config mgmt: Ansible intro and role-based examples
- Orchestration: Kubernetes basics, Helm charts, kustomize
- Observability: Prometheus + Grafana demo, logging basics (ELK/Opensearch)
- Security: scanning images, IaC static checks, secrets management
- Advanced: GitOps (ArgoCD/Flux), service mesh (Istio/Linkerd)

Resources
---------
- Official docs:
  - Docker: https://docs.docker.com
  - Terraform: https://www.terraform.io/docs
  - Ansible: https://docs.ansible.com
  - Kubernetes: https://kubernetes.io/docs
  - GitHub Actions: https://docs.github.com/actions
- Learning:
  - Awesome lists for DevOps toolchains and best practices
  - Blog posts and hands-on labs (link relevant posts in /docs as you collect them)

License
-------
MIT 

Contact
-------
Maintainer: kc-clintone
GitHub: https://github.com/kc-clintone
