function writeImageCsharp() {

	var imgC = '../banners/cSharp-2.png'

	var imageTextC = "<a href='../bookshop/csharpbook-2.htm'><p align ='center'><img src=" + imgC + " border='0'></A></p>"

	document.write(imageTextC )

}

function DoPopUp(URL, width, height) {
msgWindow = window.open(URL, "PopUp", "toolbar=no,width=" + width + ",height=" +height)
}