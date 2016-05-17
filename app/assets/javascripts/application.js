// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


    img = new Array('1','2','3','4');

    indice = 0;

    setInterval("mudaImg()", 3000);

    function mudaImg(i) {

    	if (i == 0 || i == 1 || i == 2 || i == 3) {

    		indice = i;

    	} else {

    		if (indice == img.length - 1) {

    			indice = 0;

    		} else {

    			indice++;

    		}

    	}

    	document.getElementById("banner_img_1").setAttribute("class", "");
    	document.getElementById("banner_img_2").setAttribute("class", "");
    	document.getElementById("banner_img_3").setAttribute("class", "");
    	document.getElementById("banner_img_4").setAttribute("class", "");
    	document.getElementById("banner_img_" + img[indice]).setAttribute("class", "hover");

    	document.getElementById("banner_img").innerHTML = "<img src='banner_img/"+ img[indice] +".jpg' width='900' height='300' border='0' alt='Banner'>";

    }
