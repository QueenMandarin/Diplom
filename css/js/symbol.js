function limitChars(textid, limit, infodiv)
{
	var text = $('#'+textid).val(); 
	var textlength = text.length;
	
	if(textlength > limit) {
		$('#' + infodiv).html('��� ������ �������� ����� ��� '+limit+' ��������!');
		$('#'+textid).val(text.substr(0,limit));
		return false;
	}
	else {
		$('#' + infodiv).html('� ��� �������� '+ (limit - textlength) +' ��������.');
		return true;
	}
}
$(function(){
	$('#description').keyup(function() {
		limitChars('description', 250, 'charlimitinfo');
	})
});