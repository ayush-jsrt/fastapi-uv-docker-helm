<!-- markdownlint-configure-file {
  "MD013": {
    "code_blocks": false,
    "tables": false
  },
  "MD033": false,
  "MD041": false
} -->

<div align="center" markdown="1">

# Helmfile

[![Tests](https://github.com/helmfile/helmfile/actions/workflows/ci.yaml/badge.svg?branch=main)](https://github.com/helmfile/helmfile/actions/workflows/ci.yaml?query=branch%3Amain)
[![Container Image Repository on GHCR](https://ghcr-badge.egpl.dev/helmfile/helmfile/latest_tag?trim=major&label=latest "Docker Repository on ghcr")](https://github.com/helmfile/helmfile/pkgs/container/helmfile)
[![Go Report Card](https://goreportcard.com/badge/github.com/helmfile/helmfile)](https://goreportcard.com/report/github.com/helmfile/helmfile)
[![Slack Community #helmfile](https://slack.sweetops.com/badge.svg)](https://slack.sweetops.com)
[![Documentation](https://readthedocs.org/projects/helmfile/badge/?version=latest&style=flat)](https://helmfile.readthedocs.io/en/latest/)
[![Gurubase](https://img.shields.io/badge/Gurubase-Ask%20Helmfile%20Guru-006BFF)](https://gurubase.io/g/helmfile)

Deploy Kubernetes Helm Charts
<br />

</div>

English | [简体中文](./README-zh_CN.md)

## About

Helmfile is a declarative spec for deploying helm charts. It lets you...

* Keep a directory of chart value files and maintain changes in version control.
* Apply CI/CD to configuration changes.
# fastapi-uv — helmfile quick commands

Render (no Kubernetes cluster):

```bash
# render manifests for an environment (outputs to stdout)
helmfile -e <env> template

# example: save rendered YAML for `dev`
helmfile -e dev template > rendered-dev.yaml
```

Apply (with a configured kubecontext):

```bash
# ensure kubeconfig/context is set
kubectl config current-context

# apply the release
helmfile -e <env> apply

# example: apply `dev`
helmfile -e dev apply
```

Remove / destroy the release:

```bash
helmfile -e <env> destroy
```

Minimal note about secrets:

If you use SOPS-encrypted secret files (under `secrets/`), ensure `sops` is installed and configured; `helmfile` will decrypt them at render/apply time when `helm-secrets` is available.
