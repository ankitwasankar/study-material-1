
	var imageText2 = ""
	var img1 = "xlBanner.gif"

	var arrayImages = new Array()

	arrayImages[0] = "xl1.gif"
	arrayImages[1] = "xl2.gif"
	arrayImages[2] = "xlBanner.gif"
	arrayImages[3] = "xlBanner.gif"

	var IndexCounter = Math.floor(Math.random()* 4)

function writeImage() {

	img1 = arrayImages[IndexCounter]

	imageText2 = "<p align ='center'><a href='../bookshop/excel.htm'><img src=" + img1 + " border='0'></a></p>"

	document.write(imageText2)

}



function writeImageXL() {

	var imageTextXL = ""
	var imgXL = '../banners/officeBanner.gif'

	imageTextXL = "<p align ='center'><a href='../bookshop/office_offer-2.htm'><img src=" + imgXL + " border='0'></a></p>"

	document.write(imageTextXL)

}








