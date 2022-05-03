
function loadTransformation(datafile, xsltFile, nodeid) {

	new Transformation().setXml(loadXMLDoc(datafile))
		.setXslt(loadXMLDoc(xsltFile)).transform(nodeid);
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

