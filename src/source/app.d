import vibe.core.core;
import vibe.core.log;
import vibe.http.server;

void main()
{
	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "0.0.0.0"];
	listenHTTP(settings, &hello);

	logInfo("Please open http://0.0.0.0:8080/ in your browser.");
	runApplication();
}

void hello(HTTPServerRequest req, HTTPServerResponse res)
{
	res.writeBody("Hello, World!");
}
