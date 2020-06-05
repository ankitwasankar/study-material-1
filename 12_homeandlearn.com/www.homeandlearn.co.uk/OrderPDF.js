var strTextArea = ""
var totalOrder = 0.00
var singleBook = 2.99
var AllFive = 0
var prodID = 0
var productID = ""
var pID = ""
var fullLine = ""
var strLink = ""
var vbBook = 5.49
var xlBook = 4.97
var wdBook = 4.97
var wpBook = 4.97
var phBook = 5.49
var loopCount = 0

boxClicked = new Array(5)
boxClicked[0] = ""
boxClicked[1] = ""
boxClicked[2] = ""
boxClicked[3] = ""
boxClicked[4] = ""
boxClicked[5] = ""

function checkscript() {
	var boxesTicked = ""
	var numBoxes = (document.getElementsByName('chkboxes').length)
	var countb = 0
	fullLine = ""
loopCount = 0
	for (i = 0; i < numBoxes; i++) {

		if (document.getElementsByName('chkboxes')[i].checked) {

			boxesTicked = document.getElementsByName('chkboxes')[i].value
			countb++
			productID = getPID2(boxesTicked)

			if (loopCount==0) {
				productID = "&product_id=" + productID 
			}
			else {
				//productID = "&product_id" + (countb - 1) + "=" + productID
				productID = "&product_id" + loopCount + "=" + productID 
			}

			fullLine = fullLine + productID + "&quantity=1"
			loopCount++
		}

	}


	if (boxesTicked == "") {
		alert ("You must select a book to continue")
		return false
	}
	else {


		strLink = getLinkText(fullLine)

		window.location = strLink
	}


}

function getLinkText(pID) {

	req = "https://www.2checkout.com/2co/buyer/purchase"
	mySID = "?sid=372860"

	linkText = req + mySID + pID

	return linkText

}


function getPID2 (books) {
	switch (books) {
		case "VB":
			retVal = "35"	// 20
			break
		case "WP":
			retVal = "36"	//21
			break
		case "WD":
			retVal = "37"	// 22
			break
		case "XL":
			retVal = "38"	//23
			break
		case "PH":
			retVal = "39"	//24
			break
		case "ALL":
			retVal = "40"	//34
			break
	}
	return retVal;

}



function doVB() {
	checkAll()
	if (document.f1.chkboxes[0].checked) {
		boxClicked[0] = "Visual Basic .NET   £5.49"
		totalOrder = totalOrder + vbBook
	}
	else {
		boxClicked[0] = ""
		totalOrder = totalOrder - vbBook
	}
	doTextArea()
	doTotalOrder()
}

function doWP() {
	checkAll()
	if (document.f1.chkboxes[1].checked) {
		boxClicked[1] = "Microsoft Word      £4.97"
		totalOrder = totalOrder + wpBook
	}
	else {
		boxClicked[1] = ""
		totalOrder = totalOrder - wpBook
	}
	doTextArea()
	doTotalOrder()
}

function doWD() {
	checkAll()
	if (document.f1.chkboxes[2].checked) {
		boxClicked[2] = "Web Design          £4.97"
		totalOrder = totalOrder + wdBook
	}
	else {
		boxClicked[2] = ""
		totalOrder = totalOrder - wdBook
	}
	doTextArea()
	doTotalOrder()
}


function doXL() {
	checkAll()
	if (document.f1.chkboxes[4].checked) {
		boxClicked[4] = "Microsoft Excel     £4.97"
		totalOrder = totalOrder + xlBook
	}
	else {
		boxClicked[4] = ""
		totalOrder = totalOrder - xlBook
	}
	doTextArea()
	doTotalOrder()
}


function doPH() {

	checkAll()
	if (document.f1.chkboxes[3].checked) {
		boxClicked[3] = "Beginners PHP       £5.49"
		totalOrder = totalOrder + phBook
	}
	else {
		boxClicked[3] = ""
		totalOrder = totalOrder - phBook
	}

	doTextArea()
	doTotalOrder()
}

//=================================================================================
//	IF ALLFIVE IS TICKED AND YOU SELECT ANOTHER CHECKBOX, UNCHECK ALLFIVE
//=================================================================================
function checkAll () {

	if (AllFive == 1) {
		document.getElementsByName('chkboxes')[5].checked = 0
		AllFive = 0
		totalOrder = totalOrder - 15.00
		boxClicked[5] = ""
		totalOrder = 0.00
	}
	else {

	}
}


//=============================================
//	ALL FIVE BOOKS
//=============================================
function doAll() {
	if (document.f1.chkboxes[5].checked) {
		boxClicked[5] = "All Five Books     £15.00"
		totalOrder = 15.00
		AllFive = 1

		//=============================================
		//	UNTICK ALL OTHER CHECKBOXES
		//=============================================
		var numBoxes = (document.getElementsByName('chkboxes').length)

		for (i = 0; i < (numBoxes - 1); i++) {

			if (document.getElementsByName('chkboxes')[i].checked) {
				document.getElementsByName('chkboxes')[i].checked = !document.getElementsByName('chkboxes')[i].checked
				boxClicked[i] = ""
			}

		}
	}
	else {
		boxClicked[5] = ""
		if (AllFive == 1) {
			totalOrder = totalOrder - 15.00
		}
	}
	doTextArea()
	doTotalOrder()
}

//====================================================
//	PUT THE SELECTED BOOKS INTO THE TEXTAREA
//====================================================
function doTextArea () {
	document.f1.t1.value=""
	strTextArea = ""

	if (AllFive==0) {
		for (i=0;i<6;i++) {
			if (boxClicked[i] != "") {
				strTextArea = strTextArea + boxClicked[i] + '\n'
			}
		}
	}
	else {
		strTextArea = boxClicked[5]

	}
	
	document.f1.t1.value=strTextArea
}

function doTotalOrder() {

	if (totalOrder == 20.4) {
		document.f1.total.value= "£" + "20.40"
	}
	else {
		document.f1.total.value= "£" + custRound(totalOrder,2)
	}
}

function custRound(price,places) {
	return (Math.round(price*Math.pow(10,places)))/Math.pow(10,places)
}





