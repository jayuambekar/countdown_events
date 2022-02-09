function readJSONFromURL(url, callback) {
	var xhr = new XMLHttpRequest();
	xhr.open('get', url, true);
	xhr.responseType = 'json';
	xhr.onload = function () {
		callback(xhr.status, xhr.response);
	};
	xhr.send();
}

function useJSONData(status, response) {
	if (status == 200) {
		createDivs(response)
	} else {
		alert('Received error message: ' + status)
	}
}

function createDivs(data) {
	console.log(data);
	data.forEach(function (d) {
		var elem = document.createElement('div');
		elem.innerText = d.fields.name
		document.body.appendChild(elem);
	})


}

readJSONFromURL('https://github.com/jayuambekar/countdownEvents/blob/main/module.json', useJSONData)
