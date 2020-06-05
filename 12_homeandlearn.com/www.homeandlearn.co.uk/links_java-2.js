function writeImageJava_Top() {

	var  img1J ="../bookImages/special_offer_new2.gif"
	var imageTextPH = ""
	imageTextPH = "<p align ='center'><A HREF='../bookshop/programming_offer.htm'><img src=" + img1J + " border='0'></A></p>"
	document.write(imageTextPH)

	//var imageTextPP = ""
	//img1PP="../bookImages/special_offer_new.gif"
	//imageMap="<map name='MapPP'><area shape='rect' coords='142,12,388,26' href='../bookshop/allbooks.htm'><area shape='rect' coords='149,33,379,49' href='../bookshop/office_offer.htm'><area shape='rect' coords='163,56,363,71' href='../bookshop/programming_offer.htm'></map>"
	//imageTextPP = "<p align ='center'><img src=" + img1PP + " usemap='#MapPP' border='0'></p>"
	//imageTextPP = imageTextPP + imageMap
	//document.write(imageTextPP)
}

function java_side_bar() {

}

function writeImageJava_Bottom() {

	var imageTextPP = ""

	img1PP="../bookImages/special_offer_new.gif"

	imageMap="<map name='MapPP'><area shape='rect' coords='142,12,388,26' href='../bookshop/allbooks.htm'><area shape='rect' coords='149,33,379,49' href='../bookshop/office_offer.htm'><area shape='rect' coords='163,56,363,71' href='../bookshop/programming_offer.htm'></map>"

	imageTextPP = "<p align ='center'><img src=" + img1PP + " usemap='#MapPP' border='0'></p>"
imageTextPP = imageTextPP + imageMap
	document.write(imageTextPP)
}

function DoPopUp(URL, width, height) {
msgWindow = window.open(URL, "PopUp", "toolbar=no,width=" + width + ",height=" +height)
}

function DoPopUp2(URL, width, height) {
msgWindow = window.open(URL, "PopUp", "toolbar=no,scrollbars=yes,width=" + width + ",height=" +height)
}

function eAdd() {
width = 500
height = 300
msgWindow = window.open('../emailAddress-2.htm', "PopUp", "toolbar=no,width=" + width + ",height=" +height)
}
