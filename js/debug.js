(function(){
	var debug = document.createElement("div");
	var container = document.createElement("div");
	var row = document.createElement("div");

	debug.className = "debug";
	container.className = "container";
	row.className = "row";

	for (var i = 0; i < 16; i++) {
		var span = document.createElement("div");
		var columnNum = document.createElement("div");
		span.className = "span1";

		columnNum.appendChild(document.createTextNode(i + 1));
		span.appendChild(columnNum);
		row.appendChild(span);
	};

	container.appendChild(row);
	debug.appendChild(container);

	document.body.appendChild(debug);
})();