function getRandom() {
    get("/api/random");
}

function getAll() {
    get("/api/all");
}

function get(endpoint) {
    var xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        if (this.status == 200) {
            document.getElementById("output").innerHTML =
            this.responseText;
        }
    };
    xhttp.open("GET", endpoint, true);
    xhttp.send();
}

function addCookie(e) {
    e.preventDefault();
    try {

        const params = {
            message: document.querySelector('#message').value,
        }

        var xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            if (this.status == 200) {
                document.getElementById("output").innerHTML =
                    this.responseText;
                document.querySelector('#message').value = ""
            } else {
                document.getElementById("output").innerHTML =
                    `Error: ${this.status}, ${this.responseText}`
            }
        };
        xhttp.open("POST", "/api/add", true);
        xhttp.setRequestHeader('Content-type', 'application/json');
        xhttp.send(JSON.stringify(params));
    } catch (e) {
        document.getElementById("output").innerHTML = e.message;
    }
    return false;
}
