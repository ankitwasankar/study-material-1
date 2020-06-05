function doReset2() {
	document.f1.total.value = "0.00"
	document.f1.t1.value = "Select a Book above"
	totalOrder = 0.00
	AllFive = 0
	prodID = 0

productID = ""
pID = ""
fullLine = ""
strLink = ""


	for (i=0;i<6;i++) {
		boxClicked[i] = ""
	}

	var numBoxes = (document.getElementsByName('chkboxes').length)
	for (i = 0; i < numBoxes; i++) {

		if (document.getElementsByName('chkboxes')[i].checked) {

			document.getElementsByName('chkboxes')[i].checked =0

		}

	}
}