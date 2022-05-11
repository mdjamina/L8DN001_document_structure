
function loadTransformation(datafile, xsltFile, nodeid) {


	//alert("coco")

	var tf = new Transformation();

	tf.setXml(loadXMLDoc(datafile));

	tf.setXslt(loadXMLDoc(xsltFile));
	
	tf.transform(nodeid)


}


function loadTransformationWithParam(datafile, xsltFile, nodeid,paramName,paramValue) {


	//alert("coco")

	var tf = new Transformation();

	tf.setXml(loadXMLDoc(datafile));

	tf.setXslt(loadXMLDoc(xsltFile));

	tf.setParamName(paramName);
	tf.setParamValue(paramValue);
	
	tf.transform(nodeid)


}

/**
 * Return the content of the XML/XSLT document.
 * 
 * @param filename the path of the XML document file
 * @return this
 * @type text
 */
function loadXMLDoc(filename) {

	if (window.ActiveXObject || "ActiveXObject" in window) {
		var xhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} else {
		var xhttp = new XMLHttpRequest();
	}

	xhttp.overrideMimeType('text/xml');

	xhttp.open("GET", filename, false);

	xhttp.send(null);

	return xhttp.responseText;
}

