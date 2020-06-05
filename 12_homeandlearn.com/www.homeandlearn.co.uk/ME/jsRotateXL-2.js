
	var imageText2 = ""
	var img1 = "xlBanner-2.gif"

	var arrayImages = new Array()

	arrayImages[0] = "xl1-2.gif"
	arrayImages[1] = "xl2-2.gif"
	arrayImages[2] = "xlBanner-2.gif"
	arrayImages[3] = "xlBanner-2.gif"

	var IndexCounter = Math.floor(Math.random()* 4)

function writeImage() {

	img1 = arrayImages[IndexCounter]

	imageText2 = "<p align ='center'><a href='../bookshop/excel-2.htm'><img src=" + img1 + " border='0'></a></p>"

	document.write(imageText2)

}



function writeImageXL() {

	var imageTextXL = ""
	var imgXL = '../banners/officeBanner-2.gif'

	imageTextXL = "<p align ='center'><a href='../bookshop/office_offer.htm'><img src=" + imgXL + " border='0'></a></p>"

	document.write(imageTextXL)

}








