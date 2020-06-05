function writeImageCsharp() {

	var imgC = '../banners/cSharp.png'

	var imageTextC = "<a href='../bookshop/csharpbook.htm'><p align ='center'><img src=" + imgC + " border='0'></A></p>"

	document.write(imageTextC )

}

function DoPopUp(URL, width, height) {
msgWindow = window.open(URL, "PopUp", "toolbar=no,width=" + width + ",height=" +height)
}