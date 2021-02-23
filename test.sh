api_id='9fLMd08+Sb0dGe618eomGJKXPA7KTtpr'
api_secret='1r/LRKryEuIuUurPLP94qtdRzzZomZ8u'
token=$(echo -ne "$api_id:$api_secret" | base64 --wrap 0)

curl "http://backend.demo.facturabilidad.com/api/Cfdi33/timbrar"\
    -H "Authorization: Basic $token"\
    -d @cfdi.json 
echo ""