$(document).ready(function(){
  $('.choice').each(function(){
    init_choice(this);
  });
});

function init_choice(obj){
  obj.addEventListener('click', function(){
    toggle_choice(this);
  });
}

function toggle_choice(obj){
  $(obj).find('input').each(function(){
    this.checked = true;
  });
  mark_selected_choice(obj);
}

function mark_selected_choice(obj){
  var pr = $(obj).parent();
  pr.find('.choice').each(function(){
    if( is_checked(this) ){
      $(this).addClass('selected');
      $(this).removeClass('unselected');
    }else{
      $(this).addClass('unselected');
      $(this).removeClass('selected');
    }
  });
}

function is_checked(obj){
  var result = false;
  $(obj).find('input').each(function(){
    if(this.checked){
      result = true;
    }
  });
  return result;
}