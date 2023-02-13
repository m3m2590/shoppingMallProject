/**
 * 
 */

const url = "/nikepro/address/editPay.do";

const updateAddress = function() {
	
	const payPostForm = document.getElementById("payPostForm");
	
	fetch(url, {
	    method: 'POST',
	    mode: 'cors', // no-cors, *cors, same-origin
	    cache: 'no-cache',
	    credentials: 'same-origin',
	    headers: {
	      'Content-Type': 'application/json',
	    },
	    redirect: 'follow', // manual, *follow, error
	    referrerPolicy: 'no-referrer',
	    body: {jsonData : JSON.stringify(payPostForm) }
	}) // body의 데이터 유형은 반드시 "Content-Type" 헤더와 일치해야 함
	.then(function(response) {response.json()})
	.then(function(data) {console.log(data)});

};
