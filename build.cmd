git clean -d -X -f --exclude=node_modules
call npm install
call grunt package-chrome
