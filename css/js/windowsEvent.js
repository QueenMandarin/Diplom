function openStart(id) {
    var object = document.getElementById(id);
	
    if(object.style.display=='none')
       document.getElementById(id).style.display='block';
	else
       document.getElementById(id).style.display='none';
}

function openFrame(id) {
    var object = document.getElementById(id);
	
    if(object.style.display =='none') {
		document.getElementById(id).style.display='block';
		document.getElementById('start_menu').style.display='none';
	}
	else if (object.style.display =='block'){
       document.getElementById(id).style.display='none';
	   document.getElementById('start_menu').style.display='none';
	}	   
}

function closeFrame(id) {
    var object = document.getElementById(id);
    document.getElementById(id).style.display='none';
}

function changeFocus(id) {
    var object = document.getElementById(id).style.zIndex;
	
    if (id=='new_report_form') {
		document.getElementById(id).style.zIndex=1;
		document.getElementById('bugs_list_form').style.zIndex=0;
	}
	else if (id=='bugs_list_form') {
		document.getElementById(id).style.zIndex=1;
		document.getElementById('new_report_form').style.zIndex=0;
	}
}


/*
	(._. ) 
   {	  }
	{	} 
	.	.
*/ 