function limitChars(textid, limit, infodiv)
{
	var text = $('#'+textid).val(); 
	var textlength = text.length;
	
	if(textlength > limit) {
		$('#' + infodiv).html('Вам нельзя написать более чем '+limit+' символов!');
		$('#'+textid).val(text.substr(0,limit));
		return false;
	}
	else {
		$('#' + infodiv).html('У Вас осталось '+ (limit - textlength) +' символов.');
		return true;
	}
}
$(function(){
	$('#description').keyup(function() {
		limitChars('description', 250, 'charlimitinfo');
	})
});