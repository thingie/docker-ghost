Container image is created by running:

docker build -t fedora:ghost010 .

it needs to be copied into the ghost git repository checkout

You then run the container with:

docker run -p 8088:80 -v /home/pony/ghost-content:/home/ghost/content/ --name Ghost09 -u root -d fedora:ghost010

There's a lot wrong with all this. You probably shouldn't really do it. Of course, I'll improve it over time.
