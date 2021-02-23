api_id='API_ID'
api_secret='API_SECRET'
token=$(echo -ne "$api_id:$api_secret" | base64 --wrap 0)

curl "http://backend.demo.facturabilidad.com/api/Cfdi33/timbrar"\
    -H "Authorization: Basic $token"\
    -d @cfdi.json 
echo ""