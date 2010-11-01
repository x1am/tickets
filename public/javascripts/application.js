// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// Russian
$(document).ready(function() {
  $('.datatable').dataTable({"bJQueryUI": true,"sPaginationType": "full_numbers","bRetrieve": true, "oLanguage":{
	"sProcessing":   "Подождите...",
	"sLengthMenu":   "Показать _MENU_",
	"sZeroRecords":  "Записи отсутствуют.",
	"sInfo":         "Записи с _START_ - _END_ из _TOTAL_",
	"sInfoEmpty":    "Нет данных",
	"sInfoFiltered": "(отфильтровано из _MAX_ записей)",
	"sInfoPostFix":  "",
	"sSearch":       "Поиск:",
	"sUrl":          "",
	"oPaginate": {
		"sFirst": "&laquo;",
		"sPrevious": "Пред.",
		"sNext": "След.",
		"sLast": "&raquo;"
	}}
  });
  if ($('#notice').html() != '') { $('#notice').delay(300).fadeIn().delay(800).fadeOut('slow');  }
  if ($('#alert').html() != '') { $('#alert').delay(300).fadeIn().delay(800).fadeOut('slow');  }
});
