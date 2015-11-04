git clean -d -x -f --exclude=node_modules
call npm install
call grunt package-chrome
