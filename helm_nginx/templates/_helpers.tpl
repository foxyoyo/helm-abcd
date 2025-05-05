{{- define "my-nginx.fullname" -}}
{{- $defaultName := printf "%s-%s" .Release.Name .Chart.Name -}}
{{- default $defaultName .Values.customName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "my-nginx.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
managed-by: "helm"
custom-label: "fox-test-nginx"
{{- end -}}