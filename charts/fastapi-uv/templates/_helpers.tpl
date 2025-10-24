{{- define "fastapi-uv.name" -}}
{{- include "fastapi-uv.chart" . | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "fastapi-uv.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "fastapi-uv.fullname" -}}
{{ .Chart.Name }}
{{- end -}}
