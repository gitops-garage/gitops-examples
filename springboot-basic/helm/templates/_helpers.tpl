{{/*
Expand the name of the chart.
*/}}
{{- define "springboot-basic.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "springboot-basic.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- include "springboot-basic.name" . }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "springboot-basic.labels" -}}
app.kubernetes.io/name: {{ include "springboot-basic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "springboot-basic.selectorLabels" -}}
app.kubernetes.io/name: {{ include "springboot-basic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
ServiceAccount name
*/}}
{{- define "springboot-basic.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "springboot-basic.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}