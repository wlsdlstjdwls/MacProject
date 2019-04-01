/**
 * main.js
 */

/* menu init */
function init_Menu(){
	$("#navigation .nav li").mouseenter(function() {
	   $(this).find("div").animate({
		   opacity: '1',
		   width: '200px'
	   }, 200, function() {
	            
	   });
	});
	$("#navigation .nav li").mouseleave(function() {
	   if($(this).attr("class") != "active") {
		   $(this).find("div").animate({
			   opacity: '0',
			   width: '0px'
	       }, 200, function() {
	                
	       });
	   }
	});
	   
   $("#navigation .nav li a").click(function() {
	   $("#navigation .nav").find("li").each(function(index, item) {
		   $(item).attr("class", "");
	   });
	   $(this).parent().attr("class", "active");
	   $("#navigation .nav li").mouseleave();
	});
}

/* macaron delete */
function delete_macaron(event) {
	   var me = $(event.srcElement);
	   me.parent().remove();
	   current_macaron_cnt--;
	   if(current_macaron_cnt < 0) current_macaron_cnt=0;
	   $("#"+me.parent().attr("name")).attr("class", "macaronbox");
	   if(current_macaron_cnt%6 == 0 && current_macaron_cnt != 0) {
        $("#choose_menu").css("height", parseInt($("#choose_menu").height()) - 200 + "px");
        $("#current_choose_menu").css("height", parseInt($("#current_choose_menu").height()) - 200 + "px");
    }
	   
    if(current_macaron_cnt == 0) {
        $("#current_choose_menu").html("<div style='text-align: center; margin-top: 80px;'>현재 선택된 메뉴가 없습니다.</div>");
    }
}

/* 마카롱, 다쿠아즈 중복검사 */
function dup_macaron(macaronId) {
   var flag = false;
   $("#current_choose_menu").find(".circlebox").each(function(index, item) {
	   if($(item).attr("name") == macaronId) {
		   alert("이미 존재합니다.");
		   flag = true;
 		   return;
	   }
   });
   return flag;
}


