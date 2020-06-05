var link1 = ""
var link2 = ""
var botBanVB = ""

	var imageTextMW = ""
	var img1MW = '../banners/officeBanner.gif'

	var imageTextVB = ""
	var img1VB = '../banners/officeBanner.gif'



function adCodeExcel2007() {

	var insertCode ="";

var script_start="<SCRIPT>";
var script_end="</SCRIPT>";
var new_line ="\n";
	var var_1="google_ad_client='pub-3498263538959058'";
	var var_2="google_ad_slot='3604216961'";
	var var_3="google_ad_width=120";
	var var_4="google_ad_height=600";

	insertCode = script_start + new_line + var_1 + new_line + var_2 + new_line + var_3 + new_line + var_4 + new_line + script_end;

	document.write(insertCode);
}



function writeImageMW() {
	var imageMap=""
	img1MW="../bookImages/special_offer_new.gif"

	imageMap="<map name='MapMW'><area shape='rect' coords='142,12,388,26' href='../bookshop/allbooks-2.htm'><area shape='rect' coords='149,33,379,49' href='../bookshop/office_offer-2.htm'><area shape='rect' coords='163,56,363,71' href='../bookshop/programming_offer-2.htm'></map>"

	imageTextMW = "<p align ='center'><img src="+%20img1MW%20+.html" usemap='#MapMW' border='0'></p>"
	imageTextMW = imageTextMW + imageMap
	document.write(imageTextMW)
}

function writeImageMWord() {

	//imageTextMW = "<p align ='center'><a href='../bookshop/office_offer-2.htm'><img src="+%20img1MW%20+.html" usemap='#Map' border='0'></a></p>"

	imageMap="<map name='MapMW'><area shape='rect' coords='142,12,388,26' href='../bookshop/all6Books_offer.htm'><area shape='rect' coords='149,33,379,49' href='../bookshop/office_offer-2.htm'><area shape='rect' coords='163,56,363,71' href='../bookshop/programming_offer-2.htm'></map>"


	imageTextMW = "<p align ='center'><img src="+%20img1MW%20+.html" usemap='#MapMW' border='0'></p>"
	imageTextMW = imageTextMW + imageMap
	document.write(imageTextMW)
}


function writeImageVB() {

	var imgVB = '../banners/vbBannerNEW_free.gif'

	imageTextVB = "<a href='../bookshop/net.html'><p align ='center'><img src="+%20imgVB%20+.html" border='1'></A></p>"
		//imageTextVB = imageTextVB + imageMap
	document.write(imageTextVB)
}

function writeImageCsharp() {

	var imgC = '../banners/cSharp.png'

	var imageTextC = "<a href='../bookshop/csharpbook.htm'><p align ='center'><img src="+%20imgC%20+.html" border='0'></A></p>"

	document.write(imageTextC )

}


function writeImageVB2() {

	imageMap="<map name='Map'><area shape='rect' coords='142,12,388,26' href='../bookshop/all6Books_offer.htm'><area shape='rect' coords='149,33,379,49' href='../bookshop/office_offer-2.htm'><area shape='rect' coords='163,56,363,71' href='../bookshop/programming_offer-2.htm'></map>"

	imageTextVB = "<p align ='center'><img src="+%20img1VB%20+.html" usemap='#Map' border='0'></p>"
imageTextVB = imageTextVB + imageMap
	document.write(imageTextVB)
}

function writeImageXL2C() {

	var imageTextXL = "<A HREF='../bookshop/excel.htm'><FONT color='red'><B><< BUY this Full Excel Course - from £4.97!!! >></B></FONT></A>"
	
	document.write(imageTextXL)

}

function writeImageXL2() {

	var imageTextXL = ""
	var imgXL =""


	var imageMap=""
	imgXL="../bookImages/special_offer_new.gif"

	imageMap="<map name='MapXL'><area shape='rect' coords='142,12,388,26' href='../bookshop/allbooks-2.htm'><area shape='rect' coords='149,33,379,49' href='../bookshop/office_offer-2.htm'><area shape='rect' coords='163,56,363,71' href='../bookshop/programming_offer-2.htm'></map>"

	imageTextXL = "<p align ='center'><img src="+%20imgXL%20+.html" usemap='#MapXL' border='0'></p>"
	imageTextXL = imageTextXL + imageMap
	document.write(imageTextXL)

}

function writeImage() {

	var imageText2 = ""
	var img1 = "xlBanner.gif"

	var arrayImages = new Array()

	arrayImages[0] = "xl1.gif"
	arrayImages[1] = "xl2.gif"
	arrayImages[2] = "xlBanner.gif"
	arrayImages[3] = "xlBanner.gif"

	var IndexCounter = Math.floor(Math.random()* 4)

	img1 = arrayImages[IndexCounter]

	imageText2 = "<p align ='center'><a href='../bookshop/excel.htm'><img src="+%20img1%20+.html" border='0'></a></p>"

	document.write(imageText2)

}


function bottomBannerVB() {

	var L1 = "<a href='../bookshop/net.html'>"
	var L2 ="<img src='vbBanBorder.gif' alt='Buy our VB NET Book Here' border='0'/></a>"
	botBanVB = L1 + L2
	document.write(botBanVB)
}



function doBannerBC400test() {

	var L1 = "<a href='../bookshop/allPDFbooks.htm'>"
	var L2 ="<img src='../banners/blue.gif' alt='Click here' border='0'/></a>"
	var jFooter = "<BR><span class='header'>Save over £10!!!</span>"
	link2 = L1 + L2 + jFooter
	document.write(link2)
}


function doBannerBC400() {

	//link2 = ""
	//link2 =  pBreak + link2 

	var pBreak = "<P>&nbsp;</P>"

	var L1 = "<a href='../bookshop/books.htm'>"
	var L2 ="<img src='../banners/news4.gif' alt='Home and Learn Computer Books Shop' border='0'/></a>"
	link2 = L1 + L2

	document.write(link2)
}


function doBannerHigh400() {

	var pBreak = "<P>&nbsp;</P>"

	var L1 = "<a href='../bookshop/books.htm'>"
	var L2 ="<img src='../banners/news4.gif' alt='Home and Learn Computer Books Shop' border='0'/></a>"
	link2 = L1 + L2
	link2 =""
	document.write(link2)

}


function doBannerMWHigh400() {

	var pBreak = "<P>&nbsp;</P>"

	var L1 = "<a href='../bookshop/books.htm'>"
	var L2 ="<img src='../banners/news4.gif' alt='Home and Learn Computer Books Shop' border='0'/></a>"
	link2 = L1 + L2
	link2 = ""

	document.write(link2)

	//var pBreak = "<P>&nbsp;</P>"
	//var L1 = "<a href='../bookshop/word.html'>"
	//var L2 ="<img src='../banners/bookWP.gif' alt='Click here' border='0'/></a>"
	//link2 = L1 + L2
	//link2 = pBreak + pBreak + pBreak + pBreak + link2 

	//document.write(link2)

}


function doBannerMWHigh600() {

	var L1 = "<a href='../bookshop/allPDFbooks.htm'>"
	var L2 ="<img src='../banners/left360Main.gif' alt='Click here' border='0'/></a>"
	var jFooter = "<BR><span class='header'>Save over £10!!!</span>"
	link2 = L1 + L2 + jFooter
	document.write(link2)
}

function doBannerVBHigh400() {

	var pBreak = "<P>&nbsp;</P>"

	var L1 = "<a href='../bookshop/books.htm'>"
	var L2 ="<img src='../banners/news4.gif' alt='Home and Learn Computer Books Shop' border='0'/></a>"
	link2 = L1 + L2
	//link2 =  pBreak + pBreak + link2 

	link2 = ""
	document.write(link2)
}


function doBanner2VBHigh400() {

	link2 = ""
	document.write(link2)
}

function doBannerVBHigh600() {

	var L1 = "<a href='../bookshop/allPDFbooks.htm'>"
	var L2 ="<img src='../banners/left360Main.gif' alt='Click here' border='0'/></a>"
	var jFooter = "<BR><span class='header'>Save over £10!!!</span>"
	link2 = L1 + L2 + jFooter
	document.write(link2)
}


function doBannerHigh600() {

	var L1 = "<a href='../bookshop/allPDFbooks.htm'>"
	var L2 ="<img src='../banners/left360Main.gif' alt='Click here' border='0'/></a>"
	var jFooter = "<BR><span class='header'>Save over £10!!!</span>"
	link2 = L1 + L2 + jFooter
	document.write(link2)
}







