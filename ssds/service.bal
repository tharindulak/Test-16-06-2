import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "ssds",
	id: "ssds-a801bc3a-f237-49ed-a0c0-0ec690a3d0a6"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
