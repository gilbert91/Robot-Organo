
$env:PORT="3000" 

cd organo/
npm install
npx browserslist@latest --update-db --y

Start-Process npm -ArgumentList "start"
Start-Sleep -Seconds 15

cd ..

python -m pip install --upgrade pip
python -m pip install robotframework robotframework-seleniumlibrary robotframework-faker

$env:BASE_URL="http://localhost:3000/"

robot -d ./test_results ./testes/