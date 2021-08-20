echo "Running Go tests"
gotestsum --junitfile test.xml

echo "Uploading XML to Data Dog"
DATADOG_API_KEY=$DATADOG_SECRET DD_ENV=carlos-testing DD_SITE=datad0g.com datadog-ci junit upload --service carlos-test test.xml