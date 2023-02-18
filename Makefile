package:
	rm -r build || true
	mkdir -p build
	cp -r services build/
	cp -r templates build/
	cp docker-compose.yml build/
	cp Makefile build/
	tar -zcvf tor-proxy.tar.gz build

install:
	mkdir -p /opt/tor-http-proxy
	cp -r ./services /opt/tor-http-proxy/services
	cp -r ./templates /opt/tor-http-proxy/templates
	cp ./docker-compose.yml /opt/tor-http-proxy/docker-compose.yml
	ln -s /opt/tor-http-proxy/services/tor-proxy.service /etc/systemd/system/tor-proxy.service || echo "Already exists"
	systemctl enable tor-proxy
	systemctl start tor-proxy
