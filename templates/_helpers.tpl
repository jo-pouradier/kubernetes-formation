{{/*
Create a default fully qualified app name.
We truncate at 30 chars in order to leave room for suffixes (because some Kubernetes name fields are limited to 63 chars by the DNS naming spec).
*/}}
{{- define "AppCtx.name" }}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s" $name | trunc 30 | trimSuffix "-"}}
{{- end }}

{{/*
Create the API name
*/}}
{{- define "AppCtx.apiName" }}
{{- printf "%s-api" (include "AppCtx.name" .) | trunc 63  }}
{{- end }}
