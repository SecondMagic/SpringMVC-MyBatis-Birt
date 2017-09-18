<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>demo</title>
<script>
	var ctx = "/test2";
	function viewReport() {
		var temp_form = document.createElement("form");
		temp_form.action=ctx +"/preview?__report=new_report_2.rptdesign&__format=pdf";
		window.open(temp_form.action+"&userId="+document.getElementById("userId").value);
//		http://localhost:8080/test2/preview?__report=new_report_2.rptdesign&__format=pdf
//		window.open("http://www.w3school.com.cn")
// 		var params = {
// 		};
// 		post(params);
	}
	function post(PARAMS) {
		var temp_form = document.createElement("form");
			temp_form.action =ctx +"/checkReport";
		temp_form.method = "post";
		temp_form.style.display = "none";
		for ( var x in PARAMS) {
			var opt = document.createElement("textarea");
			opt.name = x;
			opt.value = PARAMS[x];
			temp_form.appendChild(opt);
		}
		document.body.appendChild(temp_form);
		temp_form.submit();
	}
</script>
</head>
<body>
<input type="text" name="userId" id="userId" value="">${demoStr}
</input>
<button onclick="viewReport()">
check
</button>
</body>
</html>