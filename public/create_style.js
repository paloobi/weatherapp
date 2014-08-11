
switch(weather) {
	case sunny:
		document.body.style.background="#FFFF99 url('images/sunny.png') cover";
		break;
	case rainy:
		document.body.style.background="#99CCFF url('images/rainy.png') cover";
		break;
	case cloudy:
		document.body.style.background="#94B8B8 url('images/cloudy.png') cover";
		break;
	case snowy:
		document.body.style.background="#CCFFFF url('images/snowy.png') cover";
		break;
	default:
		document.body.style.background="#CCFFFF url('images/map.png') cover";
}